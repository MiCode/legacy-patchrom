.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND:Ljava/lang/String; = "//system/media/audio/ui/PowerOff.wav"

.field private static PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String; = null

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mContext:Landroid/content/Context;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mp:Landroid/media/MediaPlayer;

.field private static sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

.field private static sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsSamsungAnimation:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    .line 93
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 94
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 95
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    .line 96
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 108
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 109
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    .line 118
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 131
    const-string v0, "/sys/devices/virtual/sec/ts"

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    .line 133
    return-void
.end method

.method private BroadcastSystemShutdown()V
    .locals 4

    .prologue
    const-string v3, "com.android.internal.policy.impl.ACTION_SHUTDOWN"

    .line 747
    const-string v1, "ShutdownThread"

    const-string v2, "com.android.internal.policy.impl.ACTION_SHUTDOWN"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.policy.impl.ACTION_SHUTDOWN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .local v0, broadcast:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 750
    return-void
.end method

.method public static IsShutDownConfirming()Z
    .locals 2

    .prologue
    .line 768
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_0
    sget-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    monitor-exit v0

    return v1

    .line 770
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static IsShutDownStarted()Z
    .locals 3

    .prologue
    .line 756
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_0
    sget-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_0

    .line 758
    const-string v1, "ShutdownThread"

    const-string/jumbo v2, "shut down already running , return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 762
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 764
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$500()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$700()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private static beginShutdownSamsungSequence(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v7, "ShutdownThread"

    .line 223
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 224
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 225
    const-string v3, "ShutdownThread"

    const-string v4, "Request to shutdown already running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    monitor-exit v2

    .line 277
    .end local p0
    :goto_0
    return-void

    .line 228
    .restart local p0
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 229
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    new-instance v1, Landroid/app/ShutdownDialog;

    invoke-direct {v1, p0}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;)V

    .line 234
    .local v1, pd:Landroid/app/ShutdownDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ShutdownDialog;->setCancelable(Z)V

    .line 235
    invoke-virtual {v1}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 237
    invoke-virtual {v1}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 238
    invoke-virtual {v1}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 242
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 244
    :try_start_1
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    :goto_1
    new-instance v2, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v2}, Lcom/android/internal/app/ShutdownThread$3;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/ShutdownDialog;->setOnAnimationEnd(Ljava/lang/Runnable;)V

    .line 256
    invoke-virtual {v1}, Landroid/app/ShutdownDialog;->show()V

    .line 260
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 261
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    iput-object p0, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 262
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 263
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    :try_start_2
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "Shutdown"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 267
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 274
    :cond_1
    :goto_2
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v3, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v3}, Lcom/android/internal/app/ShutdownThread$4;-><init>()V

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 276
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 229
    .end local v1           #pd:Landroid/app/ShutdownDialog;
    .restart local p0
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 245
    .restart local v1       #pd:Landroid/app/ShutdownDialog;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 246
    .local v0, e:Ljava/lang/InterruptedException;
    sput-object v6, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    goto :goto_1

    .line 268
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local p0
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 269
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v2, "No permission to acquire wake lock"

    invoke-static {v7, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v7, "ShutdownThread"

    .line 365
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 366
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 367
    const-string v3, "ShutdownThread"

    const-string v4, "Request to shutdown already running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    monitor-exit v2

    .line 405
    .end local p0
    :goto_0
    return-void

    .line 370
    .restart local p0
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 371
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 376
    .local v1, pd:Landroid/app/ProgressDialog;
    const v2, 0x1040148

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 377
    const v2, 0x1040149

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 379
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 380
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 386
    :cond_1
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 389
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 390
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    iput-object p0, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 391
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 392
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 394
    :try_start_1
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "Shutdown"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 396
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 402
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v3, Lcom/android/internal/app/ShutdownThread$7;

    invoke-direct {v3}, Lcom/android/internal/app/ShutdownThread$7;-><init>()V

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 404
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 371
    .end local v1           #pd:Landroid/app/ProgressDialog;
    .restart local p0
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 397
    .end local p0
    .restart local v1       #pd:Landroid/app/ProgressDialog;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 398
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v2, "No permission to acquire wake lock"

    invoke-static {v7, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 216
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 217
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 218
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 219
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .parameter "reboot"
    .parameter "reason"

    .prologue
    const-string v4, "ShutdownThread"

    .line 715
    const-string v2, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "if (reboot) <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    if-eqz p0, :cond_0

    .line 717
    const-string v2, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting, reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    const-string v2, "ShutdownThread"

    const-string v2, "Performing low-level shutdown..."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 743
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v2, "Reboot failed, will attempt shutdown instead"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 725
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 727
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 735
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 736
    :catch_1
    move-exception v2

    goto :goto_0

    .line 728
    :catch_2
    move-exception v0

    .line 730
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v2, "Failed to vibrate during shutdown."

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "confirm"

    .prologue
    const-string v4, "ShutdownThread"

    .line 146
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 148
    const-string v3, "ShutdownThread"

    const-string v4, "Request to shutdown already running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    monitor-exit v2

    .line 204
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    .line 152
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 156
    new-instance v1, Ljava/io/File;

    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    .line 159
    const-string v2, "ShutdownThread"

    const-string v2, "Notifying thread to start radio shutdown"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz p1, :cond_2

    .line 162
    const-string v2, "ShutdownThread"

    const-string v2, "########POWEROFF START WITH CONFIRM######"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040148

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104014a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 180
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v2}, Lcom/android/internal/app/ShutdownThread$2;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 192
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 152
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #f:Ljava/io/File;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 196
    .restart local v1       #f:Ljava/io/File;
    :cond_2
    const-string v2, "ShutdownThread"

    const-string v2, "########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    if-eqz v2, :cond_3

    .line 198
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 200
    :cond_3
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public static startSoundThreadForPowerOff()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const-string v11, "//system/media/audio/ui/PowerOff.wav"

    const-string v9, "ShutdownThread"

    .line 281
    const/4 v1, 0x0

    .line 283
    .local v1, bExceptionArised:Z
    :try_start_0
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    .line 284
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const-string v8, "//system/media/audio/ui/PowerOff.wav"

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 285
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 286
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 287
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    new-instance v8, Lcom/android/internal/app/ShutdownThread$5;

    invoke-direct {v8}, Lcom/android/internal/app/ShutdownThread$5;-><init>()V

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    new-instance v4, Ljava/io/File;

    const-string v7, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v4, f:Ljava/io/File;
    const-string v7, "ShutdownThread"

    const-string v7, "Finding sound file : //system/media/audio/ui/PowerOff.wav"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    .line 305
    .local v2, bFileValid:Z
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 308
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string/jumbo v7, "shutdown"

    const-string v8, "1"

    invoke-virtual {v0, v7, v8}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 311
    const-string v7, "ShutdownThread"

    const-string v7, "Sound file found"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/app/ShutdownThread$6;

    invoke-direct {v7}, Lcom/android/internal/app/ShutdownThread$6;-><init>()V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 332
    .local v5, soundThread:Ljava/lang/Thread;
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 333
    .local v6, volume:I
    if-lez v6, :cond_1

    .line 336
    new-instance v7, Ljava/util/concurrent/Semaphore;

    invoke-direct {v7, v10}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 338
    :try_start_1
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v7, :cond_0

    .line 339
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 362
    .end local v5           #soundThread:Ljava/lang/Thread;
    .end local v6           #volume:I
    :cond_1
    :goto_2
    return-void

    .line 296
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #bFileValid:Z
    .end local v4           #f:Ljava/io/File;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 297
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 298
    const/4 v1, 0x1

    goto :goto_0

    .line 341
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #bFileValid:Z
    .restart local v4       #f:Ljava/io/File;
    .restart local v5       #soundThread:Ljava/lang/Thread;
    .restart local v6       #volume:I
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 342
    .local v3, e:Ljava/lang/InterruptedException;
    const/4 v7, 0x0

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 343
    const-string v7, "ShutdownThread"

    const-string v7, "Exception occurs while sAnimationSoundEndedLock.acquire()"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 354
    .end local v3           #e:Ljava/lang/InterruptedException;
    .end local v5           #soundThread:Ljava/lang/Thread;
    .end local v6           #volume:I
    :cond_2
    if-nez v2, :cond_3

    .line 355
    const-string v7, "ShutdownThread"

    const-string v7, "Sound file not found, SoundThread is not started !"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_3
    if-eqz v1, :cond_1

    .line 359
    const-string v7, "ShutdownThread"

    const-string v7, "bExceptionArised is true, SoundThread is not started !"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 410
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 32

    .prologue
    .line 432
    const/16 v27, 0x0

    .line 435
    .local v27, out:Ljava/io/FileWriter;
    :try_start_0
    new-instance v28, Ljava/io/FileWriter;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v27           #out:Ljava/io/FileWriter;
    .local v28, out:Ljava/io/FileWriter;
    const/16 v3, 0x30

    :try_start_1
    move-object/from16 v0, v28

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    move-object/from16 v27, v28

    .line 440
    .end local v28           #out:Ljava/io/FileWriter;
    .restart local v27       #out:Ljava/io/FileWriter;
    :goto_0
    if-eqz v27, :cond_0

    .line 441
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 448
    :cond_0
    :goto_1
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v3, :cond_2

    .line 450
    :try_start_3
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 452
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v3, :cond_1

    .line 453
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 456
    const-string v3, "ShutdownThread"

    const-string/jumbo v4, "set LCD off"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_1
    const-string v3, "ShutdownThread"

    const-string v4, "animation end detected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_9

    .line 488
    :cond_2
    :goto_2
    new-instance v6, Lcom/android/internal/app/ShutdownThread$8;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$8;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 501
    .local v6, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v4, :cond_c

    const-string v4, "1"

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 502
    .local v30, reason:Ljava/lang/String;
    const-string/jumbo v3, "sys.shutdown.requested"

    move-object v0, v3

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v3, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 513
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long v20, v3, v5

    .line 517
    .local v20, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 518
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v4, v0

    if-nez v4, :cond_3

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v15, v20, v4

    .line 520
    .local v15, delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-gtz v4, :cond_e

    .line 521
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v15           #delay:J
    :cond_3
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 531
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v3, "ShutdownThread"

    const-string/jumbo v4, "sys.deviceOffReq = 1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string/jumbo v3, "sys.deviceOffReq"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v3, "activity"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v12

    .line 546
    .local v12, am:Landroid/app/IActivityManager;
    if-eqz v12, :cond_4

    .line 548
    const/16 v3, 0x2710

    :try_start_5
    invoke-interface {v12, v3}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_8

    .line 553
    :cond_4
    :goto_6
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v29

    .line 555
    .local v29, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v13

    .line 558
    .local v13, bluetooth:Landroid/bluetooth/IBluetooth;
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/wifi/WifiManager;

    .line 560
    .local v24, mWifiManager:Landroid/net/wifi/WifiManager;
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v25

    .line 563
    .local v25, mount:Landroid/os/storage/IMountService;
    const-string v3, "ShutdownThread"

    const-string v4, "before Blustoothe"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    if-eqz v13, :cond_5

    :try_start_6
    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_f

    :cond_5
    const/4 v3, 0x1

    move v14, v3

    .line 567
    .local v14, bluetoothOff:Z
    :goto_7
    if-nez v14, :cond_6

    .line 568
    const-string v3, "ShutdownThread"

    const-string v4, "Disabling Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 589
    :cond_6
    :goto_8
    if-nez v29, :cond_10

    const/4 v3, 0x1

    move v11, v3

    .line 590
    .local v11, PhoneOff:Z
    :goto_9
    :try_start_7
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneOff == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    if-nez v11, :cond_7

    .line 594
    const-string v3, "ShutdownThread"

    const-string v4, "Turning off radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v3, 0x0

    move-object/from16 v0, v29

    move v1, v3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 605
    :cond_7
    :goto_a
    const-string v3, "ShutdownThread"

    const-string v4, "Waiting for Bluetooth and Radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/16 v23, 0x0

    .local v23, i:I
    :goto_b
    const/16 v3, 0x10

    move/from16 v0, v23

    move v1, v3

    if-ge v0, v1, :cond_a

    .line 609
    if-nez v14, :cond_8

    .line 611
    :try_start_8
    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_11

    const/4 v3, 0x1

    move v14, v3

    .line 629
    :cond_8
    :goto_c
    if-nez v11, :cond_9

    .line 634
    const-string v31, ""

    .line 635
    .local v31, repPhoneOff:Ljava/lang/String;
    const-string/jumbo v3, "ril.deviceOffRes"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 637
    if-eqz v31, :cond_9

    const-string v3, "1"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 639
    const-string v3, "ShutdownThread"

    const-string v4, "PhoneOff req resp"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v11, 0x1

    .line 652
    .end local v31           #repPhoneOff:Ljava/lang/String;
    :cond_9
    if-eqz v11, :cond_12

    if-eqz v14, :cond_12

    .line 654
    const-string v3, "ShutdownThread"

    const-string v4, "Radio and Bluetooth shutdown complete."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_a
    :goto_d
    new-instance v26, Lcom/android/internal/app/ShutdownThread$9;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$9;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 677
    .local v26, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down MountService"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x4e20

    add-long v18, v3, v5

    .line 681
    .local v18, endShutTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 683
    if-eqz v25, :cond_14

    .line 684
    :try_start_9
    invoke-interface/range {v25 .. v26}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 691
    :goto_e
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v4, v0

    if-nez v4, :cond_b

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v15, v18, v4

    .line 693
    .restart local v15       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-gtz v4, :cond_15

    .line 694
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown wait timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .end local v15           #delay:J
    :cond_b
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 704
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 705
    return-void

    .line 437
    .end local v6           #br:Landroid/content/BroadcastReceiver;
    .end local v11           #PhoneOff:Z
    .end local v12           #am:Landroid/app/IActivityManager;
    .end local v13           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v14           #bluetoothOff:Z
    .end local v18           #endShutTime:J
    .end local v20           #endTime:J
    .end local v23           #i:I
    .end local v24           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v25           #mount:Landroid/os/storage/IMountService;
    .end local v26           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v29           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v30           #reason:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object/from16 v17, v3

    .line 438
    .local v17, e:Ljava/io/IOException;
    :goto_f
    :try_start_b
    const-string v3, "ShutdownThread"

    const-string v4, "IOException during FileWriter out.write(\'0\') "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 443
    .end local v17           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object/from16 v17, v3

    .line 444
    .restart local v17       #e:Ljava/io/IOException;
    const-string v3, "ShutdownThread"

    const-string v4, "IOException during FileWriter out.close() "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 501
    .end local v17           #e:Ljava/io/IOException;
    .restart local v6       #br:Landroid/content/BroadcastReceiver;
    :cond_c
    const-string v4, "0"

    goto/16 :goto_3

    :cond_d
    const-string v4, ""

    goto/16 :goto_4

    .line 525
    .restart local v15       #delay:J
    .restart local v20       #endTime:J
    .restart local v30       #reason:Ljava/lang/String;
    :cond_e
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_5

    .line 526
    :catch_2
    move-exception v4

    goto/16 :goto_5

    .line 529
    .end local v15           #delay:J
    :catchall_0
    move-exception v4

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v4

    .line 565
    .restart local v12       #am:Landroid/app/IActivityManager;
    .restart local v13       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v24       #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v25       #mount:Landroid/os/storage/IMountService;
    .restart local v29       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_f
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_7

    .line 571
    :catch_3
    move-exception v3

    move-object/from16 v22, v3

    .line 572
    .local v22, ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    const/4 v14, 0x1

    .restart local v14       #bluetoothOff:Z
    goto/16 :goto_8

    .line 589
    .end local v22           #ex:Landroid/os/RemoteException;
    :cond_10
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_9

    .line 597
    .restart local v11       #PhoneOff:Z
    :catch_4
    move-exception v3

    move-object/from16 v22, v3

    .line 598
    .restart local v22       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    const/4 v11, 0x1

    goto/16 :goto_a

    .line 611
    .end local v22           #ex:Landroid/os/RemoteException;
    .restart local v23       #i:I
    :cond_11
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_c

    .line 613
    :catch_5
    move-exception v22

    .line 614
    .restart local v22       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    const/4 v14, 0x1

    goto/16 :goto_c

    .line 659
    .end local v22           #ex:Landroid/os/RemoteException;
    :cond_12
    if-eqz v11, :cond_13

    if-eqz v14, :cond_13

    .line 661
    const-string v3, "ShutdownThread"

    const-string v4, "Radio and Bluetooth shutdown complete."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 664
    :cond_13
    const-string v3, "ShutdownThread"

    const-string v4, "before SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 666
    const-string v3, "ShutdownThread"

    const-string v4, "after SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_b

    .line 686
    .restart local v18       #endShutTime:J
    .restart local v26       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_14
    :try_start_e
    const-string v4, "ShutdownThread"

    const-string v5, "MountService unavailable for shutdown"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_e

    .line 688
    :catch_6
    move-exception v4

    move-object/from16 v17, v4

    .line 689
    .local v17, e:Ljava/lang/Exception;
    :try_start_f
    const-string v4, "ShutdownThread"

    const-string v5, "Exception during MountService shutdown"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 702
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw v4

    .line 698
    .restart local v15       #delay:J
    :cond_15
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_e

    .line 699
    :catch_7
    move-exception v4

    goto/16 :goto_e

    .line 549
    .end local v11           #PhoneOff:Z
    .end local v13           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v14           #bluetoothOff:Z
    .end local v15           #delay:J
    .end local v18           #endShutTime:J
    .end local v23           #i:I
    .end local v24           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v25           #mount:Landroid/os/storage/IMountService;
    .end local v26           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v29           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_8
    move-exception v3

    goto/16 :goto_6

    .line 483
    .end local v6           #br:Landroid/content/BroadcastReceiver;
    .end local v12           #am:Landroid/app/IActivityManager;
    .end local v20           #endTime:J
    .end local v30           #reason:Ljava/lang/String;
    :catch_9
    move-exception v3

    goto/16 :goto_2

    .line 437
    .end local v27           #out:Ljava/io/FileWriter;
    .restart local v28       #out:Ljava/io/FileWriter;
    :catch_a
    move-exception v3

    move-object/from16 v17, v3

    move-object/from16 v27, v28

    .end local v28           #out:Ljava/io/FileWriter;
    .restart local v27       #out:Ljava/io/FileWriter;
    goto/16 :goto_f
.end method
