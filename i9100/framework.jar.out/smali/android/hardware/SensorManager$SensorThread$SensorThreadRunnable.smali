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
    .line 423
    iput-object p1, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    return-void
.end method

.method private open()Z
    .locals 1

    .prologue
    .line 430
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_create_queue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/SensorManager;->access$002(I)I

    .line 431
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 436
    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 437
    .local v22, values:[F
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 438
    .local v20, status:[I
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [J

    move-object/from16 v21, v0

    .line 439
    .local v21, timestamp:[J
    const/4 v5, -0x8

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 440
    const-string v5, "SensorManager"

    const-string v6, "=======>>>Sensor Thread RUNNING <<<========"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct/range {p0 .. p0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->open()Z

    move-result v5

    if-nez v5, :cond_0

    .line 516
    :goto_0
    return-void

    .line 446
    :cond_0
    monitor-enter p0

    .line 448
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    .line 449
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 450
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 454
    :goto_1
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->sensors_data_poll(I[F[I[J)I

    move-result v17

    .line 456
    .local v17, sensor:I
    const/4 v5, 0x0

    aget v12, v20, v5

    .line 457
    .local v12, accuracy:I
    sget-object v23, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v23

    .line 458
    const/4 v5, -0x1

    move/from16 v0, v17

    move v1, v5

    if-eq v0, v1, :cond_1

    :try_start_1
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 461
    :cond_1
    const/4 v5, -0x1

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_2

    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 463
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_sensors_data_poll() failed, we bail out: sensors="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_2
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v5

    invoke-static {v5}, Landroid/hardware/SensorManager;->sensors_destroy_queue(I)V

    .line 467
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/hardware/SensorManager;->access$002(I)I

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    .line 469
    monitor-exit v23

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v5

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 450
    .end local v12           #accuracy:I
    .end local v17           #sensor:I
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 471
    .restart local v12       #accuracy:I
    .restart local v17       #sensor:I
    :cond_3
    :try_start_3
    sget-object v5, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/hardware/Sensor;

    .line 472
    .local v18, sensorObject:Landroid/hardware/Sensor;
    if-eqz v18, :cond_8

    .line 474
    const/4 v15, 0x0

    .line 475
    .local v15, isGyroCalibrated:Z
    const/4 v13, 0x0

    .line 478
    .local v13, gyroCalibrated:[F
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 479
    .local v19, size:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move v0, v14

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 480
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 481
    .local v16, listener:Landroid/hardware/SensorManager$ListenerDelegate;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 483
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    invoke-static {}, Landroid/hardware/SensorManager;->sensors_calibration_available()I

    move-result v5

    if-eqz v5, :cond_4

    .line 484
    if-nez v15, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/SensorManager$ListenerDelegate;->getGyroCalibrationLevel()I

    move-result v5

    if-lez v5, :cond_4

    .line 485
    const/4 v15, 0x1

    .line 486
    const/16 v11, 0xa

    .line 489
    .local v11, minDelay:I
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v11

    .line 493
    const/4 v5, 0x0

    aget v5, v22, v5

    float-to-double v5, v5

    const/4 v7, 0x1

    aget v7, v22, v7

    float-to-double v7, v7

    const/4 v9, 0x2

    aget v9, v22, v9

    float-to-double v9, v9

    invoke-static/range {v5 .. v11}, Landroid/hardware/SensorManager;->sensors_calibration_get_gyro(DDDI)[F

    move-result-object v13

    .line 494
    if-eqz v13, :cond_6

    .line 502
    .end local v11           #minDelay:I
    :cond_4
    :goto_3
    if-eqz v13, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/SensorManager$ListenerDelegate;->getGyroCalibrationLevel()I

    move-result v5

    if-lez v5, :cond_7

    .line 503
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object v2, v13

    move-object/from16 v3, v21

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    .line 479
    :cond_5
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 498
    .restart local v11       #minDelay:I
    :cond_6
    const-string v5, "SensorManager"

    const-string v6, "  GYRO CAL: calibration gyro is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 508
    .end local v11           #minDelay:I
    :cond_7
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    goto :goto_4

    .line 513
    .end local v13           #gyroCalibrated:[F
    .end local v14           #i:I
    .end local v15           #isGyroCalibrated:Z
    .end local v16           #listener:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v19           #size:I
    :cond_8
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
