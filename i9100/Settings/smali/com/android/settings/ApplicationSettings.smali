.class public Lcom/android/settings/ApplicationSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApplicationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mInstallLocation:Landroid/preference/ListPreference;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "auto"

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, selectedLocation:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    const-string v1, "device"

    .line 163
    :goto_0
    return-object v1

    .line 157
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 158
    const-string v1, "sdcard"

    goto :goto_0

    .line 159
    :cond_1
    if-nez v0, :cond_2

    .line 160
    const-string v1, "auto"

    move-object v1, v4

    goto :goto_0

    .line 163
    :cond_2
    const-string v1, "auto"

    move-object v1, v4

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    return-void

    .line 143
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802cc

    invoke-virtual {p0, v1}, Lcom/android/settings/ApplicationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080361

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08038b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08038c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApplicationSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 175
    return-void
.end method


# virtual methods
.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const-string v2, "default_install_location"

    .line 95
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 110
    return-void

    .line 98
    :cond_0
    const-string v0, "sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v1, 0x2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 136
    invoke-direct {p0, v1}, Lcom/android/settings/ApplicationSettings;->setNonMarketAppsAllowed(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 139
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/android/settings/ApplicationSettings;->addPreferencesFromResource(I)V

    .line 62
    const-string v2, "toggle_install_applications"

    invoke-virtual {p0, v2}, Lcom/android/settings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/ApplicationSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 63
    iget-object v2, p0, Lcom/android/settings/ApplicationSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->isNonMarketAppsAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 65
    const-string v2, "app_install_location"

    invoke-virtual {p0, v2}, Lcom/android/settings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "set_install_location"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    .line 74
    .local v1, userSetInstLocation:Z
    :goto_0
    if-nez v1, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 87
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    if-ne v2, v5, :cond_0

    .line 89
    const-string v2, "quick_launch"

    invoke-virtual {p0, v2}, Lcom/android/settings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 90
    .local v0, quickLaunchSetting:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    .end local v0           #quickLaunchSetting:Landroid/preference/Preference;
    :cond_0
    return-void

    .end local v1           #userSetInstLocation:Z
    :cond_1
    move v1, v4

    .line 67
    goto :goto_0

    .line 77
    .restart local v1       #userSetInstLocation:Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/settings/ApplicationSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/ApplicationSettings$1;-><init>(Lcom/android/settings/ApplicationSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 118
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->warnAppInstallation()V

    .line 131
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 127
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/ApplicationSettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0
.end method
