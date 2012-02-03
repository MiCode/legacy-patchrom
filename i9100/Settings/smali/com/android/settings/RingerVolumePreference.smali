.class public Lcom/android/settings/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RingerVolumePreference$1;,
        Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;,
        Lcom/android/settings/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static DbgCnt:I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_TYPE:[I


# instance fields
.field private currentDbgId:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mHsReceiver:Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsHeadset:Z

.field private mNotificationVolumeTitle:Landroid/widget/TextView;

.field private mOldNotification:I

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/RingerVolumePreference;->DbgCnt:I

    return-void

    .line 56
    nop

    :array_0
    .array-data 0x4
        0xe4t 0x0t 0xbt 0x7ft
        0xe1t 0x0t 0xbt 0x7ft
        0xe2t 0x0t 0xbt 0x7ft
    .end array-data

    .line 62
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RingerVolumePreference;->mIsHeadset:Z

    .line 78
    new-instance v0, Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;-><init>(Lcom/android/settings/RingerVolumePreference;Lcom/android/settings/RingerVolumePreference$1;)V

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mHsReceiver:Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;

    .line 82
    iput-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    sget v0, Lcom/android/settings/RingerVolumePreference;->DbgCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/settings/RingerVolumePreference;->DbgCnt:I

    iput v0, p0, Lcom/android/settings/RingerVolumePreference;->currentDbgId:I

    .line 91
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerVolumePreference;->setStreamType(I)V

    .line 93
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerVolumePreference;->setDialogLayoutResource(I)V

    .line 94
    const v0, 0x7f02004e

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerVolumePreference;->setDialogIcon(I)V

    .line 96
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 99
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RingerVolumePreference;->mIsHeadset:Z

    .line 101
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RingerVolumePreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings/RingerVolumePreference;->mIsHeadset:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/RingerVolumePreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/settings/RingerVolumePreference;->mIsHeadset:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/RingerVolumePreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/RingerVolumePreference;->updateVolumizers(Z)V

    return-void
.end method

.method private cleanup()V
    .locals 4

    .prologue
    .line 249
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 250
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 252
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 257
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 249
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_2
    return-void
.end method

.method private setNotificationVolumeVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationVolumeTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    return-void

    :cond_1
    move v1, v3

    .line 242
    goto :goto_0

    :cond_2
    move v1, v3

    .line 245
    goto :goto_1
.end method

.method private updateVolumizers(Z)V
    .locals 4
    .parameter "isHeadset"

    .prologue
    .line 355
    const-string v1, "RingerVolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ++ updateVolumizers "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v3, "true"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 360
    sget-object v1, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v1, v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 361
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->reloadSeekBarVolumizer(Z)V

    .line 374
    :cond_0
    return-void

    .line 355
    .end local v0           #i:I
    :cond_1
    const-string v3, "false"

    goto :goto_0

    .line 359
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onActivityStop()V
    .locals 3

    .prologue
    const-string v2, "RingerVolumePreference"

    .line 205
    const-string v1, "RingerVolumePreference"

    const-string v1, " onActivityStop()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 207
    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->cleanup()V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 210
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 212
    const-string v1, "RingerVolumePreference"

    const-string v1, " dialog.dismiss()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v2, :cond_0

    .line 109
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 110
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RingerVolumePreference;->mHsReceiver:Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 115
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 116
    .local v1, seekBar:Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v3, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v0

    invoke-direct {v3, p0, v4, v1, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v3, v2, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v1           #seekBar:Landroid/widget/SeekBar;
    :cond_1
    const v2, 0x7f0b00e2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 121
    .restart local v1       #seekBar:Landroid/widget/SeekBar;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    .line 124
    const v2, 0x7f0b00e3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationVolumeTitle:Landroid/widget/TextView;

    .line 140
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 217
    if-nez p2, :cond_1

    move v1, v3

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/RingerVolumePreference;->setNotificationVolumeVisibility(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notifications_use_ring_volume"

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 227
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 230
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    return-void

    :cond_1
    move v1, v4

    .line 217
    goto :goto_0

    :cond_2
    move v3, v4

    .line 219
    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 10
    .parameter "positiveResult"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 171
    const-string v6, "RingerVolumePreference"

    const-string v7, " onDialogClosed()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 174
    if-nez p1, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 176
    .local v5, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 175
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v5           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    iget v6, p0, Lcom/android/settings/RingerVolumePreference;->mOldNotification:I

    if-ne v6, v8, :cond_4

    move v3, v8

    .line 180
    .local v3, isChecked:Z
    :goto_1
    if-nez v3, :cond_5

    move v6, v8

    :goto_2
    invoke-direct {p0, v6}, Lcom/android/settings/RingerVolumePreference;->setNotificationVolumeVisibility(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notifications_use_ring_volume"

    if-eqz v3, :cond_6

    :goto_3
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    if-eqz v3, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 190
    .local v1, audioManager:Landroid/media/AudioManager;
    const/4 v6, 0x5

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    invoke-virtual {v1, v6, v7, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 194
    .end local v0           #arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #i$:I
    .end local v3           #isChecked:Z
    .end local v4           #len$:I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->cleanup()V

    .line 196
    iget-object v6, p0, Lcom/android/settings/RingerVolumePreference;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v6, :cond_3

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/RingerVolumePreference;->mHsReceiver:Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/RingerVolumePreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 201
    :cond_3
    return-void

    .restart local v0       #arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    :cond_4
    move v3, v9

    .line 179
    goto :goto_1

    .restart local v3       #isChecked:Z
    :cond_5
    move v6, v9

    .line 180
    goto :goto_2

    :cond_6
    move v8, v9

    .line 182
    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    .line 284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/RingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 301
    :goto_0
    return-void

    .line 290
    :cond_1
    check-cast p1, Lcom/android/settings/RingerVolumePreference$SavedState;

    .line 291
    invoke-virtual {p1}, Lcom/android/settings/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 292
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v0

    .line 293
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 294
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    .line 295
    if-eqz v2, :cond_2

    .line 296
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 293
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/RingerVolumePreference;->updateVolumizers(Z)V

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 236
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 235
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 264
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 266
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 279
    :goto_0
    return-object v5

    .line 271
    :cond_0
    new-instance v1, Lcom/android/settings/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settings/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 272
    .local v1, myState:Lcom/android/settings/RingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/settings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 273
    .local v4, volumeStore:[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 274
    iget-object v5, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 275
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 276
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 273
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v5, v1

    .line 279
    goto :goto_0
.end method
