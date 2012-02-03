.class public Lcom/android/settings/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRingtoneType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "ringtonePickerIntent"

    .prologue
    const-string v2, "android.intent.extra.ringtone.TITLE"

    .line 46
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 52
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    invoke-super {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneType:I

    .line 55
    iget v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    const-string v0, "android.intent.extra.ringtone.TITLE"

    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mContext:Landroid/content/Context;

    const v1, 0x7f080215

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v0, "android.intent.extra.ringtone.TITLE"

    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mContext:Landroid/content/Context;

    const v1, 0x7f08021f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 4
    .parameter "ringtoneUri"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DEBUG_RINGTONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultRingtonePreference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    :cond_0
    return-void
.end method
