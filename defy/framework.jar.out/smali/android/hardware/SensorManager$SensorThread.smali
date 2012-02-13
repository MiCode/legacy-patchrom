.class Landroid/hardware/SensorManager$SensorThread;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    }
.end annotation


# instance fields
.field mSensorsReady:Z

.field mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    return-void
.end method

.method startLocked()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    new-instance v0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;

    invoke-direct {v0, p0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;-><init>(Landroid/hardware/SensorManager$SensorThread;)V

    .local v0, runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    new-instance v1, Ljava/lang/Thread;

    const-class v2, Landroid/hardware/SensorManager$SensorThread;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-boolean v2, p0, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0           #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .end local v1           #thread:Ljava/lang/Thread;
    :catch_0
    move-exception v2

    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    return v2

    .restart local v0       #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .restart local v1       #thread:Ljava/lang/Thread;
    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-object v1, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .end local v0           #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method
