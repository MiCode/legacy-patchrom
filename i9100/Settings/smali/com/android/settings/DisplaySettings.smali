.class public Lcom/android/settings/DisplaySettings;
.super Landroid/preference/PreferenceActivity;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DisplaySettings$OrientationObserver;
    }
.end annotation


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field private gSensor:Landroid/preference/PreferenceScreen;

.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAnimationScales:[F

.field private mAnimations:Landroid/preference/ListPreference;

.field private mBattTemperature:I

.field private mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mModeSetting:Landroid/preference/Preference;

.field private mOrientationObserver:Lcom/android/settings/DisplaySettings$OrientationObserver;

.field private mPowerSavingMode:Landroid/preference/CheckBoxPreference;

.field private mScreenDisplay:Landroid/preference/PreferenceScreen;

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mTouchKeyLight:Landroid/preference/ListPreference;

.field private mTvOutSettigs:Landroid/preference/Preference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mBattTemperature:I

    .line 103
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mBattTemperature:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/DisplaySettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/settings/DisplaySettings;->mBattTemperature:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 13
    .parameter "screenTimeoutPreference"

    .prologue
    .line 195
    const-string v11, "device_policy"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 197
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v11

    move-wide v3, v11

    .line 198
    .local v3, maxTimeout:J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    .line 227
    .end local p0
    :goto_1
    return-void

    .line 197
    .end local v3           #maxTimeout:J
    .restart local p0
    :cond_0
    const-wide/16 v11, 0x0

    move-wide v3, v11

    goto :goto_0

    .line 201
    .restart local v3       #maxTimeout:J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 202
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 203
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 206
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 207
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    .line 208
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    .end local v7           #timeout:J
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 213
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 218
    .local v9, userPreference:I
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_5

    .line 219
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 226
    .end local v9           #userPreference:I
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private updateAnimationsSummary(Ljava/lang/Object;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 305
    .local v1, summaries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 306
    .local v2, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 309
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    :cond_0
    return-void

    .line 306
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateState(Z)V
    .locals 14
    .parameter "force"

    .prologue
    const/high16 v9, 0x3f00

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v13, "power_saving_mode"

    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, animations:I
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v7}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    if-eqz v7, :cond_1

    .line 269
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v7, v7

    if-lt v7, v12, :cond_0

    .line 270
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    aget v7, v7, v11

    add-float/2addr v7, v9

    float-to-int v7, v7

    rem-int/lit8 v1, v7, 0xa

    .line 272
    :cond_0
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v7, v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    .line 273
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    aget v7, v7, v12

    add-float/2addr v7, v9

    float-to-int v7, v7

    and-int/lit8 v7, v7, 0x7

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v1, v7

    .line 276
    :cond_1
    const/4 v5, 0x0

    .line 277
    .local v5, idx:I
    const/4 v2, 0x0

    .line 278
    .local v2, best:I
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 279
    .local v0, aents:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_3

    .line 280
    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 281
    .local v6, val:I
    if-gt v6, v1, :cond_2

    if-le v6, v2, :cond_2

    .line 282
    move v2, v6

    .line 283
    move v5, v4

    .line 279
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 265
    .end local v0           #aents:[Ljava/lang/CharSequence;
    .end local v2           #best:I
    .end local v4           #i:I
    .end local v5           #idx:I
    .end local v6           #val:I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 266
    .local v3, e:Landroid/os/RemoteException;
    const-string v7, "DisplaySettings"

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 286
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v0       #aents:[Ljava/lang/CharSequence;
    .restart local v2       #best:I
    .restart local v4       #i:I
    .restart local v5       #idx:I
    :cond_3
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 287
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/DisplaySettings;->updateAnimationsSummary(Ljava/lang/Object;)V

    .line 288
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accelerometer_rotation"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    move v8, v12

    :goto_2
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 292
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "button_key_light"

    const/16 v10, 0x5dc

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 294
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    const-string v7, "power_saving_mode"

    invoke-virtual {p0, v13}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    .line 299
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_mode"

    invoke-static {v8, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_5

    move v8, v12

    :goto_3
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 301
    return-void

    :cond_4
    move v8, v11

    .line 288
    goto :goto_2

    :cond_5
    move v8, v11

    .line 299
    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const-string v8, "tvout_settings"

    const-string v7, "power_saving_mode"

    const-string v6, "GT-I9100G"

    const-string v4, "GT-I9100"

    .line 135
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 139
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 141
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v3, "battery_temperature"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 143
    const v2, 0x7f040013

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "tvout_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    const-string v2, "animations"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    .line 150
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    const-string v2, "accelerometer"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 152
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 153
    const-string v2, "brightness"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/BrightnessPreference;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    .line 155
    const-string v2, "screen_timeout"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 157
    .local v1, screenTimeoutPreference:Landroid/preference/ListPreference;
    const-string v2, "screen_off_timeout"

    const/16 v3, 0x7530

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    invoke-direct {p0, v1}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 163
    const-string v2, "mode"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mModeSetting:Landroid/preference/Preference;

    .line 165
    const-string v2, "GT-I9100G"

    const-string v2, "GT-I9100"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GT-I9220"

    const-string v3, "GT-I9100"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GT-I9100"

    const-string v2, "GT-I9188"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mModeSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :cond_1
    const-string v2, "touch_key_light"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    .line 170
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    const-string v2, "screen_display"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenDisplay:Landroid/preference/PreferenceScreen;

    .line 176
    const-string v2, "power_saving_mode"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    .line 177
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    const-string v3, "power_saving_mode"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 180
    const-string v2, "tvout_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mTvOutSettigs:Landroid/preference/Preference;

    .line 181
    new-instance v2, Lcom/android/settings/DisplaySettings$OrientationObserver;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$OrientationObserver;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mOrientationObserver:Lcom/android/settings/DisplaySettings$OrientationObserver;

    .line 182
    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 185
    const-string v2, "g_sensor"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->gSensor:Landroid/preference/PreferenceScreen;

    .line 189
    const-string v2, "GT-I9100"

    const-string v2, "GT-I9103"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "GT-I9100"

    const-string v2, "GT-I9100G"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->gSensor:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_3
    return-void

    :cond_4
    move v3, v5

    .line 177
    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 245
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    const-string v0, "DisplaySettings"

    const-string v1, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v9, 0x1

    const-string v8, "DisplaySettings"

    .line 350
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, key:Ljava/lang/String;
    const-string v5, "animations"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 353
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 354
    .local v4, value:I
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v5, v5

    if-lt v5, v9, :cond_0

    .line 355
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v6, 0x0

    rem-int/lit8 v7, v4, 0xa

    int-to-float v7, v7

    aput v7, v5, v6

    .line 357
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v5, v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 358
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v6, 0x1

    div-int/lit8 v7, v4, 0xa

    rem-int/lit8 v7, v7, 0xa

    int-to-float v7, v7

    aput v7, v5, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 365
    :goto_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/settings/DisplaySettings;->updateAnimationsSummary(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 371
    .end local v4           #value:I
    :cond_2
    :goto_1
    const-string v5, "screen_timeout"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 372
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 374
    .restart local v4       #value:I
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 384
    .end local v2           #i:Landroid/content/Intent;
    .end local v4           #value:I
    :cond_3
    :goto_2
    const-string v5, "touch_key_light"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 385
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 387
    .restart local v4       #value:I
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "button_key_light"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 391
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 396
    .end local v4           #value:I
    :cond_4
    :goto_3
    return v9

    .line 362
    .restart local v4       #value:I
    .restart local p2
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 363
    .local v1, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v5, "DisplaySettings"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 366
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v4           #value:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 367
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "DisplaySettings"

    const-string v5, "could not persist animation setting"

    invoke-static {v8, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 380
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #value:I
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 381
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v5, "DisplaySettings"

    const-string v5, "could not persist screen timeout setting"

    invoke-static {v8, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 392
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local p2
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 393
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v5, "DisplaySettings"

    const-string v5, "could not persist Touch key light setting"

    invoke-static {v8, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "DisplaySettings"

    .line 318
    const-string v0, "DisplaySettings"

    const-string v0, "onPreferenceTreeClick()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    move v0, v3

    .line 346
    :goto_2
    return v0

    :cond_1
    move v2, v3

    .line 320
    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_saving_mode"

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 326
    goto :goto_3

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTvOutSettigs:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 330
    goto :goto_2

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->gSensor:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 334
    goto :goto_2

    .line 337
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenDisplay:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 338
    const-string v0, "DisplaySettings"

    const-string v0, "onPreferenceTreeClick(), mScreenDisplay"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 339
    goto :goto_2

    .line 342
    :cond_7
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mModeSetting:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 343
    goto :goto_2
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 231
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DisplaySettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    const-string v1, "DisplaySettings"

    const-string v2, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mOrientationObserver:Lcom/android/settings/DisplaySettings$OrientationObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 239
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/DisplaySettings;->updateState(Z)V

    .line 240
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 253
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "DisplaySettings"

    const-string v1, "onStop() : Dismiss brightness dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mOrientationObserver:Lcom/android/settings/DisplaySettings$OrientationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 259
    return-void
.end method
