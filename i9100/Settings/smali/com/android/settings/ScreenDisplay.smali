.class public Lcom/android/settings/ScreenDisplay;
.super Landroid/preference/PreferenceActivity;
.source "ScreenDisplay.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mClockPosition:Landroid/preference/ListPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

.field private mLockScreenWallpaper:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "clock_position"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    const-string v1, "ScreenDisplay"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, resolver:Landroid/content/ContentResolver;
    const v1, 0x7f04001f

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->addPreferencesFromResource(I)V

    .line 55
    const-string v1, "clock_position"

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    .line 56
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    const-string v1, "homescreen_wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/ScreenDisplay;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    .line 59
    const-string v1, "lockscreen_wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/ScreenDisplay;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    .line 61
    iput-object v0, p0, Lcom/android/settings/ScreenDisplay;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const-string v4, "clock_position"

    .line 101
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, key:Ljava/lang/String;
    const-string v3, "clock_position"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 105
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "clock_position"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    iget-object v3, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/ScreenDisplay;->mClockPosition:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 110
    .restart local v2       #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 111
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "ScreenDisplay"

    const-string v4, "could not persist Clock position value"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, pickWallpaper:Landroid/content/Intent;
    const v1, 0x7f0805a8

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenDisplay;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 97
    .end local v0           #pickWallpaper:Landroid/content/Intent;
    :goto_0
    return v1

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ScreenDisplay;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 95
    goto :goto_0

    :cond_1
    move v1, v2

    .line 97
    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/ScreenDisplay;->updateState()V

    .line 69
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 74
    return-void
.end method
