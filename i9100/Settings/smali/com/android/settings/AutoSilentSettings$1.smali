.class Lcom/android/settings/AutoSilentSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoSilentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoSilentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoSilentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoSilentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/AutoSilentSettings$1;->this$0:Lcom/android/settings/AutoSilentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.settings.AUTO_SILENT_END_ACTION"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    :cond_0
    iget-object v8, p0, Lcom/android/settings/AutoSilentSettings$1;->this$0:Lcom/android/settings/AutoSilentSettings;

    const-string v9, "toggle_auto_silent_mode"

    invoke-virtual {v8, v9}, Lcom/android/settings/AutoSilentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 84
    .local v1, autoSilent:Landroid/preference/CheckBoxPreference;
    iget-object v8, p0, Lcom/android/settings/AutoSilentSettings$1;->this$0:Lcom/android/settings/AutoSilentSettings;

    #getter for: Lcom/android/settings/AutoSilentSettings;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/AutoSilentSettings;->access$000(Lcom/android/settings/AutoSilentSettings;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "key_auto_silent_setted"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 85
    if-eqz v1, :cond_1

    .line 86
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    .end local v1           #autoSilent:Landroid/preference/CheckBoxPreference;
    :cond_1
    :goto_0
    return-void

    .line 90
    .restart local v1       #autoSilent:Landroid/preference/CheckBoxPreference;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/AutoSilentSettings$1;->this$0:Lcom/android/settings/AutoSilentSettings;

    #getter for: Lcom/android/settings/AutoSilentSettings;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/AutoSilentSettings;->access$000(Lcom/android/settings/AutoSilentSettings;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "entered_auto_silent_mode"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 92
    .local v2, isEnteredASM:Z
    iget-object v8, p0, Lcom/android/settings/AutoSilentSettings$1;->this$0:Lcom/android/settings/AutoSilentSettings;

    #getter for: Lcom/android/settings/AutoSilentSettings;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/AutoSilentSettings;->access$000(Lcom/android/settings/AutoSilentSettings;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "key_repeat_days"

    const/16 v10, 0x80

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 95
    .local v5, repeatDays:I
    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_4

    .line 96
    const/4 v3, 0x1

    .line 99
    .local v3, isOneTimeRepeat:Z
    :goto_1
    const-string v8, "audio"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 100
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 106
    .local v6, ringerMode:I
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 107
    const/4 v8, 0x2

    if-eq v6, v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/AutoSilentSettings$1;->this$0:Lcom/android/settings/AutoSilentSettings;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/AutoSilentSettings;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 109
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/AutoSilentSettings;->unregisterAutoSilentAlarm(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/AutoSilentSettings;->cancelNotifyASM(Landroid/content/Context;)V

    .line 112
    iget-object v8, p0, Lcom/android/settings/AutoSilentSettings$1;->this$0:Lcom/android/settings/AutoSilentSettings;

    #getter for: Lcom/android/settings/AutoSilentSettings;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/AutoSilentSettings;->access$000(Lcom/android/settings/AutoSilentSettings;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "previous_ringer_mode"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 115
    .local v4, previousRingerMode:I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_5

    .line 116
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 128
    :goto_2
    iget-object v8, p0, Lcom/android/settings/AutoSilentSettings$1;->this$0:Lcom/android/settings/AutoSilentSettings;

    #getter for: Lcom/android/settings/AutoSilentSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v8}, Lcom/android/settings/AutoSilentSettings;->access$100(Lcom/android/settings/AutoSilentSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "key_auto_silent_setted"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 129
    iget-object v8, p0, Lcom/android/settings/AutoSilentSettings$1;->this$0:Lcom/android/settings/AutoSilentSettings;

    #getter for: Lcom/android/settings/AutoSilentSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v8}, Lcom/android/settings/AutoSilentSettings;->access$100(Lcom/android/settings/AutoSilentSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    if-eqz v1, :cond_1

    .line 131
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 97
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v3           #isOneTimeRepeat:Z
    .end local v4           #previousRingerMode:I
    .end local v6           #ringerMode:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #isOneTimeRepeat:Z
    goto :goto_1

    .line 120
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v4       #previousRingerMode:I
    .restart local v6       #ringerMode:I
    :cond_5
    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "vibrate_in_silent"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    move v7, v8

    .line 124
    .local v7, vibeInSilent:Z
    :goto_3
    if-eqz v7, :cond_7

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 120
    .end local v7           #vibeInSilent:Z
    :cond_6
    const/4 v8, 0x0

    move v7, v8

    goto :goto_3

    .line 124
    .restart local v7       #vibeInSilent:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_4
.end method
