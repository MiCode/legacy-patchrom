.class public Lcom/android/settings/BrightnessPreference;
.super Landroid/preference/SeekBarPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BrightnessPreference$BrightnessObserver;
    }
.end annotation


# instance fields
.field private mAutomaticAvailable:Z

.field private mBrightnessObserver:Lcom/android/settings/BrightnessPreference$BrightnessObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentProgress:I

.field private mMaxBrightness:I

.field private mMaxBrightnessTable:[I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mTemperature:I

.field private mTemperatureTable:[I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-object p1, p0, Lcom/android/settings/BrightnessPreference;->mContext:Landroid/content/Context;

    .line 79
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 84
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrightnessPreference automatic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const v1, 0x7f030046

    invoke-virtual {p0, v1}, Lcom/android/settings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 88
    new-instance v1, Lcom/android/settings/BrightnessPreference$BrightnessObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/BrightnessPreference$BrightnessObserver;-><init>(Lcom/android/settings/BrightnessPreference;)V

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Lcom/android/settings/BrightnessPreference$BrightnessObserver;

    .line 90
    const v1, 0x1070021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mTemperatureTable:[I

    .line 92
    const v1, 0x1070022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightnessTable:[I

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BrightnessPreference;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessPreference;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private setBrightness(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 252
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 254
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 255
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 258
    .local v0, doe:Landroid/os/RemoteException;
    const-string v2, "BrightnessPreference"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 263
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-ne p1, v3, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 271
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/16 v7, 0x1e

    const/16 v6, 0x8

    const/4 v4, 0x0

    const-string v3, "screen_brightness"

    const-string v5, "BrightnessPreference"

    .line 98
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V

    .line 99
    const-string v1, "BrightnessPreference"

    const-string v1, "onBindDialogView()"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Lcom/android/settings/BrightnessPreference$BrightnessObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    const v1, 0x7f0b00e0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    .line 103
    invoke-static {p1}, Lcom/android/settings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 104
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xe1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    .line 108
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOldBrightness :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 115
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "battery_temperature"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mTemperature:I

    .line 117
    const-string v1, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BatteryTemperature :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mTemperature:I

    invoke-virtual {p0, v1}, Lcom/android/settings/BrightnessPreference;->returnMaxBrightness(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    .line 119
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    if-le v1, v2, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 123
    :goto_1
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mTemperature:I

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mTemperatureTable:[I

    aget v2, v2, v4

    if-ge v1, v2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :cond_0
    const v1, 0x7f0b00df

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 127
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v1, :cond_3

    .line 128
    const-string v1, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutomaticAvailable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 133
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOldAutomatic :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :goto_2
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    :goto_4
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 142
    return-void

    .line 109
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 110
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    goto/16 :goto_0

    .line 122
    .end local v0           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_1

    .line 134
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 135
    .restart local v0       #snfe:Landroid/provider/Settings$SettingNotFoundException;
    iput v4, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    goto :goto_2

    .end local v0           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    move v2, v4

    .line 137
    goto :goto_3

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_4
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 187
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged : isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 194
    if-nez p2, :cond_0

    .line 195
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 210
    :cond_0
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    const-string v5, "BrightnessPreference"

    .line 214
    const-string v2, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onDialogClosed(Z)V

    .line 216
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Lcom/android/settings/BrightnessPreference$BrightnessObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 218
    if-eqz p1, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget-object v4, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 227
    .local v1, mode:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 229
    const-string v2, "BrightnessPreference"

    const-string v2, "onDialogClosed(), Automatic mode and no set brightness"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.BRIGHTNESS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #mode:I
    :cond_0
    :goto_1
    return-void

    .line 232
    .restart local v1       #mode:I
    :cond_1
    const-string v2, "BrightnessPreference"

    const-string v2, "onDialogClosed(), Manual mode and set brightness"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    goto :goto_0

    .line 241
    .end local v1           #mode:I
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v2, :cond_3

    .line 242
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 244
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-nez v2, :cond_0

    .line 245
    :cond_4
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    goto :goto_1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 162
    iput p2, p0, Lcom/android/settings/BrightnessPreference;->mCurrentProgress:I

    .line 163
    add-int/lit8 v0, p2, 0x1e

    .line 164
    .local v0, mCurrentBrightness:I
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    if-gt v0, v1, :cond_0

    .line 165
    add-int/lit8 v1, p2, 0x1e

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 170
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    const-string v2, "BrightnessPreference"

    .line 174
    const-string v0, "BrightnessPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopTrackingTouch() : Current progress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mCurrentProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mCurrentProgress:I

    add-int/lit8 v0, v0, 0x1e

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    if-gt v0, v1, :cond_0

    .line 177
    const-string v0, "BrightnessPreference"

    const-string v0, "onStopTrackingTouch() : Current progress is below than MaxBrightness"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    const/16 v1, 0x1e

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 182
    const-string v0, "BrightnessPreference"

    const-string v0, "onStopTrackingTouch() : Current progress is over than MaxBrightness"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public returnMaxBrightness(I)I
    .locals 5
    .parameter "mTargetTemperature"

    .prologue
    const-string v4, "BrightnessPreference"

    .line 148
    const/4 v1, 0x0

    .local v1, mTemperatureIndex:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mTemperatureTable:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mTemperatureTable:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_1

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightnessTable:[I

    aget v0, v2, v1

    .line 155
    .local v0, mMaxTargetBrightness:I
    const-string v2, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnMaxBrightness : Temperature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v2, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnMaxBrightness : MaxBrightness "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v0

    .line 148
    .end local v0           #mMaxTargetBrightness:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
