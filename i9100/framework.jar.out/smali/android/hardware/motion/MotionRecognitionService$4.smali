.class Landroid/hardware/motion/MotionRecognitionService$4;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 877
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 879
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 19
    .parameter "event"

    .prologue
    .line 882
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v18, v0

    .line 884
    .local v18, sensor:Landroid/hardware/Sensor;
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v2, v0

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-double v4, v4

    aput-wide v4, v2, v3

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v2, v0

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    aput-wide v4, v2, v3

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v2, v0

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v4, v0

    const/4 v5, 0x2

    aget v4, v4, v5

    float-to-double v4, v4

    aput-wide v4, v2, v3

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v2, v0

    iget v2, v2, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v2, v0

    iget v2, v2, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionService;->sensorLogWrite()V

    .line 897
    const/16 v17, 0x0

    .line 898
    .local v17, motion:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v2, v0

    move-object v0, v2

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18           #sensor:Landroid/hardware/Sensor;
    monitor-enter v18

    .line 899
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v2, v0

    iget-boolean v2, v2, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v2, :cond_0

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v3, v0

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v5, v0

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D
    invoke-static {v5}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v5

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v7, v0

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v7

    const/4 v8, 0x2

    aget-wide v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v9, v0

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D
    invoke-static {v9}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v9

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v11, v0

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D
    invoke-static {v11}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v11

    const/4 v12, 0x1

    aget-wide v11, v11, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v13, v0

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D
    invoke-static {v13}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v13

    const/4 v14, 0x2

    aget-wide v13, v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v15, v0

    iget v15, v15, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    move/from16 v16, v0

    #calls: Landroid/hardware/motion/MotionRecognitionService;->native_getscenario_id(DDDDDDII)I
    invoke-static/range {v2 .. v16}, Landroid/hardware/motion/MotionRecognitionService;->access$600(Landroid/hardware/motion/MotionRecognitionService;DDDDDDII)I

    move-result v17

    .line 904
    :cond_0
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v17

    #calls: Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(I)V
    invoke-static {v0, v1}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;I)V

    .line 909
    .end local v17           #motion:I
    :cond_1
    return-void

    .line 904
    .restart local v17       #motion:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
