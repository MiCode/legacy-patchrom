.class public Lcom/android/settings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/android/settings/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$1;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v3, 0x7f040026

    invoke-virtual {p0, v3}, Lcom/android/settings/Settings;->addPreferencesFromResource(I)V

    .line 73
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 75
    .local v0, activePhoneType:I
    const-string v3, "parent"

    invoke-virtual {p0, v3}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 76
    .local v2, parent:Landroid/preference/PreferenceGroup;
    const-string v3, "sync_settings"

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 78
    const-string v3, "dock_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 79
    .local v1, dockSettings:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :cond_0
    const-string v3, "software_update"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 87
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/Settings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 136
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, key:Ljava/lang/String;
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    .line 102
    .local v2, result:Z
    if-eqz v1, :cond_0

    const-string v3, "software_update"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-string v3, "android.intent.action.SOFTWARE_UPDATE_SETTING"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    const/4 v2, 0x1

    .line 108
    :cond_0
    return v2
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 121
    const-string v1, "call_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/Settings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 129
    return-void

    .line 121
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
