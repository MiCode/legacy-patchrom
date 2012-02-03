.class Landroid/hardware/SensorManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final NUMBEROFHANDLE:I

.field private mDelay:[I

.field public mFirstEvent:Landroid/util/SparseBooleanArray;

.field private mGyroCalibrationLevel:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastDelivery:[J

.field public mSensorAccuracies:Landroid/util/SparseIntArray;

.field final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field public mSensors:Landroid/util/SparseBooleanArray;

.field private mValuesPool:Landroid/hardware/SensorEvent;

.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    .locals 5
    .parameter
    .parameter "listener"
    .parameter "sensor"
    .parameter "handler"

    .prologue
    const/16 v4, 0x64

    .line 537
    iput-object p1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    .line 527
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    .line 528
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    .line 529
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    .line 531
    iput v4, p0, Landroid/hardware/SensorManager$ListenerDelegate;->NUMBEROFHANDLE:I

    .line 532
    new-array v2, v4, [I

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    .line 533
    new-array v2, v4, [J

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mLastDelivery:[J

    .line 535
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mGyroCalibrationLevel:I

    .line 538
    iput-object p2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 539
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, v2

    .line 542
    .local v1, looper:Landroid/os/Looper;
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 543
    iget-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    const v3, 0x7fffffff

    aput v3, v2, v0

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 539
    .end local v0           #i:I
    .end local v1           #looper:Landroid/os/Looper;
    :cond_0
    iget-object v2, p1, Landroid/hardware/SensorManager;->mMainLooper:Landroid/os/Looper;

    move-object v1, v2

    goto :goto_0

    .line 548
    .restart local v0       #i:I
    .restart local v1       #looper:Landroid/os/Looper;
    :cond_1
    new-instance v2, Landroid/hardware/SensorManager$ListenerDelegate$1;

    invoke-direct {v2, p0, v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate$1;-><init>(Landroid/hardware/SensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/SensorManager;)V

    iput-object v2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 578
    invoke-virtual {p0, p3}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 579
    return-void
.end method


# virtual methods
.method addSensor(Landroid/hardware/Sensor;)V
    .locals 3
    .parameter "sensor"

    .prologue
    .line 614
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 615
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    return-void
.end method

.method protected createSensorEvent()Landroid/hardware/SensorEvent;
    .locals 2

    .prologue
    .line 583
    new-instance v0, Landroid/hardware/SensorEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    return-object v0
.end method

.method getDelay(Landroid/hardware/Sensor;)I
    .locals 2
    .parameter "sensor"

    .prologue
    .line 637
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method protected getFromPool()Landroid/hardware/SensorEvent;
    .locals 2

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, t:Landroid/hardware/SensorEvent;
    monitor-enter p0

    .line 590
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mValuesPool:Landroid/hardware/SensorEvent;

    .line 591
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mValuesPool:Landroid/hardware/SensorEvent;

    .line 592
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    if-nez v0, :cond_0

    .line 595
    invoke-virtual {p0}, Landroid/hardware/SensorManager$ListenerDelegate;->createSensorEvent()Landroid/hardware/SensorEvent;

    move-result-object v0

    .line 597
    :cond_0
    return-object v0

    .line 592
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getGyroCalibrationLevel()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mGyroCalibrationLevel:I

    return v0
.end method

.method getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method getSensors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasSensor(Landroid/hardware/Sensor;)Z
    .locals 2
    .parameter "sensor"

    .prologue
    .line 623
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V
    .locals 10
    .parameter "sensor"
    .parameter "values"
    .parameter "timestamp"
    .parameter "accuracy"

    .prologue
    .line 649
    invoke-virtual {p0}, Landroid/hardware/SensorManager$ListenerDelegate;->getFromPool()Landroid/hardware/SensorEvent;

    move-result-object v2

    .line 650
    .local v2, t:Landroid/hardware/SensorEvent;
    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    .line 651
    .local v5, v:[F
    const-wide/16 v3, 0x0

    .line 652
    .local v3, timeAfterLastDelivery:J
    const/16 v0, 0x63

    .line 654
    .local v0, handle:I
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, p2, v7

    aput v7, v5, v6

    .line 655
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, p2, v7

    aput v7, v5, v6

    .line 656
    const/4 v6, 0x2

    const/4 v7, 0x2

    aget v7, p2, v7

    aput v7, v5, v6

    .line 658
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    const/16 v7, 0x64

    if-gt v6, v7, :cond_3

    .line 659
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 665
    :goto_0
    const/4 v6, 0x0

    aget-wide v6, p3, v6

    iget-object v8, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mLastDelivery:[J

    aget-wide v8, v8, v0

    sub-long v3, v6, v8

    .line 666
    long-to-float v6, v3

    iget-object v7, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    aget v7, v7, v0

    mul-int/lit16 v7, v7, 0x3e8

    int-to-float v7, v7

    const/high16 v8, 0x3f40

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-gez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-ltz v6, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    const/16 v7, 0x2710

    if-gt v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 675
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 676
    const/4 v6, 0x0

    aget v6, v5, v6

    float-to-int v6, v6

    if-lez v6, :cond_4

    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proximity, val = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  [far]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_1
    :goto_1
    const/4 v6, 0x0

    aget-wide v6, p3, v6

    iput-wide v6, v2, Landroid/hardware/SensorEvent;->timestamp:J

    .line 681
    iput p4, v2, Landroid/hardware/SensorEvent;->accuracy:I

    .line 682
    iput-object p1, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 683
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 684
    .local v1, msg:Landroid/os/Message;
    const/4 v6, 0x0

    iput v6, v1, Landroid/os/Message;->what:I

    .line 685
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 686
    iget-object v6, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 687
    iget-object v6, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mLastDelivery:[J

    const/4 v7, 0x0

    aget-wide v7, p3, v7

    aput-wide v7, v6, v0

    .line 692
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    return-void

    .line 661
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    rem-int/lit8 v0, v6, 0x64

    goto/16 :goto_0

    .line 677
    :cond_4
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proximity, val = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  [close]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method removeSensor(Landroid/hardware/Sensor;)I
    .locals 2
    .parameter "sensor"

    .prologue
    .line 618
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 619
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 620
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

.method protected returnToPool(Landroid/hardware/SensorEvent;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 601
    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mValuesPool:Landroid/hardware/SensorEvent;

    if-nez v0, :cond_0

    .line 604
    iput-object p1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mValuesPool:Landroid/hardware/SensorEvent;

    .line 606
    :cond_0
    monitor-exit p0

    .line 607
    return-void

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDelay(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 633
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    aput p2, v0, v1

    .line 634
    return-void
.end method

.method setGyroCalibrationLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 642
    iput p1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mGyroCalibrationLevel:I

    .line 643
    return-void
.end method
