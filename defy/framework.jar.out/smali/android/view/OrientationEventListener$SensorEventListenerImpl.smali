.class Landroid/view/OrientationEventListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/view/OrientationEventListener;


# direct methods
.method constructor <init>(Landroid/view/OrientationEventListener;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

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
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    .local v7, values:[F
    const/4 v6, -0x1

    .local v6, orientation:I
    const/4 v8, 0x0

    aget v8, v7, v8

    neg-float v1, v8

    .local v1, X:F
    aget v8, v7, v12

    neg-float v2, v8

    .local v2, Y:F
    const/4 v8, 0x2

    aget v8, v7, v8

    neg-float v3, v8

    .local v3, Z:F
    mul-float v8, v1, v1

    mul-float v9, v2, v2

    add-float v5, v8, v9

    .local v5, magnitude:F
    const/high16 v8, 0x4080

    mul-float/2addr v8, v5

    mul-float v9, v3, v3

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    const v0, 0x42652ee1

    .local v0, OneEightyOverPi:F
    neg-float v8, v2

    float-to-double v8, v8

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v4, v8, v0

    .local v4, angle:F
    const/16 v8, 0x5a

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int v6, v8, v9

    :goto_0
    const/16 v8, 0x168

    if-lt v6, v8, :cond_0

    add-int/lit16 v6, v6, -0x168

    goto :goto_0

    :cond_0
    :goto_1
    if-gez v6, :cond_1

    add-int/lit16 v6, v6, 0x168

    goto :goto_1

    .end local v0           #OneEightyOverPi:F
    .end local v4           #angle:F
    :cond_1
    iget-object v8, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    #getter for: Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;
    invoke-static {v8}, Landroid/view/OrientationEventListener;->access$000(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    #getter for: Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;
    invoke-static {v8}, Landroid/view/OrientationEventListener;->access$000(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v8

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v8, v12, v9}, Landroid/view/OrientationListener;->onSensorChanged(I[F)V

    :cond_2
    iget-object v8, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    #getter for: Landroid/view/OrientationEventListener;->mOrientation:I
    invoke-static {v8}, Landroid/view/OrientationEventListener;->access$100(Landroid/view/OrientationEventListener;)I

    move-result v8

    if-eq v6, v8, :cond_3

    iget-object v8, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    #setter for: Landroid/view/OrientationEventListener;->mOrientation:I
    invoke-static {v8, v6}, Landroid/view/OrientationEventListener;->access$102(Landroid/view/OrientationEventListener;I)I

    iget-object v8, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-virtual {v8, v6}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    :cond_3
    return-void
.end method
