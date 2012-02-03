.class public Lcom/android/phone/NumberRegionDetail;
.super Landroid/preference/PreferenceActivity;
.source "NumberRegionDetail.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

.field private mNumberRegionOnOff:[I

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 21
    const-string v0, "TAG"

    iput-object v0, p0, Lcom/android/phone/NumberRegionDetail;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/NumberRegionDetail;->mNumberRegionOnOff:[I

    return-void

    :array_0
    .array-data 0x4
        0x71t 0x3t 0xdt 0x7ft
        0x72t 0x3t 0xdt 0x7ft
    .end array-data
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/android/phone/NumberRegionDetail;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/phone/NumberRegionDetail;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NumberRegionDetail;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 41
    const-string v0, "number_region_activation_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/NumberRegionDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/NumberRegionDetail;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    .line 42
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 68
    iget-object v0, p0, Lcom/android/phone/NumberRegionDetail;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/android/phone/NumberRegionDetail;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 56
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    const-string v6, "TAG"

    const-string v5, "number_region_activation_preference"

    .line 83
    const-string v2, "number_region_activation_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 86
    .local v1, numberregion_checked:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/NumberRegionDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "number_region_activation_preference"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    const-string v2, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LiJian numberregion_checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/phone/NumberRegionDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "number_region_activation_preference"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, numberRegionActivited:I
    const-string v2, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LiJian numberRegionActivited: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/android/phone/NumberRegionDetail;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/NumberRegionDetail;->mNumberRegionOnOff:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 99
    .end local v0           #numberRegionActivited:I
    .end local v1           #numberregion_checked:I
    :cond_0
    return-void

    :cond_1
    move v1, v4

    .line 84
    goto :goto_0
.end method
