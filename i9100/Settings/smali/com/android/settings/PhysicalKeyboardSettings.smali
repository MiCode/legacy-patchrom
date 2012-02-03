.class public Lcom/android/settings/PhysicalKeyboardSettings;
.super Landroid/preference/PreferenceActivity;
.source "PhysicalKeyboardSettings.java"


# instance fields
.field private final mSettingsDefault:[I

.field private final mSettingsSystemId:[Ljava/lang/String;

.field private final mSettingsUiKey:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    const-string v6, "auto_caps"

    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 29
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "auto_caps"

    aput-object v6, v0, v3

    const-string v1, "auto_replace"

    aput-object v1, v0, v4

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/settings/PhysicalKeyboardSettings;->mSettingsUiKey:[Ljava/lang/String;

    .line 36
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "auto_caps"

    aput-object v6, v0, v3

    const-string v1, "auto_replace"

    aput-object v1, v0, v4

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/settings/PhysicalKeyboardSettings;->mSettingsSystemId:[Ljava/lang/String;

    .line 43
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/PhysicalKeyboardSettings;->mSettingsDefault:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f040017

    invoke-virtual {p0, v0}, Lcom/android/settings/PhysicalKeyboardSettings;->addPreferencesFromResource(I)V

    .line 54
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/PhysicalKeyboardSettings;->mSettingsUiKey:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/android/settings/PhysicalKeyboardSettings;->mSettingsUiKey:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/PhysicalKeyboardSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PhysicalKeyboardSettings;->mSettingsSystemId:[Ljava/lang/String;

    aget-object v2, v2, v0

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v4

    .line 80
    :goto_2
    return v1

    .line 74
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 72
    .restart local p2
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 58
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/PhysicalKeyboardSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 60
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/PhysicalKeyboardSettings;->mSettingsUiKey:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/android/settings/PhysicalKeyboardSettings;->mSettingsUiKey:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/settings/PhysicalKeyboardSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 62
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    iget-object v3, p0, Lcom/android/settings/PhysicalKeyboardSettings;->mSettingsSystemId:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/settings/PhysicalKeyboardSettings;->mSettingsDefault:[I

    aget v4, v4, v0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 65
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    return-void
.end method
