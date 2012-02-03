.class public Lcom/android/phone/GsmUmtsVideoCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsVideoCallForwardOptions.java"


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DBG:Z

.field private mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v8, "GsmUmtsVideoCallForwardOptions"

    .line 140
    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v0, "onActivityResult: done"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 142
    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v0, "onActivityResult: contact picker result not OK."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 148
    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v0, "onActivityResult: bad contact data, query return null"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    const-string v0, "GsmUmtsVideoCallForwardOptions"

    const-string v0, "onActivityResult: bad contact data, no results found."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 154
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f050014

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 67
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_vcfu_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    .line 68
    const-string v1, "button_vcfb_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    .line 69
    const-string v1, "button_vcfnry_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    .line 70
    const-string v1, "button_vcfnrc_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    .line 72
    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 73
    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 74
    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 75
    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 77
    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mFirstResume:Z

    .line 83
    iput-object p1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 85
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 3
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    .line 132
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 135
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 136
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 89
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 91
    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mFirstResume:Z

    if-eqz v4, :cond_1

    .line 92
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v4, :cond_2

    .line 93
    const-string v4, "GsmUmtsVideoCallForwardOptions"

    const-string v5, "start to init "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, p0, v6}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 108
    :cond_0
    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mFirstResume:Z

    .line 109
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 111
    :cond_1
    return-void

    .line 96
    :cond_2
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    .line 98
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallForwardEditPreference;

    .line 99
    .local v3, pref:Lcom/android/phone/CallForwardEditPreference;
    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v3}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 100
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "toggle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 101
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 102
    .local v1, cf:Lcom/android/internal/telephony/CallForwardInfo;
    const-string v4, "number"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 103
    const-string v4, "status"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 104
    invoke-virtual {v3, v1}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 105
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    iget-object v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    .line 118
    .local v2, pref:Lcom/android/phone/CallForwardEditPreference;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    iget-object v3, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_0

    .line 121
    const-string v3, "number"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v3, "status"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    :cond_0
    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 126
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/CallForwardEditPreference;
    :cond_1
    return-void
.end method
