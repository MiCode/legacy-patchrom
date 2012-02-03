.class Lcom/android/phone/AccelerometerListener$1;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AccelerometerListener;


# direct methods
.method constructor <init>(Lcom/android/phone/AccelerometerListener;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/phone/AccelerometerListener$1;->this$0:Lcom/android/phone/AccelerometerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 140
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/AccelerometerListener$1;->this$0:Lcom/android/phone/AccelerometerListener;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-double v1, v1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-double v3, v3

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    float-to-double v5, v5

    #calls: Lcom/android/phone/AccelerometerListener;->onSensorEvent(DDD)V
    invoke-static/range {v0 .. v6}, Lcom/android/phone/AccelerometerListener;->access$000(Lcom/android/phone/AccelerometerListener;DDD)V

    .line 136
    return-void
.end method
