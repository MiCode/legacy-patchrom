.class public Lcom/motorola/server/BeepSoundService;
.super Ljava/lang/Thread;
.source "BeepSoundService.java"


# static fields
.field private static final BATTERY_BEEP_INTERVAL:I = 0x493e0

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BeepSoundService"

.field public static final TONE_BATTERY_LOW:I = 0x1

.field public static final TONE_BATTERY_TEMP_HIGH:I = 0x2

.field public static final TONE_CHARGE_MODE:I = 0x3

.field private static final TONE_HIGH_TONE_VOLUME:I = 0x64

.field private static final TONE_LENGTH_MS:I = 0x3e8

.field private static final TONE_LOW_TONE_VOLUME:I = 0x32

.field public static final TONE_NONE:I = 0x0

.field private static final VIBRATE_DURATION:I = 0xc8


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mIsThreadStoped:Z

.field private mPlayTimes:I

.field private mStreamType:I

.field private mToneId:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(IILandroid/content/Context;)V
    .locals 1
    .parameter "toneId"
    .parameter "streamType"
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/server/BeepSoundService;->mIsThreadStoped:Z

    const/16 v0, 0xff

    iput v0, p0, Lcom/motorola/server/BeepSoundService;->mPlayTimes:I

    iput p1, p0, Lcom/motorola/server/BeepSoundService;->mToneId:I

    iput p2, p0, Lcom/motorola/server/BeepSoundService;->mStreamType:I

    iput-object p3, p0, Lcom/motorola/server/BeepSoundService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/motorola/server/BeepSoundService;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public isThreadNotRun()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/server/BeepSoundService;->mIsThreadStoped:Z

    return v0
.end method

.method public run()V
    .locals 15

    .prologue
    iget-object v12, p0, Lcom/motorola/server/BeepSoundService;->mContext:Landroid/content/Context;

    const-string v13, "audio"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .local v1, audioManager:Landroid/media/AudioManager;
    const/16 v9, 0x19

    .local v9, toneType:I
    const/16 v10, 0x64

    .local v10, toneVolume:I
    const/16 v8, 0x3e8

    .local v8, toneLengthMillis:I
    const/16 v4, 0x7d0

    .local v4, playInterval:I
    if-eqz v1, :cond_0

    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x64

    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v13

    div-int v3, v12, v13

    .local v3, percent:I
    move v10, v3

    .end local v3           #percent:I
    :cond_0
    const/4 v6, 0x0

    .local v6, toneGenerator:Landroid/media/ToneGenerator;
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/motorola/server/BeepSoundService;->mIsThreadStoped:Z

    iget v12, p0, Lcom/motorola/server/BeepSoundService;->mToneId:I

    packed-switch v12, :pswitch_data_0

    :goto_0
    iget-boolean v12, p0, Lcom/motorola/server/BeepSoundService;->mIsThreadStoped:Z

    if-nez v12, :cond_6

    if-nez v1, :cond_1

    :try_start_0
    iget-object v12, p0, Lcom/motorola/server/BeepSoundService;->mContext:Landroid/content/Context;

    const-string v13, "audio"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/media/AudioManager;

    move-object v1, v0

    :cond_1
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .local v5, ringerMode:I
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getVibrateSetting(I)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .local v11, vibSetting:I
    const/4 v12, 0x2

    if-ne v5, v12, :cond_3

    if-nez v6, :cond_2

    :try_start_1
    new-instance v7, Landroid/media/ToneGenerator;

    iget v12, p0, Lcom/motorola/server/BeepSoundService;->mStreamType:I

    invoke-direct {v7, v12, v10}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6           #toneGenerator:Landroid/media/ToneGenerator;
    .local v7, toneGenerator:Landroid/media/ToneGenerator;
    move-object v6, v7

    .end local v7           #toneGenerator:Landroid/media/ToneGenerator;
    .restart local v6       #toneGenerator:Landroid/media/ToneGenerator;
    :cond_2
    :try_start_2
    invoke-virtual {v6, v9}, Landroid/media/ToneGenerator;->startTone(I)Z

    int-to-long v12, v8

    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V

    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_3
    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    const/4 v12, 0x2

    if-eq v5, v12, :cond_5

    :cond_4
    iget-object v12, p0, Lcom/motorola/server/BeepSoundService;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v13, 0xc8

    invoke-virtual {v12, v13, v14}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_5
    iget v12, p0, Lcom/motorola/server/BeepSoundService;->mPlayTimes:I

    const/16 v13, 0xff

    if-eq v12, v13, :cond_8

    iget v12, p0, Lcom/motorola/server/BeepSoundService;->mPlayTimes:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/motorola/server/BeepSoundService;->mPlayTimes:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v12, :cond_8

    .end local v5           #ringerMode:I
    .end local v11           #vibSetting:I
    :cond_6
    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    :cond_7
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/motorola/server/BeepSoundService;->mIsThreadStoped:Z

    const/16 v12, 0xff

    iput v12, p0, Lcom/motorola/server/BeepSoundService;->mPlayTimes:I

    return-void

    :pswitch_0
    const v4, 0x493e0

    goto :goto_0

    :pswitch_1
    const/4 v12, 0x6

    iput v12, p0, Lcom/motorola/server/BeepSoundService;->mPlayTimes:I

    goto :goto_0

    :pswitch_2
    const/4 v12, 0x1

    iput v12, p0, Lcom/motorola/server/BeepSoundService;->mPlayTimes:I

    const/16 v9, 0x1b

    goto :goto_0

    .restart local v5       #ringerMode:I
    .restart local v11       #vibSetting:I
    :catch_0
    move-exception v12

    move-object v2, v12

    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v12, "BeepSoundService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_1

    .end local v2           #e:Ljava/lang/RuntimeException;
    :cond_8
    int-to-long v12, v4

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .end local v5           #ringerMode:I
    .end local v11           #vibSetting:I
    :catch_1
    move-exception v12

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPlayTimes(I)V
    .locals 0
    .parameter "playTimes"

    .prologue
    iput p1, p0, Lcom/motorola/server/BeepSoundService;->mPlayTimes:I

    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/server/BeepSoundService;->mIsThreadStoped:Z

    return-void
.end method
