.class public Lcom/android/settings/DockSettings;
.super Landroid/preference/PreferenceActivity;
.source "DockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAudioSettings:Landroid/preference/Preference;

.field private mAutoLaunch:Landroid/preference/ListPreference;

.field private mCradleEnable:Landroid/preference/CheckBoxPreference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DockSettings$1;-><init>(Lcom/android/settings/DockSettings;)V

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DockSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/DockSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080240

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 240
    const v1, 0x7f080241

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 241
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 117
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, dockState:I
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_1

    move v2, v6

    .line 121
    .local v2, isBluetooth:Z
    :goto_0
    if-nez v2, :cond_2

    .line 123
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 124
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v5, 0x7f08023f

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 146
    :goto_1
    if-eqz v0, :cond_0

    .line 149
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/settings/DockSettings;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0           #dockState:I
    .end local v2           #isBluetooth:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #dockState:I
    :cond_1
    move v2, v5

    .line 119
    goto :goto_0

    .line 126
    .restart local v2       #isBluetooth:Z
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 128
    iput-object p1, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    .line 129
    const v3, 0x7f08023f

    .line 130
    .local v3, resId:I
    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_3
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 132
    :pswitch_0
    const v3, 0x7f08023d

    .line 133
    goto :goto_3

    .line 135
    :pswitch_1
    const v3, 0x7f08023c

    .line 136
    goto :goto_3

    .line 138
    :pswitch_2
    const v3, 0x7f08023e

    .line 139
    goto :goto_3

    .line 150
    .end local v3           #resId:I
    :catch_0
    move-exception v1

    .line 151
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    const-string v4, "DockSettings"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDockSettings()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "cradle_enable"

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "dock_audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "dock_sounds"

    invoke-virtual {p0, v2}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "auto_launch"

    invoke-virtual {p0, v2}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    const-string v1, "cradle_enable"

    invoke-virtual {p0, v5}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    const-string v2, "cradle_enable"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    return-void

    :cond_0
    move v2, v3

    .line 110
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    .local v0, resolver:Landroid/content/ContentResolver;
    const v1, 0x7f040014

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->addPreferencesFromResource(I)V

    .line 69
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->initDockSettings()V

    .line 70
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 231
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const-string v5, "DockSettings"

    .line 216
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mAutoLaunch:Landroid/preference/ListPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 219
    .local v1, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cradle_launch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    const-string v2, "DockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto Launch value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v1           #value:I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 222
    .restart local v1       #value:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 223
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "DockSettings"

    const-string v2, "could not persist emergency tone setting"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    const-string v7, "PhoneSpeakerState(0 Phone, 1 Line out): "

    const-string v6, "DockSettings"

    .line 160
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 164
    :goto_0
    if-nez v0, :cond_2

    .line 165
    invoke-virtual {p0, v5}, Lcom/android/settings/DockSettings;->showDialog(I)V

    .line 212
    :cond_0
    :goto_1
    return v5

    :cond_1
    move v0, v4

    .line 161
    goto :goto_0

    .line 167
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 168
    const-string v1, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-class v1, Lcom/android/settings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_sounds_enabled"

    iget-object v2, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cradle_enable"

    if-eqz v0, :cond_6

    move v3, v5

    :goto_3
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cradle_connect"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    .line 184
    const-string v1, "DockSettings"

    const-string v1, "Cradle is connected:"

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 186
    const-string v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    if-eqz v0, :cond_7

    move v0, v5

    .line 196
    :goto_4
    const-string v2, "state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    const-string v1, "DockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move v3, v4

    .line 178
    goto :goto_3

    :cond_7
    move v0, v4

    .line 194
    goto :goto_4

    .line 202
    :cond_8
    const-string v0, "DockSettings"

    const-string v0, "Cradle is not connected:"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    const-string v0, "DockSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    return-void
.end method
