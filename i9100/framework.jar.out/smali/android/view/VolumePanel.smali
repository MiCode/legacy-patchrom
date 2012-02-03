.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"


# static fields
.field private static final ALARM_VOLUME_TEXT:I = 0x10403b5

.field private static final BEEP_DURATION:I = 0x96

.field private static final BLUETOOTH_INCALL_VOLUME_TEXT:I = 0x10403b4

.field static EAR_PROTECT_LIMIT_INDEX_VALUE:I = 0x0

.field private static final FM_VOLUME_TEXT:I = 0x10403b0

.field private static final FREE_DELAY:I = 0x2710

.field private static final INCALL_VOLUME_TEXT:I = 0x10403b3

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MUSIC_VOLUME_TEXT:I = 0x10403af

.field private static final NOTIFICATION_VOLUME_TEXT:I = 0x10403b6

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final RINGTONE_VOLUME_TEXT:I = 0x10403ae

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final UNKNOWN_VOLUME_TEXT:I = 0x10403b7

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field static getCurrentVol:I

.field static mFlag_isMusic:Z

.field static mPrevVol:I


# instance fields
.field private final mAdditionalMessage:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mLargeStreamIcon:Landroid/widget/ImageView;

.field private final mLevel:Landroid/widget/ProgressBar;

.field private final mMessage:Landroid/widget/TextView;

.field private mRingIsSilent:Z

.field private final mSmallStreamIcon:Landroid/widget/ImageView;

.field private final mToast:Landroid/widget/Toast;

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private final mWarningMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput v0, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 50
    sput v0, Landroid/view/VolumePanel;->mPrevVol:I

    .line 51
    sput-boolean v0, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 54
    sput-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 4
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 114
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 115
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 116
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    .line 118
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 120
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090072

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 121
    .local v1, view:Landroid/view/View;
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    .line 122
    const v2, 0x102025c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    .line 124
    const v2, 0x102025f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    .line 125
    const v2, 0x102025b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    .line 126
    const v2, 0x102025d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    .line 127
    const v2, 0x102025e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    .line 129
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    new-array v2, v2, [Landroid/media/ToneGenerator;

    iput-object v2, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 130
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 131
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 3
    .parameter "streamType"

    .prologue
    .line 377
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v1, p1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v1, v0, p1

    monitor-exit p0

    move-object v0, v1

    .line 381
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setLargeIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 406
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    return-void
.end method

.method private setRingerIcon()V
    .locals 5

    .prologue
    .line 416
    iget-object v2, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 422
    .local v1, ringerMode:I
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingerIcon(), ringerMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    if-nez v1, :cond_1

    .line 425
    const v0, 0x10801ec

    .line 431
    .local v0, icon:I
    :goto_0
    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    return-void

    .line 426
    .end local v0           #icon:I
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 427
    const v0, 0x10801e7

    .restart local v0       #icon:I
    goto :goto_0

    .line 429
    .end local v0           #icon:I
    :cond_2
    const v0, 0x10801e9

    .restart local v0       #icon:I
    goto :goto_0
.end method

.method private setSmallIcon(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 392
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const v1, 0x10801ed

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    return-void

    .line 395
    :cond_0
    const v1, 0x10801ee

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 452
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 480
    :goto_0
    return-void

    .line 455
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 465
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 470
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 437
    iget-object v1, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v1, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 442
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 445
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 441
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 447
    :cond_1
    monitor-exit p0

    .line 448
    return-void

    .line 447
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 334
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 337
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 340
    :cond_0
    monitor-enter p0

    .line 341
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 342
    .local v0, toneGen:Landroid/media/ToneGenerator;
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 344
    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 345
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 348
    return-void

    .line 345
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onShowVolumeChanged(II)V
    .locals 12
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "VolumePanel"

    .line 168
    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v7, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v1

    .line 169
    .local v1, index:I
    const v3, 0x10403b7

    .line 170
    .local v3, message:I
    const/4 v0, 0x0

    .line 171
    .local v0, additionalMessage:I
    const/4 v6, 0x0

    .line 172
    .local v6, warningMessage:I
    iput-boolean v9, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 174
    sget-boolean v7, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    .line 175
    const-string v7, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onShowVolumeChanged(streamType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", flags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v7, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v2

    .line 182
    .local v2, max:I
    packed-switch p1, :pswitch_data_0

    .line 279
    :cond_1
    :goto_0
    :pswitch_0
    sget v7, Landroid/view/VolumePanel;->getCurrentVol:I

    sput v7, Landroid/view/VolumePanel;->mPrevVol:I

    .line 280
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, messageString:Ljava/lang/String;
    iget-object v7, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 282
    iget-object v7, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_2
    if-nez v0, :cond_a

    .line 286
    iget-object v7, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_1
    iget-object v7, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getMax()I

    move-result v7

    if-eq v2, v7, :cond_3

    .line 293
    iget-object v7, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 295
    :cond_3
    iget-object v7, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 297
    sget-boolean v7, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    if-ne v7, v10, :cond_b

    .line 299
    sget-boolean v7, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_4

    .line 300
    const-string v7, "VolumePanel"

    const-string v7, "mFlag_isMusic == true"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_4
    sget-boolean v7, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_5

    .line 303
    const-string v7, "VolumePanel"

    const-string v7, "Show Waring Toast"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_5
    const v6, 0x10404c2

    .line 307
    iget-object v7, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    sput-boolean v9, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 318
    :goto_2
    iget-object v7, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    iget-object v8, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 319
    iget-object v7, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7, v9}, Landroid/widget/Toast;->setDuration(I)V

    .line 320
    iget-object v7, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    const/16 v8, 0x30

    invoke-virtual {v7, v8, v9, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 321
    iget-object v7, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 324
    and-int/lit8 v7, p2, 0x10

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v7, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v7}, Landroid/media/AudioService;->getRingerMode()I

    move-result v7

    if-ne v7, v10, :cond_6

    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v7, v9}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 328
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {p0, v7, v8, v9}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 330
    :cond_6
    return-void

    .line 185
    .end local v4           #messageString:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Landroid/view/VolumePanel;->setRingerIcon()V

    .line 186
    const v3, 0x10403ae

    .line 187
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 189
    .local v5, ringuri:Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 190
    const v0, 0x10403b2

    .line 192
    iput-boolean v10, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 199
    .end local v5           #ringuri:Landroid/net/Uri;
    :pswitch_2
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v7

    sput v7, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    .line 201
    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    sput v7, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 203
    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v7

    if-eqz v7, :cond_8

    sget v7, Landroid/view/VolumePanel;->getCurrentVol:I

    sget v8, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    if-ne v7, v8, :cond_8

    sget v7, Landroid/view/VolumePanel;->mPrevVol:I

    sget v8, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    if-ge v7, v8, :cond_8

    .line 208
    sget-boolean v7, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_7

    .line 209
    const-string v7, "VolumePanel"

    const-string v7, "kdh debug line-1"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_7
    sput-boolean v10, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 214
    :cond_8
    const v3, 0x10403af

    .line 215
    iget-object v7, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 216
    const v0, 0x10403b1

    .line 218
    const v7, 0x10801ea

    invoke-direct {p0, v7}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_0

    .line 220
    :cond_9
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 234
    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    .line 235
    add-int/lit8 v2, v2, 0x1

    .line 236
    const v3, 0x10403b3

    .line 237
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 242
    :pswitch_4
    const v3, 0x10403b5

    .line 243
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 248
    :pswitch_5
    const v3, 0x10403b6

    .line 249
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    .line 250
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 252
    .restart local v5       #ringuri:Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 253
    const v0, 0x10403b2

    .line 255
    iput-boolean v10, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 266
    .end local v5           #ringuri:Landroid/net/Uri;
    :pswitch_6
    add-int/lit8 v1, v1, 0x1

    .line 267
    add-int/lit8 v2, v2, 0x1

    .line 268
    const v3, 0x10403b4

    .line 269
    const v7, 0x10801eb

    invoke-direct {p0, v7}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_0

    .line 274
    :pswitch_7
    const v3, 0x10403b0

    .line 275
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 288
    .restart local v4       #messageString:Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v7, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 313
    :cond_b
    sget-boolean v7, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_c

    .line 314
    const-string v7, "VolumePanel"

    const-string v7, "mFlag_isMusic != true"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_c
    iget-object v7, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 352
    monitor-enter p0

    .line 353
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 354
    .local v1, numStreamTypes:I
    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 355
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 356
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 357
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 354
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 360
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 361
    return-void

    .line 360
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 146
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 152
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_2

    .line 153
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 154
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 157
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 159
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 160
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 163
    :cond_3
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 164
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 165
    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 136
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
