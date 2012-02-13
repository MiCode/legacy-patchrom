.class Lcom/android/server/PowerManagerService$12;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16
    .parameter "event"

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .local v4, milliseconds:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v9, v0

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v10, v0

    const/4 v11, 0x0

    aget v2, v10, v11

    .local v2, distance:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    #getter for: Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)J

    move-result-wide v10

    sub-long v7, v4, v10

    .local v7, timeSinceLastEvent:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    #setter for: Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J
    invoke-static {v10, v4, v5}, Lcom/android/server/PowerManagerService;->access$6002(Lcom/android/server/PowerManagerService;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v11, v0

    #getter for: Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v6, 0x0

    .local v6, proximityTaskQueued:Z
    float-to-double v10, v2

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_3

    const/high16 v10, 0x40a0

    cmpg-float v10, v2, v10

    if-gez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    #getter for: Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v10

    cmpg-float v10, v2, v10

    if-gez v10, :cond_3

    const/4 v10, 0x1

    move v1, v10

    .local v1, active:Z
    :goto_0
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$5000()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mProximityListener.onSensorChanged active:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " timeSinceLastEvent="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v10, 0x3e8

    cmp-long v10, v7, v10

    if-gez v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    if-eqz v1, :cond_4

    const/4 v11, 0x1

    :goto_1
    #setter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v10, v11}, Lcom/android/server/PowerManagerService;->access$5102(Lcom/android/server/PowerManagerService;I)I

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$5000()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "PowerManagerService"

    const-string v11, "postDelayed for PROXIMITY_SENSOR_DELAY"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v11, v0

    #getter for: Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$6300()J

    move-result-wide v14

    add-long/2addr v12, v14

    sub-long/2addr v12, v7

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v3

    .local v3, held:Z
    if-nez v3, :cond_8

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    :cond_2
    :goto_3
    monitor-exit v9

    return-void

    .end local v1           #active:Z
    .end local v3           #held:Z
    :cond_3
    const/4 v10, 0x0

    move v1, v10

    goto/16 :goto_0

    .restart local v1       #active:Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$6300()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    const/4 v11, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v10, v11}, Lcom/android/server/PowerManagerService;->access$5102(Lcom/android/server/PowerManagerService;I)I

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$5000()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "PowerManagerService"

    const-string v11, "postDelayed for PROXIMITY_SCREENOFF_DEPLAY"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v11, v0

    #getter for: Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v11

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$6300()J

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    const/4 v11, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v10, v11}, Lcom/android/server/PowerManagerService;->access$5102(Lcom/android/server/PowerManagerService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    #calls: Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V
    invoke-static {v10, v1}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;Z)V

    goto :goto_2

    .end local v1           #active:Z
    .end local v2           #distance:F
    .end local v6           #proximityTaskQueued:Z
    .end local v7           #timeSinceLastEvent:J
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v1       #active:Z
    .restart local v2       #distance:F
    .restart local v3       #held:Z
    .restart local v6       #proximityTaskQueued:Z
    .restart local v7       #timeSinceLastEvent:J
    :cond_8
    if-eqz v3, :cond_2

    if-nez v6, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    move-object v10, v0

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
