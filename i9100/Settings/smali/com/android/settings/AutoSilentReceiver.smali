.class public Lcom/android/settings/AutoSilentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoSilentReceiver.java"


# static fields
.field private static sIsProcASM:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mEndHour:I

.field private mEndMinute:I

.field private mIsAutoSilentEnabled:Z

.field private mIsOneTimeRepeat:Z

.field private mRepeatDays:I

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mStartHour:I

.field private mStartMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const-string v0, "AutoSilentReceiver"

    iput-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private enterAutoSilentMode(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 211
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "previous_ringer_mode"

    iget-object v4, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 213
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_2

    move v1, v5

    .line 220
    .local v1, vibeInSilent:Z
    :goto_0
    sput-boolean v5, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    .line 221
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 222
    .local v0, ringerMode:I
    if-eq v0, v5, :cond_0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    sput-boolean v6, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 230
    return-void

    .end local v0           #ringerMode:I
    .end local v1           #vibeInSilent:Z
    :cond_2
    move v1, v6

    .line 215
    goto :goto_0

    .restart local v0       #ringerMode:I
    .restart local v1       #vibeInSilent:Z
    :cond_3
    move v3, v6

    .line 227
    goto :goto_1
.end method

.method private exitAutoSilentMode(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 237
    iget-boolean v2, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    if-eqz v2, :cond_0

    .line 238
    iput-boolean v5, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    .line 239
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "key_repeat_days"

    const/16 v4, 0x80

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 240
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "key_auto_silent_setted"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/AutoSilentSettings;->unregisterAutoSilentAlarm(Landroid/content/Context;)V

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/AutoSilentSettings;->cancelNotifyASM(Landroid/content/Context;)V

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v3, "previous_ringer_mode"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 250
    .local v0, previousRingerMode:I
    sput-boolean v6, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    .line 252
    if-ne v0, v7, :cond_1

    .line 253
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 265
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v6, v2, :cond_2

    move v1, v6

    .line 261
    .local v1, vibeInSilent:Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    move v3, v6

    :goto_2
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .end local v1           #vibeInSilent:Z
    :cond_2
    move v1, v5

    .line 257
    goto :goto_1

    .restart local v1       #vibeInSilent:Z
    :cond_3
    move v3, v5

    .line 261
    goto :goto_2
.end method

.method private isActivateDay(I)Z
    .locals 3
    .parameter "today"

    .prologue
    const/4 v2, 0x1

    .line 269
    sub-int v1, p1, v2

    shl-int v0, v2, v1

    .line 270
    .local v0, mask:I
    iget v1, p0, Lcom/android/settings/AutoSilentReceiver;->mRepeatDays:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    move v1, v2

    .line 273
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEnteredAutoSilentMode()Z
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "entered_auto_silent_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private procAutoSilentAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f0800cc

    const/4 v7, 0x0

    const v6, 0x7f0800cd

    .line 109
    const-string v4, "ext_key_changed_by_user"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 112
    .local v1, isValueChangedByUser:Z
    iget-boolean v4, p0, Lcom/android/settings/AutoSilentReceiver;->mIsAutoSilentEnabled:Z

    if-nez v4, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->exitAutoSilentMode(Landroid/content/Context;)V

    .line 116
    :cond_0
    invoke-static {p1}, Lcom/android/settings/AutoSilentSettings;->unregisterAutoSilentAlarm(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/AutoSilentSettings;->cancelNotifyASM(Landroid/content/Context;)V

    .line 176
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v4, p0, Lcom/android/settings/AutoSilentReceiver;->mStartHour:I

    iget v5, p0, Lcom/android/settings/AutoSilentReceiver;->mEndHour:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/android/settings/AutoSilentReceiver;->mStartMinute:I

    iget v5, p0, Lcom/android/settings/AutoSilentReceiver;->mEndMinute:I

    if-ne v4, v5, :cond_2

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/AutoSilentSettings;->unregisterAutoSilentAlarm(Landroid/content/Context;)V

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/AutoSilentSettings;->cancelNotifyASM(Landroid/content/Context;)V

    goto :goto_0

    .line 128
    :cond_2
    if-eqz v1, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    if-eqz v4, :cond_4

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 130
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {p1, v0}, Lcom/android/settings/AutoSilentSettings;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 131
    iget-object v4, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "entered_auto_silent_mode"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    iget-object v4, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/AutoSilentSettings;->cancelNotifyASM(Landroid/content/Context;)V

    .line 135
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    .end local v0           #calendar:Ljava/util/Calendar;
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    .restart local v0       #calendar:Ljava/util/Calendar;
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 141
    .local v3, today:I
    invoke-direct {p0, v3}, Lcom/android/settings/AutoSilentReceiver;->isActivateDay(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    if-eqz v4, :cond_b

    .line 143
    :cond_5
    invoke-static {p1, v0}, Lcom/android/settings/AutoSilentSettings;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v4

    if-nez v4, :cond_8

    .line 144
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->enterAutoSilentMode(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    .line 157
    :cond_6
    :goto_1
    invoke-static {p1, v0}, Lcom/android/settings/AutoSilentSettings;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    .line 175
    :cond_7
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 148
    :cond_8
    invoke-static {p1, v0}, Lcom/android/settings/AutoSilentSettings;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 149
    iget-object v4, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 150
    .local v2, ringerMode:I
    if-eqz v2, :cond_9

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    .line 152
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/AutoSilentReceiver;->exitAutoSilentMode(Landroid/content/Context;)V

    .line 154
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    goto :goto_1

    .line 162
    .end local v2           #ringerMode:I
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/settings/AutoSilentReceiver;->isActivateDay(I)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v1, :cond_c

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/AutoSilentReceiver;->exitAutoSilentMode(Landroid/content/Context;)V

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    goto :goto_2

    .line 166
    :cond_c
    invoke-direct {p0, v3}, Lcom/android/settings/AutoSilentReceiver;->isActivateDay(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.settings.AUTO_SILENT_END_ACTION"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/AutoSilentReceiver;->exitAutoSilentMode(Landroid/content/Context;)V

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    goto :goto_2

    .line 172
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private setNextAlarmAction(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AutoSilentSettings;->registerAutoSilentAlarm(Landroid/content/Context;)V

    .line 180
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0800cd

    .line 41
    const-string v2, "key_auto_silent_pref"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 43
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 45
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->resetData(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    iget-boolean v2, p0, Lcom/android/settings/AutoSilentReceiver;->mIsAutoSilentEnabled:Z

    if-eqz v2, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800cc

    invoke-static {v2, v3}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    .line 55
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AutoSilentReceiver;->procAutoSilentAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 97
    :cond_0
    :goto_1
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.settings.AUTO_SILENT_START_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.settings.AUTO_SILENT_END_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 60
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AutoSilentReceiver;->procAutoSilentAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 62
    sget-boolean v2, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    if-nez v2, :cond_5

    .line 64
    iget-boolean v2, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    if-nez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/settings/AutoSilentReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 68
    .local v1, ringerMode:I
    if-eqz v1, :cond_0

    if-eq v1, v6, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/settings/AutoSilentSettings;->notifyASM(Landroid/content/Context;I)V

    goto :goto_1

    .line 79
    .end local v1           #ringerMode:I
    :cond_5
    sput-boolean v5, Lcom/android/settings/AutoSilentReceiver;->sIsProcASM:Z

    goto :goto_1

    .line 81
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/AutoSilentReceiver;->mIsAutoSilentEnabled:Z

    if-eqz v2, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    .line 86
    iget-boolean v2, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    if-eqz v2, :cond_8

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 88
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {p1, v0}, Lcom/android/settings/AutoSilentSettings;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/android/settings/AutoSilentReceiver;->isEnteredAutoSilentMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSilentReceiver;->exitAutoSilentMode(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 94
    .end local v0           #calendar:Ljava/util/Calendar;
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AutoSilentReceiver;->procAutoSilentAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public resetData(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_auto_silent_setted"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AutoSilentReceiver;->mIsAutoSilentEnabled:Z

    .line 283
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_repeat_days"

    const/16 v2, 0x80

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AutoSilentReceiver;->mRepeatDays:I

    .line 285
    iget v0, p0, Lcom/android/settings/AutoSilentReceiver;->mRepeatDays:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_hour_start"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AutoSilentReceiver;->mStartHour:I

    .line 290
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_minute_start"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AutoSilentReceiver;->mStartMinute:I

    .line 292
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_hour_end"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AutoSilentReceiver;->mEndHour:I

    .line 293
    iget-object v0, p0, Lcom/android/settings/AutoSilentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_minute_end"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AutoSilentReceiver;->mEndMinute:I

    .line 294
    return-void

    .line 287
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/AutoSilentReceiver;->mIsOneTimeRepeat:Z

    goto :goto_0
.end method
