.class Lcom/android/server/PowerManagerService$13;
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
    .line 3238
    iput-object p1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3271
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/high16 v7, -0x4080

    const-string v3, "PowerManagerService"

    .line 3240
    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v3

    monitor-enter v3

    .line 3242
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3243
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Light onSensorChanged : return, isScreenTurningOffLocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    monitor-exit v3

    .line 3267
    :goto_0
    return-void

    .line 3247
    :cond_0
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 3248
    .local v2, value:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3250
    .local v0, milliseconds:J
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSensorChanged: light value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$4000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3253
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)F

    move-result v4

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    .line 3254
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)F

    move-result v4

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 3257
    :cond_1
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V
    invoke-static {v4, v2}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;I)V

    .line 3266
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #milliseconds:J
    .end local v2           #value:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3260
    .restart local v0       #milliseconds:J
    .restart local v2       #value:I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v2

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$5302(Lcom/android/server/PowerManagerService;F)F

    .line 3261
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$4000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3264
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    const/high16 v5, -0x4080

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$5302(Lcom/android/server/PowerManagerService;F)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
