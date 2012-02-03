.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$HeadsetRingtonePlayer;,
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final INIT_VOLUME:I

.field private final INIT_VOLUME_DELAY:I

.field private final RETURN_ORIGIN_VOLUME:I

.field mAudioManager:Landroid/media/AudioManager;

.field private mCallMotion:Lcom/android/phone/CallMotion;

.field private mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

.field mContext:Landroid/content/Context;

.field volatile mContinueVibrating:Z

.field mCustomRingtoneUri:Landroid/net/Uri;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

.field private mOriginRingtoneVolume:I

.field mPowerManager:Landroid/os/IPowerManager;

.field private mRingHandler:Landroid/os/Handler;

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field mRingtone:Landroid/media/Ringtone;

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/Ringer;->RETURN_ORIGIN_VOLUME:I

    .line 64
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/phone/Ringer;->INIT_VOLUME_DELAY:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/Ringer;->INIT_VOLUME:I

    .line 71
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    .line 78
    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 79
    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    .line 83
    iput-object v1, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    .line 84
    iput-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    .line 91
    iput-object p1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 92
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    .line 93
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    .line 94
    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/Ringer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/Ringer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/Ringer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/phone/Ringer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/Ringer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isRingtonePlaying()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isVibrating()Z
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 504
    const-string v0, "Ringer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void
.end method

.method private makeLooper()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 352
    new-instance v0, Lcom/android/phone/Ringer$1;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 442
    :cond_0
    return-void
.end method


# virtual methods
.method isRinging()Z
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isTTSenabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, driveModeForIncoming:Z
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_incoming_call_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v0, v4

    .line 231
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 229
    goto :goto_0
.end method

.method isValidRingtoneURI(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 445
    const/4 v7, 0x0

    .line 446
    .local v7, returnValue:Z
    if-eqz p1, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 448
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 449
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    .line 450
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 453
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    if-nez v7, :cond_2

    const-string v0, "Ringer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidRingtoneURI : Invalid URI - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_2
    return v7
.end method

.method ring()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 151
    const-string v2, "ring()..."

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 153
    monitor-enter p0

    .line 157
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 158
    iget-object v2, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v3, 0x1

    const/16 v4, 0xff

    invoke-interface {v2, v3, v4}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_overturn"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_8

    move v1, v5

    .line 168
    .local v1, isEnable:Z
    :goto_1
    sget-boolean v2, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRingHandler: MOTION_OVERTURN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 169
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    if-nez v2, :cond_1

    .line 170
    new-instance v2, Lcom/android/phone/CallMotion;

    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Lcom/android/phone/CallMotion;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    .line 171
    iget-object v2, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    invoke-virtual {v2}, Lcom/android/phone/CallMotion;->startMotionCatch()V

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v2, :cond_3

    .line 175
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 176
    new-instance v2, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v2, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 177
    sget-boolean v2, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "- starting vibrator..."

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 178
    :cond_2
    iget-object v2, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v2}, Lcom/android/phone/Ringer$VibratorThread;->start()V

    .line 180
    :cond_3
    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 183
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_9

    .line 184
    sget-boolean v2, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "skipping ring because volume is zero"

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 185
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v2, :cond_6

    .line 186
    sget-boolean v2, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Play Headset ringtone.."

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 187
    :cond_5
    new-instance v2, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v2, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 188
    iget-object v2, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->start()V

    .line 190
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :goto_2
    return-void

    .line 160
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #isEnable:Z
    :cond_7
    :try_start_2
    iget-object v2, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v3, 0x1

    const v4, 0xffffff

    invoke-interface {v2, v3, v4}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 162
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 166
    :cond_8
    const/4 v2, 0x0

    move v1, v2

    goto/16 :goto_1

    .line 193
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #isEnable:Z
    :cond_9
    :try_start_3
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    .line 194
    iget-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_b

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 197
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isTTSenabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 201
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 223
    :cond_a
    :goto_3
    monitor-exit p0

    goto :goto_2

    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #isEnable:Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 208
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #isEnable:Z
    :cond_b
    :try_start_4
    iget-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_d

    .line 211
    sget-boolean v2, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v2, :cond_c

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delaying ring by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 214
    :cond_c
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v6, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 220
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 344
    if-eqz p1, :cond_0

    .line 345
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 347
    :cond_0
    return-void
.end method

.method shouldVibrate()Z
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 236
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    return v1
.end method

.method stopRing()V
    .locals 5

    .prologue
    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    const-string v1, "stopRing()..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 255
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 259
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 261
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 265
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 266
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 267
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 272
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v1, :cond_3

    .line 273
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "- stopRing: cleaning up vibrator thread..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 274
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v1, :cond_5

    .line 279
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "- stopRing: cleaning up headsetRingtone thread..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 280
    :cond_4
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()V

    .line 281
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 285
    :cond_5
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 287
    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    if-eqz v1, :cond_6

    .line 288
    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    invoke-virtual {v1}, Lcom/android/phone/CallMotion;->stopMotionCatch()V

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    .line 291
    :cond_6
    monitor-exit p0

    .line 292
    return-void

    .line 269
    :cond_7
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "- stopRing: null mRingHandler!"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 249
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method updateHeadsetRingtoneState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 486
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 493
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->start()V

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()V

    .line 498
    iput-object v2, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    goto :goto_0
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Ringer"

    const-string v1, "updateRingerContextAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method
