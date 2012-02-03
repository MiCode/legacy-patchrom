.class public Landroid/hardware/motion/MotionRecognitionService;
.super Landroid/hardware/motion/IMotionRecognitionService$Stub;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionService$EventPool;,
        Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;,
        Landroid/hardware/motion/MotionRecognitionService$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_MIOTINOS_SETTINGS_CHANGED:Ljava/lang/String; = "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

.field private static final CONFIG_BROADCAST_INTENT:Z = false

.field private static final CONFIG_ENGINE_SEND_GYRO:Z = false

.field private static final CONFIG_READ_SETTINGS:Z = true

.field private static final CONFIG_USE_ALWAYS:Z = false

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"

.field private static final localLOGD:Z = false

.field private static final localLOGV:Z = false

.field private static final localLOGVV:Z = false

#the value of this static final field might be set in the static constructor
.field private static final mDefaultAppId:I = 0x0

.field private static final mSensitivityDef:I = 0x5

.field private static final mSensitivityMax:I = 0xa


# instance fields
.field mBootCompeleted:Z

.field private final mContext:Landroid/content/Context;

.field mEngineInitialized:Z

.field mEngineIsAvailable:Z

.field mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

.field mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/motion/MotionRecognitionService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field mLockEngine:Ljava/lang/Object;

.field mLogPW:Ljava/io/PrintWriter;

.field mLogPath:Ljava/lang/String;

.field mLogTime:J

.field private mPostAccelVal:[D

.field private mPostGyroVal:[D

.field mPowerTime:J

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mResolver:Landroid/content/ContentResolver;

.field mRotate:I

.field mSensorDelayInMsec:I

.field mSensorsEnabled:I

.field mSensorsUsed:I

.field mThread:Landroid/os/HandlerThread;

.field orientationListener:Landroid/view/WindowOrientationListener;

.field private final sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

.field private final sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

.field sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;->APPID_TEST:Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;

    invoke-virtual {v0}, Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/motion/MotionRecognitionService;->mDefaultAppId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;-><init>()V

    .line 58
    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    .line 59
    const-string v1, ""

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    .line 60
    iput-wide v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    .line 61
    iput-wide v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    .line 63
    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    .line 64
    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    .line 68
    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    .line 71
    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    .line 72
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 73
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mBootCompeleted:Z

    .line 75
    const/16 v1, 0x1c

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    .line 76
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    .line 77
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 78
    const/16 v1, 0x14

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    .line 80
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$1;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$1;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 837
    new-array v1, v5, [D

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    .line 838
    new-array v1, v5, [D

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    .line 840
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$3;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$3;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    .line 875
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$4;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$4;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 123
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->native_motionengine_is_available()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    .line 126
    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v1, :cond_1

    .line 127
    const-string v1, "MotionRecognitionService"

    const-string v2, "  Engine is not included"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 125
    goto :goto_0

    .line 131
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "motion_recognition"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    .line 132
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    .line 136
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$EventPool;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$EventPool;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    .line 155
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$2;

    invoke-direct {v1, p0, p1}, Landroid/hardware/motion/MotionRecognitionService$2;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeIfPossible()V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/motion/MotionRecognitionService;)[D
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/motion/MotionRecognitionService;)[D
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/motion/MotionRecognitionService;DDDDDDII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p14}, Landroid/hardware/motion/MotionRecognitionService;->native_getscenario_id(DDDDDDII)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/hardware/motion/MotionRecognitionService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(I)V

    return-void
.end method

.method private checkSettingEngineEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 350
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "motion_engine"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    move v1, v5

    .line 352
    .local v1, isEnabled:Z
    :goto_0
    const-string v2, "debug.motion.enabled"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 353
    .local v0, debugEnabled:Z
    if-eqz v0, :cond_0

    .line 354
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .checkSettingEngineEnabled : isEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  debugEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    move v1, v0

    .line 357
    :cond_0
    return v1

    .end local v0           #debugEnabled:Z
    .end local v1           #isEnabled:Z
    :cond_1
    move v1, v4

    .line 350
    goto :goto_0
.end method

.method private checkSettingMotionEnabled(I)Z
    .locals 3
    .parameter "motion"

    .prologue
    const/4 v2, 0x1

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, setting:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 373
    :goto_0
    if-eqz v0, :cond_1

    .line 374
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 377
    :goto_1
    return v1

    .line 366
    :sswitch_0
    const-string/jumbo v0, "motion_double_tap"

    goto :goto_0

    .line 367
    :sswitch_1
    const-string/jumbo v0, "motion_overturn"

    goto :goto_0

    .line 369
    :sswitch_2
    const-string/jumbo v0, "motion_shake"

    goto :goto_0

    .line 370
    :sswitch_3
    const-string/jumbo v0, "motion_panning"

    goto :goto_0

    .line 371
    :sswitch_4
    const-string/jumbo v0, "motion_zooming"

    goto :goto_0

    .line 374
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, v2

    .line 377
    goto :goto_1

    .line 365
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x23 -> :sswitch_2
        0x24 -> :sswitch_2
        0x3d -> :sswitch_3
        0x43 -> :sswitch_4
    .end sparse-switch
.end method

.method private disableUnusedSensors()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 698
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 699
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 700
    shl-int v4, v7, v1

    .line 701
    .local v4, motion_sensor:I
    invoke-direct {p0, v4, v6}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 703
    .end local v4           #motion_sensor:I
    :cond_0
    invoke-direct {p0, v6}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 721
    :cond_1
    return-void

    .line 705
    .end local v1           #i:I
    :cond_2
    const/4 v0, 0x0

    .line 707
    .local v0, bSensorsUsed:I
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 708
    .local v3, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget v5, v3, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    or-int/2addr v0, v5

    goto :goto_1

    .line 711
    .end local v3           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v8, :cond_1

    .line 712
    shl-int v4, v7, v1

    .line 713
    .restart local v4       #motion_sensor:I
    and-int v5, v0, v4

    if-nez v5, :cond_4

    .line 714
    invoke-direct {p0, v4}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 715
    invoke-direct {p0, v4, v6}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 716
    invoke-direct {p0, v4, v6}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 711
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private enableAllSensors(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 688
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 689
    const/4 v2, 0x1

    shl-int v1, v2, v0

    .line 690
    .local v1, motion_sensor:I
    invoke-direct {p0, v1, p1}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    .end local v1           #motion_sensor:I
    :cond_0
    return-void
.end method

.method private enableSensor(IZ)V
    .locals 6
    .parameter "motion_sensor"
    .parameter "enabled"

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 651
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorEnabled(I)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 656
    if-eqz p2, :cond_3

    .line 657
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 662
    if-ne p1, v5, :cond_2

    .line 663
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 665
    :cond_2
    if-ne p1, v2, :cond_0

    .line 666
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z

    goto :goto_0

    .line 671
    :cond_3
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 675
    if-ne p1, v5, :cond_4

    .line 676
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorAccelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 677
    :cond_4
    if-ne p1, v2, :cond_0

    .line 678
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private finalizeIfPossible()V
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V

    goto :goto_0
.end method

.method private finalizeMotionEngine()V
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "MotionRecognitionService"

    const-string v1, "  .finalizeMotionEngine"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener;->disable()V

    .line 195
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionService;->sensorLogEnd()V

    .line 197
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 199
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 200
    sget v1, Landroid/hardware/motion/MotionRecognitionService;->mDefaultAppId:I

    invoke-direct {p0, v1}, Landroid/hardware/motion/MotionRecognitionService;->native_finalize_motionengine(I)V

    .line 201
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSettingMotionSensitivity(I)I
    .locals 3
    .parameter "motion"

    .prologue
    const/4 v2, 0x5

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, setting:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 387
    :goto_0
    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 391
    :goto_1
    return v1

    .line 384
    :sswitch_0
    const-string/jumbo v0, "motion_panning_sensitivity"

    goto :goto_0

    .line 385
    :sswitch_1
    const-string/jumbo v0, "motion_zooming_sensitivity"

    goto :goto_0

    :cond_0
    move v1, v2

    .line 391
    goto :goto_1

    .line 383
    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method private initializeMotionEngine()V
    .locals 2

    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-nez v0, :cond_0

    .line 173
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mBootCompeleted:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->checkSettingEngineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "MotionRecognitionService"

    const-string v1, "  .initializeMotionEngine"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener;->enable()V

    .line 179
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionService;->sensorLogStart()V

    .line 181
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 183
    sget v1, Landroid/hardware/motion/MotionRecognitionService;->mDefaultAppId:I

    invoke-direct {p0, v1}, Landroid/hardware/motion/MotionRecognitionService;->native_initialize_motionengine(I)V

    .line 184
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 185
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSensorEnabled(I)Z
    .locals 2
    .parameter "motion_sensor"

    .prologue
    const/4 v1, 0x0

    .line 627
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 629
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isSensorUsed(I)Z
    .locals 2
    .parameter "motion_sensor"

    .prologue
    const/4 v1, 0x0

    .line 618
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 620
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private native native_clear_scenario_result(I)V
.end method

.method private native native_finalize_motionengine(I)V
.end method

.method private native native_get_panning_dx()I
.end method

.method private native native_get_panning_dy()I
.end method

.method private native native_getscenario_id(DDDDDDII)I
.end method

.method private native native_initialize_motionengine(I)V
.end method

.method private native native_motionengine_is_available()I
.end method

.method private sendBroadcastIntent(I)V
    .locals 0
    .parameter "motion"

    .prologue
    .line 346
    return-void
.end method

.method private sendMotionEvent(I)V
    .locals 18
    .parameter "motion"

    .prologue
    .line 224
    move/from16 v4, p1

    .line 225
    .local v4, motionOrigin:I
    const/4 v5, 0x0

    .line 226
    .local v5, panningDx:I
    const/4 v6, 0x0

    .line 227
    .local v6, panningDy:I
    const/4 v2, 0x0

    .line 229
    .local v2, bSendMotion:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    move-object v14, v0

    monitor-enter v14

    .line 230
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->native_get_panning_dx()I

    move-result v5

    .line 231
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->native_get_panning_dy()I

    move-result v6

    .line 232
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    if-lez p1, :cond_1

    const/16 v14, 0x44

    move/from16 v0, p1

    move v1, v14

    if-ge v0, v1, :cond_1

    .line 236
    sparse-switch p1, :sswitch_data_0

    .line 251
    :goto_0
    move v0, v4

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 257
    :cond_0
    sparse-switch p1, :sswitch_data_1

    .line 286
    :goto_1
    :sswitch_0
    if-eqz v2, :cond_1

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v3

    .line 288
    .local v3, motionEvent:Landroid/hardware/motion/MREvent;
    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 293
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    .line 303
    .end local v3           #motionEvent:Landroid/hardware/motion/MREvent;
    :cond_1
    if-nez v5, :cond_2

    if-eqz v6, :cond_3

    .line 304
    :cond_2
    const/4 v10, 0x0

    .line 305
    .local v10, tilt:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    move v14, v0

    packed-switch v14, :pswitch_data_0

    .line 310
    move v10, v6

    .line 313
    :goto_2
    const/16 v14, 0x3d

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/hardware/motion/MotionRecognitionService;->getSettingMotionSensitivity(I)I

    move-result v8

    .line 314
    .local v8, sensitivityPanning:I
    const/16 v14, 0x43

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/hardware/motion/MotionRecognitionService;->getSettingMotionSensitivity(I)I

    move-result v9

    .line 316
    .local v9, sensitivityTilt:I
    const/4 v14, 0x5

    sub-int v14, v8, v14

    mul-int/2addr v14, v5

    div-int/lit8 v14, v14, 0xa

    add-int/2addr v5, v14

    .line 317
    const/4 v14, 0x5

    sub-int v14, v8, v14

    mul-int/2addr v14, v6

    div-int/lit8 v14, v14, 0xa

    add-int/2addr v6, v14

    .line 318
    const/4 v14, 0x5

    sub-int v14, v9, v14

    mul-int/2addr v14, v10

    div-int/lit8 v14, v14, 0xa

    add-int/2addr v10, v14

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v7

    .line 322
    .local v7, panningEvent:Landroid/hardware/motion/MREvent;
    const/16 v14, 0x3d

    invoke-virtual {v7, v14}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 323
    invoke-virtual {v7, v5}, Landroid/hardware/motion/MREvent;->setPanningDx(I)V

    .line 324
    invoke-virtual {v7, v6}, Landroid/hardware/motion/MREvent;->setPanningDy(I)V

    .line 325
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    .line 328
    if-eqz v10, :cond_3

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v11

    .line 330
    .local v11, tiltEvent:Landroid/hardware/motion/MREvent;
    const/16 v14, 0x43

    invoke-virtual {v11, v14}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 331
    invoke-virtual {v11, v10}, Landroid/hardware/motion/MREvent;->setTilt(I)V

    .line 332
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    .line 336
    .end local v7           #panningEvent:Landroid/hardware/motion/MREvent;
    .end local v8           #sensitivityPanning:I
    .end local v9           #sensitivityTilt:I
    .end local v10           #tilt:I
    .end local v11           #tiltEvent:Landroid/hardware/motion/MREvent;
    :cond_3
    return-void

    .line 232
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 238
    :sswitch_1
    const/16 p1, 0x1

    .line 239
    goto/16 :goto_0

    .line 243
    :sswitch_2
    const/16 p1, 0x2

    .line 244
    goto/16 :goto_0

    .line 248
    :sswitch_3
    const/16 p1, 0x3

    goto/16 :goto_0

    .line 263
    :sswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    move-wide/from16 v16, v0

    sub-long v12, v14, v16

    .line 264
    .local v12, time:J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-lez v14, :cond_4

    const-wide/16 v14, 0x7d0

    cmp-long v14, v12, v14

    if-gez v14, :cond_4

    .line 266
    const-string v14, "MotionRecognitionService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  .sendMotionEvent : ignore TWO_TAPPING. (time="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 274
    .end local v12           #time:J
    :cond_4
    :sswitch_5
    const/4 v2, 0x1

    .line 275
    goto/16 :goto_1

    .line 306
    .restart local v10       #tilt:I
    :pswitch_0
    move v10, v5

    goto/16 :goto_2

    .line 307
    :pswitch_1
    neg-int v10, v6

    goto/16 :goto_2

    .line 308
    :pswitch_2
    neg-int v10, v5

    goto/16 :goto_2

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f -> :sswitch_2
        0x30 -> :sswitch_3
        0x3f -> :sswitch_1
    .end sparse-switch

    .line 257
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0xa -> :sswitch_5
        0x23 -> :sswitch_5
        0x24 -> :sswitch_5
        0x3d -> :sswitch_0
    .end sparse-switch

    .line 305
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendMotionEvent(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 206
    .local v0, motion:I
    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->checkSettingMotionEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 215
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 216
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 217
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private useSensor(IZ)V
    .locals 2
    .parameter "motion_sensor"
    .parameter "used"

    .prologue
    .line 636
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 640
    if-eqz p2, :cond_2

    .line 641
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    goto :goto_0

    .line 643
    :cond_2
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 524
    .local v5, time:J
    const-string/jumbo v7, "motion_recognition"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " : mEngineInitialized="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mEngineIsAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " : mSensorsUsed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSensorsEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " : currentTimeMillis="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lastSensorEventTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", diff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    sub-long v8, v5, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 530
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " : listener count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    const/4 v1, 0x0

    .line 533
    .local v1, i:I
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 534
    .local v4, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   mListeners["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = mMotionSensors="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mUseAlways="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :try_start_1
    iget-object v8, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v8}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 537
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "                   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_1
    move v2, v1

    .line 539
    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 541
    .end local v4           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_0
    :try_start_2
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 542
    monitor-exit v7

    .line 543
    return-void

    .line 542
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 538
    .restart local v1       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public registerCallback(Landroid/os/IBinder;I)V
    .locals 13
    .parameter "binder"
    .parameter "motion_sensors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 395
    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v8, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    const/4 v4, 0x0

    .line 400
    .local v4, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    if-eqz p2, :cond_2

    .line 401
    or-int/lit8 p2, p2, 0x1

    .line 403
    :cond_2
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 404
    :try_start_0
    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 405
    .local v6, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v9, v6, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v9, :cond_3

    .line 406
    monitor-exit v8

    goto :goto_0

    .line 424
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catchall_0
    move-exception v9

    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 410
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    if-nez v4, :cond_5

    .line 411
    :try_start_1
    new-instance v5, Landroid/hardware/motion/MotionRecognitionService$Listener;

    invoke-direct {v5, p0, p1, p2}, Landroid/hardware/motion/MotionRecognitionService$Listener;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    .end local v4           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .local v5, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    const/4 v9, 0x0

    :try_start_2
    invoke-interface {p1, v5, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 413
    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 417
    .local v1, client:Ljava/lang/String;
    :try_start_3
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 418
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 421
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_2
    :try_start_4
    const-string v9, "MotionRecognitionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  .registerCallback : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", motion_sensors="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", client="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v4, v5

    .line 424
    .end local v1           #client:Ljava/lang/String;
    .end local v5           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v4       #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_5
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 426
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    const/4 v8, 0x2

    if-ge v2, v8, :cond_0

    .line 427
    shl-int v7, v12, v2

    .line 428
    .local v7, motion_sensor:I
    and-int v8, v7, p2

    if-eqz v8, :cond_7

    .line 429
    invoke-direct {p0, v7, v12}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 430
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v8

    .line 431
    :try_start_6
    iget-boolean v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v9, :cond_6

    .line 432
    const/4 v9, 0x1

    invoke-direct {p0, v7, v9}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 433
    :cond_6
    monitor-exit v8

    .line 426
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 433
    :catchall_1
    move-exception v9

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v9

    .line 424
    .end local v2           #i:I
    .end local v4           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .end local v7           #motion_sensor:I
    .restart local v5       #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v4       #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    goto :goto_1

    .line 419
    .end local v4           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v1       #client:Ljava/lang/String;
    .restart local v5       #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method sensorLogEnd()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    monitor-enter v0

    .line 606
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 608
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    .line 610
    :cond_0
    monitor-exit v0

    .line 611
    return-void

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sensorLogStart()V
    .locals 8

    .prologue
    const-string v3, "MotionRecognitionService"

    .line 555
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 556
    const-string v3, "log.path.motion.sensor"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    .line 558
    :cond_0
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 582
    :cond_1
    :goto_0
    return-void

    .line 562
    :cond_2
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    monitor-enter v3

    .line 563
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    .local v2, logFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 566
    .local v1, logDir:Ljava/io/File;
    if-eqz v1, :cond_4

    .line 567
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 568
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 571
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 572
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 573
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1b6

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 575
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    .line 576
    const-string v4, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .sensorLogStart : started - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 581
    .end local v1           #logDir:Ljava/io/File;
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v2           #logFile:Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 577
    .restart local v2       #logFile:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 578
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v4, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .sensorLogStart : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method sensorLogWrite()V
    .locals 11

    .prologue
    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 586
    .local v3, time:J
    iget-wide v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    sub-long v1, v3, v5

    .line 587
    .local v1, t:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_0

    const-wide/16 v5, 0x3e8

    cmp-long v5, v1, v5

    if-lez v5, :cond_1

    .line 588
    :cond_0
    const-wide/16 v1, 0x0

    .line 589
    :cond_1
    iput-wide v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    .line 591
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    monitor-enter v5

    .line 592
    :try_start_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    if-eqz v6, :cond_2

    .line 593
    const-string v6, "%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%d\r\n"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, logStr:Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    .end local v0           #logStr:Ljava/lang/String;
    :cond_2
    monitor-exit v5

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    .line 551
    :goto_0
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  .setLogPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void

    .line 549
    :cond_0
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/os/IBinder;)V
    .locals 9
    .parameter "binder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    iget-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v5, :cond_0

    .line 466
    :goto_0
    return-void

    .line 440
    :cond_0
    const/4 v3, 0x0

    .line 442
    .local v3, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 443
    :try_start_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 444
    .local v4, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v6, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v6, :cond_1

    .line 445
    move-object v3, v4

    .line 450
    .end local v4           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_2
    if-eqz v3, :cond_3

    .line 451
    const/4 v6, 0x0

    invoke-interface {p1, v3, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 452
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 454
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    .local v1, client:Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 457
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 460
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_1
    :try_start_2
    const-string v6, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .unregisterCallback : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", client="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 464
    .end local v1           #client:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V

    .line 465
    monitor-exit v5

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 458
    .restart local v1       #client:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public useMotionAlways(Landroid/os/IBinder;Z)V
    .locals 9
    .parameter "binder"
    .parameter "bUseAlways"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v5, "MotionRecognitionService"

    .line 469
    iget-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineIsAvailable:Z

    if-nez v5, :cond_0

    .line 495
    :goto_0
    return-void

    .line 470
    :cond_0
    const/4 v3, 0x0

    .line 472
    .local v3, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 473
    :try_start_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 474
    .local v4, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v6, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v6, :cond_1

    .line 475
    move-object v3, v4

    .line 480
    .end local v4           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_2
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    .local v1, client:Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 483
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 487
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_1
    if-eqz v3, :cond_3

    .line 488
    :try_start_2
    iput-boolean p2, v3, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    .line 489
    const-string v6, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .useMotionAlways : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v3, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", client="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :goto_2
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 494
    monitor-exit v5

    goto :goto_0

    .end local v1           #client:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 491
    .restart local v1       #client:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_3
    const-string v6, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .useMotionAlways : unregistered client, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 484
    :catch_0
    move-exception v6

    goto :goto_1
.end method
