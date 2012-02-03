.class public Lcom/android/settings/LockScreenWallpaper;
.super Landroid/preference/PreferenceActivity;
.source "LockScreenWallpaper.java"


# instance fields
.field mGallery:Landroid/preference/Preference;

.field mWallpaperGallery:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->addPreferencesFromResource(I)V

    .line 42
    const-string v0, "wallpaper_gallery"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mWallpaperGallery:Landroid/preference/Preference;

    .line 43
    const-string v0, "gallery"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mGallery:Landroid/preference/Preference;

    .line 44
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 48
    iget-object v1, p0, Lcom/android/settings/LockScreenWallpaper;->mWallpaperGallery:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, intentCallWallpaperChooser:Landroid/content/Intent;
    const-string v1, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.twwallpaperchooser"

    const-string v3, "com.sec.android.app.twwallpaperchooser.WallpaperChooser"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    move v1, v4

    .line 59
    .end local v0           #intentCallWallpaperChooser:Landroid/content/Intent;
    :goto_0
    return v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/settings/LockScreenWallpaper;->mGallery:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    move v1, v4

    .line 57
    goto :goto_0

    :cond_1
    move v1, v2

    .line 59
    goto :goto_0
.end method
