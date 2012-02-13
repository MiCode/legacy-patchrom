.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_KPI:Z = false

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mPowerOffAnimation:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mStartShutdownTime:J

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static sSystemReady:Z

.field private static final sSystemReadySync:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRadioOffSync:Ljava/lang/Object;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sSystemReadySync:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sSystemReady:Z

    const-string v0, "debug.kpi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/app/ShutdownThread;->mStartShutdownTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ShutdownThread;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;

    return-object v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "ShutdownThread"

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-boolean v5, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v5, :cond_0

    const-string v5, "ShutdownThread"

    const-string v6, "Request to shutdown already running, returning."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :cond_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/internal/app/ShutdownThread;->mStartShutdownTime:J

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ShutdownThread;->prepare(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const-string v5, "recovery"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/media/poweroffanimation.zip"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, AnimationResource:Ljava/io/File;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v7

    .local v2, isAvailable:Z
    :goto_1
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-nez v4, :cond_6

    if-eqz v2, :cond_6

    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "bootanimation -poweroff"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0           #AnimationResource:Ljava/io/File;
    .end local v2           #isAvailable:Z
    :goto_2
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    if-nez v4, :cond_3

    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .local v3, pd:Landroid/app/ProgressDialog;
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v4, :cond_8
    const v4, 0x10402ca

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v4, 0x609001a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .end local v3           #pd:Landroid/app/ProgressDialog;
    :cond_3
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object p0, v4, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    iput-object p0, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v9, v4, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_2
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v5, v5, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v6, 0x1a

    const-string v7, "Shutdown"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_3
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v5, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v5}, Lcom/android/internal/app/ShutdownThread$2;-><init>()V

    iput-object v5, v4, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .restart local p0
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .restart local v0       #AnimationResource:Ljava/io/File;
    :cond_5
    move v2, v6

    goto/16 :goto_1

    .restart local v2       #isAvailable:Z
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v4, "exec bootanimation error = "

    invoke-static {v8, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    goto/16 :goto_2

    .end local v0           #AnimationResource:Ljava/io/File;
    .end local v2           #isAvailable:Z
    :cond_7
    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    goto/16 :goto_2

    :cond_8
    const v4, 0x104012c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v4, 0x104012d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
    .end local p0
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v8, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v9, v4, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_3
.end method

.method private prepare(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ShutdownThread$3;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 6
    .parameter "reboot"
    .parameter "reason"

    .prologue
    const-string v5, "Performing low-level shutdown..."

    const-string v4, "ShutdownThread"

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_0

    const-string v2, "KPI-SHUTDOWN-7"

    const-string v3, "Shutting down vibrator starts"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

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

    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_2

    const-string v2, "KPI-SHUTDOWN-8"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Landroid/os/Power;->shutdown()V

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v2, "Reboot failed, will attempt shutdown instead"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v2, "Failed to vibrate during shutdown."

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :cond_2
    const-string v2, "ShutdownThread"

    const-string v2, "Performing low-level shutdown..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "confirm"

    .prologue
    const-string v3, "ShutdownThread"

    sget-object v1, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_0

    const-string v2, "ShutdownThread"

    const-string v3, "Request to shutdown already running, returning."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "ShutdownThread"

    const-string v1, "Notifying thread to start radio shutdown"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104012c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104012e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .end local v0           #dialog:Landroid/app/AlertDialog;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static systemReady()V
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sSystemReadySync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sSystemReady:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

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
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v4, :cond_0

    const-string v4, "KPI-SHUTDOWN-2"

    const-string v5, "ShutdownThread.run start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v30, Lcom/android/internal/app/ShutdownThread;->sSystemReadySync:Ljava/lang/Object;

    monitor-enter v30

    :try_start_0
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->sSystemReady:Z

    if-eqz v4, :cond_e

    new-instance v7, Lcom/android/internal/app/ShutdownThread$4;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$4;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .local v7, br:Landroid/content/BroadcastReceiver;
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v4, :cond_11

    const-string v4, "KPI-SHUTDOWN-3"

    const-string v5, "Sending shutdown broadcast..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v5, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v5, :cond_12

    const-string v5, "1"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v5, :cond_13

    sget-object v5, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .local v28, reason:Ljava/lang/String;
    const-string v4, "sys.shutdown.requested"

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ShutdownThread"

    const-string v5, "Sending shutdown broadcast..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long v20, v4, v6

    .local v20, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v5, v0

    if-nez v5, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v15, v20, v5

    .local v15, delay:J
    const-wide/16 v5, 0x0

    cmp-long v5, v15, v5

    if-gtz v5, :cond_14

    const-string v5, "ShutdownThread"

    const-string v6, "Shutdown broadcast timed out"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v15           #delay:J
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v4, "ShutdownThread"

    const-string v5, "Shutting down activity manager..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v4, :cond_15

    const-string v4, "KPI-SHUTDOWN-4"

    const-string v5, "Shutting down activity manager..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .local v12, am:Landroid/app/IActivityManager;
    if-eqz v12, :cond_2

    const/16 v4, 0x2710

    :try_start_3
    invoke-interface {v12, v4}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8

    :cond_2
    :goto_5
    :try_start_4
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v4, :cond_3

    const-string v4, "KPI-SHUTDOWN-5"

    const-string v5, "Shutting down BT and Radio..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .local v26, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v4, "bluetooth"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v13

    .local v13, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v24

    .local v24, mount:Landroid/os/storage/IMountService;
    if-eqz v13, :cond_4

    :try_start_5
    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_16

    :cond_4
    const/4 v4, 0x1

    move v14, v4

    .local v14, bluetoothOff:Z
    :goto_6
    if-nez v14, :cond_5

    const-string v4, "ShutdownThread"

    const-string v5, "Disabling Bluetooth..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_7
    if-eqz v26, :cond_6

    :try_start_6
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v4

    if-nez v4, :cond_17

    :cond_6
    const/4 v4, 0x1

    move/from16 v27, v4

    .local v27, radioOff:Z
    :goto_8
    if-nez v27, :cond_7

    const-string v4, "ShutdownThread"

    const-string v5, "Turning off radio..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_7
    :goto_9
    :try_start_7
    const-string v4, "ShutdownThread"

    const-string v5, "Waiting for Bluetooth and Radio..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v23, 0x0

    .local v23, i:I
    :goto_a
    const/16 v4, 0x10

    move/from16 v0, v23

    move v1, v4

    if-ge v0, v1, :cond_a

    if-nez v14, :cond_8

    :try_start_8
    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_18

    const/4 v4, 0x1

    move v14, v4

    :cond_8
    :goto_b
    if-nez v27, :cond_9

    :try_start_9
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    move-result v4

    if-nez v4, :cond_19

    const/4 v4, 0x1

    move/from16 v27, v4

    :cond_9
    :goto_c
    if-eqz v27, :cond_1a

    if-eqz v14, :cond_1a

    :try_start_a
    const-string v4, "ShutdownThread"

    const-string v5, "Radio and Bluetooth shutdown complete."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v4, :cond_b

    const-string v4, "KPI-SHUTDOWN-6"

    const-string v5, "Shutting down mount service..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/StatusBarManager;

    .local v29, statusBar:Landroid/app/StatusBarManager;
    const/4 v4, 0x4

    move-object/from16 v0, v29

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .end local v29           #statusBar:Landroid/app/StatusBarManager;
    :cond_c
    new-instance v25, Lcom/android/internal/app/ShutdownThread$5;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$5;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .local v25, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v4, "ShutdownThread"

    const-string v5, "Shutting down MountService"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x4e20

    add-long v18, v4, v6

    .local v18, endShutTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    monitor-enter v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v24, :cond_1b

    :try_start_b
    invoke-interface/range {v24 .. v25}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :goto_d
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v5, v0

    if-nez v5, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v15, v18, v5

    .restart local v15       #delay:J
    const-wide/16 v5, 0x0

    cmp-long v5, v15, v5

    if-gtz v5, :cond_1c

    const-string v5, "ShutdownThread"

    const-string v6, "Shutdown wait timed out"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v15           #delay:J
    :cond_d
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .end local v7           #br:Landroid/content/BroadcastReceiver;
    .end local v12           #am:Landroid/app/IActivityManager;
    .end local v13           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v14           #bluetoothOff:Z
    .end local v18           #endShutTime:J
    .end local v20           #endTime:J
    .end local v23           #i:I
    .end local v24           #mount:Landroid/os/storage/IMountService;
    .end local v25           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v26           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v27           #radioOff:Z
    .end local v28           #reason:Ljava/lang/String;
    :cond_e
    :try_start_d
    monitor-exit v30
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    if-eqz v4, :cond_f

    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v15, v4

    .restart local v15       #delay:J
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/ShutdownThread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .end local v15           #delay:J
    :cond_f
    :goto_e
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-nez v4, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/internal/app/ShutdownThread;->mStartShutdownTime:J

    sub-long v30, v4, v6

    .local v30, timeTaken:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "TimeToPowerDown"

    move-object v0, v4

    move-object v1, v5

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .end local v30           #timeTaken:J
    :cond_10
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    return-void

    .restart local v7       #br:Landroid/content/BroadcastReceiver;
    :cond_11
    :try_start_f
    const-string v4, "ShutdownThread"

    const-string v5, "Sending shutdown broadcast..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7           #br:Landroid/content/BroadcastReceiver;
    :catchall_0
    move-exception v4

    monitor-exit v30
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v4

    .restart local v7       #br:Landroid/content/BroadcastReceiver;
    :cond_12
    :try_start_10
    const-string v5, "0"

    goto/16 :goto_1

    :cond_13
    const-string v5, ""
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .restart local v15       #delay:J
    .restart local v20       #endTime:J
    .restart local v28       #reason:Ljava/lang/String;
    :cond_14
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v5

    goto/16 :goto_3

    .end local v15           #delay:J
    :catchall_1
    move-exception v5

    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    throw v5

    :cond_15
    const-string v4, "ShutdownThread"

    const-string v5, "Shutting down activity manager..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .restart local v12       #am:Landroid/app/IActivityManager;
    .restart local v13       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v24       #mount:Landroid/os/storage/IMountService;
    .restart local v26       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_16
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_6

    :catch_1
    move-exception v4

    move-object/from16 v22, v4

    .local v22, ex:Landroid/os/RemoteException;
    const-string v4, "ShutdownThread"

    const-string v5, "RemoteException during bluetooth shutdown"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v14, 0x1

    .restart local v14       #bluetoothOff:Z
    goto/16 :goto_7

    .end local v22           #ex:Landroid/os/RemoteException;
    :cond_17
    const/4 v4, 0x0

    move/from16 v27, v4

    goto/16 :goto_8

    :catch_2
    move-exception v4

    move-object/from16 v22, v4

    .restart local v22       #ex:Landroid/os/RemoteException;
    const-string v4, "ShutdownThread"

    const-string v5, "RemoteException during radio shutdown"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v27, 0x1

    .restart local v27       #radioOff:Z
    goto/16 :goto_9

    .end local v22           #ex:Landroid/os/RemoteException;
    .restart local v23       #i:I
    :cond_18
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_b

    :catch_3
    move-exception v22

    .restart local v22       #ex:Landroid/os/RemoteException;
    const-string v4, "ShutdownThread"

    const-string v5, "RemoteException during bluetooth shutdown"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v14, 0x1

    goto/16 :goto_b

    .end local v22           #ex:Landroid/os/RemoteException;
    :cond_19
    const/4 v4, 0x0

    move/from16 v27, v4

    goto/16 :goto_c

    :catch_4
    move-exception v22

    .restart local v22       #ex:Landroid/os/RemoteException;
    const-string v4, "ShutdownThread"

    const-string v5, "RemoteException during radio shutdown"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v27, 0x1

    goto/16 :goto_c

    .end local v22           #ex:Landroid/os/RemoteException;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;

    move-object v4, v0

    monitor-enter v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;

    move-object v5, v0

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_9

    :goto_f
    :try_start_15
    monitor-exit v4

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_a

    :catchall_2
    move-exception v5

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    throw v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .restart local v18       #endShutTime:J
    .restart local v25       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_1b
    :try_start_17
    const-string v5, "ShutdownThread"

    const-string v6, "MountService unavailable for shutdown"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    goto/16 :goto_d

    :catch_5
    move-exception v5

    move-object/from16 v17, v5

    .local v17, e:Ljava/lang/Exception;
    :try_start_18
    const-string v5, "ShutdownThread"

    const-string v6, "Exception during MountService shutdown"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .end local v17           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v5

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    throw v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .restart local v15       #delay:J
    :cond_1c
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_6

    goto/16 :goto_d

    :catch_6
    move-exception v5

    goto/16 :goto_d

    .end local v7           #br:Landroid/content/BroadcastReceiver;
    .end local v12           #am:Landroid/app/IActivityManager;
    .end local v13           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v14           #bluetoothOff:Z
    .end local v15           #delay:J
    .end local v18           #endShutTime:J
    .end local v20           #endTime:J
    .end local v23           #i:I
    .end local v24           #mount:Landroid/os/storage/IMountService;
    .end local v25           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v26           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v27           #radioOff:Z
    .end local v28           #reason:Ljava/lang/String;
    :catch_7
    move-exception v4

    move-object/from16 v17, v4

    .restart local v17       #e:Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v5, "sleep error = "

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .end local v17           #e:Ljava/lang/Exception;
    .restart local v7       #br:Landroid/content/BroadcastReceiver;
    .restart local v12       #am:Landroid/app/IActivityManager;
    .restart local v20       #endTime:J
    .restart local v28       #reason:Ljava/lang/String;
    :catch_8
    move-exception v4

    goto/16 :goto_5

    .restart local v13       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v14       #bluetoothOff:Z
    .restart local v23       #i:I
    .restart local v24       #mount:Landroid/os/storage/IMountService;
    .restart local v26       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v27       #radioOff:Z
    :catch_9
    move-exception v5

    goto :goto_f
.end method
