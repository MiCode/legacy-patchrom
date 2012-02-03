.class public Lcom/android/settings/DrivingModeSettings;
.super Landroid/preference/PreferenceActivity;
.source "DrivingModeSettings.java"


# instance fields
.field private mAlarmNotification:Landroid/preference/CheckBoxPreference;

.field private mEmailNotification:Landroid/preference/CheckBoxPreference;

.field private mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

.field private mMessageNotification:Landroid/preference/CheckBoxPreference;

.field private mScheduleNotification:Landroid/preference/CheckBoxPreference;

.field private mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

.field private mVoiceMailNotification:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Lcom/android/settings/DrivingModeSettings;->addPreferencesFromResource(I)V

    .line 59
    const-string v0, "incoming_call_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    .line 60
    const-string v0, "message_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    .line 61
    const-string v0, "email_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    .line 62
    const-string v0, "voice_mail_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    .line 63
    const-string v0, "alarm_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v0, "schedule_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    .line 65
    const-string v0, "unlock_screen_contents"

    invoke-virtual {p0, v0}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 144
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 109
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "driving_mode_incoming_call_notification"

    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v2, v3

    .line 116
    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "driving_mode_message_notification"

    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "driving_mode_email_notification"

    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_3

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "driving_mode_voice_mail_notification"

    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    :goto_4
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_4

    .line 127
    :cond_8
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "driving_mode_alarm_notification"

    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v4

    :goto_5
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v2, v3

    goto :goto_5

    .line 130
    :cond_a
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "driving_mode_schedule_notification"

    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v4

    :goto_6
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v2, v3

    goto :goto_6

    .line 133
    :cond_c
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "driving_mode_unlock_screen_contents"

    iget-object v2, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v4

    :goto_7
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v2, v3

    goto :goto_7
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_incoming_call_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_message_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_email_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_voice_mail_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_alarm_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_schedule_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_unlock_screen_contents"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 104
    return-void

    :cond_0
    move v1, v3

    .line 83
    goto :goto_0

    :cond_1
    move v1, v3

    .line 86
    goto :goto_1

    :cond_2
    move v1, v3

    .line 89
    goto :goto_2

    :cond_3
    move v1, v3

    .line 92
    goto :goto_3

    :cond_4
    move v1, v3

    .line 95
    goto :goto_4

    :cond_5
    move v1, v3

    .line 98
    goto :goto_5

    :cond_6
    move v1, v3

    .line 101
    goto :goto_6
.end method
