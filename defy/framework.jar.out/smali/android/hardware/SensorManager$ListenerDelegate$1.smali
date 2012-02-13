.class Landroid/hardware/SensorManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SensorManager$ListenerDelegate;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/SensorManager$ListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/SensorManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    iput-object p1, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iput-object p3, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->val$this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/SensorEvent;

    .local v2, t:Landroid/hardware/SensorEvent;
    iget-object v3, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    .local v1, handle:I
    iget-object v3, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v3, v2}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager$ListenerDelegate;->returnToPool(Landroid/hardware/SensorEvent;)V

    return-void

    :pswitch_0
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .local v0, accuracy:I
    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v4, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v5, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v3, v4, v5}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
