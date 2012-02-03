.class public Landroid/preference/RingtonePreference;
.super Landroid/preference/Preference;
.source "RingtonePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RingtonePreference"


# instance fields
.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const v0, 0x1010093

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget-object v1, Lcom/android/internal/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    .line 61
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    .line 63
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 227
    iget v1, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    if-ne p1, v1, :cond_2

    .line 229
    if-eqz p3, :cond_0

    .line 230
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 232
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/preference/RingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {p0, v0}, Landroid/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 237
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x1

    .line 240
    :goto_1
    return v1

    .line 232
    .restart local v0       #uri:Landroid/net/Uri;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 240
    .end local v0           #uri:Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 221
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    .line 222
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextRequestCode()I

    move-result v0

    iput v0, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    .line 223
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 193
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "ringtonePickerIntent"

    .prologue
    .line 152
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    iget-boolean v0, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-virtual {p0, v2}, Landroid/preference/RingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, uriString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1
    .parameter "ringtoneUri"

    .prologue
    .line 174
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/RingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 175
    return-void

    .line 174
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3
    .parameter "restorePersistedValue"
    .parameter "defaultValueObj"

    .prologue
    .line 198
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 207
    .local v1, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setRingtoneType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 93
    iput p1, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    .line 94
    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0
    .parameter "showDefault"

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    .line 114
    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0
    .parameter "showSilent"

    .prologue
    .line 132
    iput-boolean p1, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    .line 133
    return-void
.end method
