.class Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
.super Ljava/lang/Object;
.source "SensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager$SensorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThreadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorManager$SensorThread;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager$SensorThread;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private open()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_create_queue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/SensorManager;->access$002(I)I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    const/4 v12, 0x3

    new-array v11, v12, [F

    .local v11, values:[F
    const/4 v12, 0x1

    new-array v9, v12, [I

    .local v9, status:[I
    const/4 v12, 0x1

    new-array v10, v12, [J

    .local v10, timestamp:[J
    const/4 v12, -0x8

    invoke-static {v12}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-direct/range {p0 .. p0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->open()Z

    move-result v12

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    move-object v12, v0

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    const-wide/16 v2, 0x0

    .local v2, curTime:J
    invoke-static {}, Landroid/hardware/SensorManager;->access$100()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :cond_1
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v12

    invoke-static {v12, v11, v9, v10}, Landroid/hardware/SensorManager;->sensors_data_poll(I[F[I[J)I

    move-result v6

    .local v6, sensor:I
    const/4 v12, 0x0

    aget v1, v9, v12

    .local v1, accuracy:I
    sget-object v12, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v12

    const/4 v13, -0x1

    if-eq v6, v13, :cond_2

    :try_start_1
    sget-object v13, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_2
    const/4 v13, -0x1

    if-ne v6, v13, :cond_3

    sget-object v13, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "SensorManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_sensors_data_poll() failed, we bail out: sensors="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v13

    invoke-static {v13}, Landroid/hardware/SensorManager;->sensors_destroy_queue(I)V

    const/4 v13, 0x0

    invoke-static {v13}, Landroid/hardware/SensorManager;->access$002(I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .end local v1           #accuracy:I
    .end local v2           #curTime:J
    .end local v6           #sensor:I
    :catchall_1
    move-exception v12

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    .restart local v1       #accuracy:I
    .restart local v2       #curTime:J
    .restart local v6       #sensor:I
    :cond_4
    :try_start_3
    sget-object v13, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    .local v7, sensorObject:Landroid/hardware/Sensor;
    if-eqz v7, :cond_8

    invoke-static {}, Landroid/hardware/SensorManager;->access$100()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getLegacyType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    const-string v13, "KPI-ORT-0&1"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SensorManager$SensorThread.run sensors_data_poll used "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v2

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v13, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v8, :cond_7

    sget-object v13, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager$ListenerDelegate;

    .local v5, listener:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v5, v7}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v5, v7, v11, v10, v1}, Landroid/hardware/SensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v5           #listener:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_7
    invoke-static {}, Landroid/hardware/SensorManager;->access$100()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getLegacyType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    const-string v13, "KPI-ORT-2"

    const-string v14, "SensorManager$SensorThread.run listener.onSensorChangedLocked complete"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #i:I
    .end local v8           #size:I
    :cond_8
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
