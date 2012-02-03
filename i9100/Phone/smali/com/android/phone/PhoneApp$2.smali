.class Lcom/android/phone/PhoneApp$2;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 2148
    iput-object p1, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 2163
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 2150
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v5

    .line 2153
    .local v0, distance:F
    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    const/high16 v1, 0x40a0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1900(Lcom/android/phone/PhoneApp;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/phone/PhoneApp;->mIsProximityCloseDistance:Z

    .line 2156
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSensorChanged : active = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/PhoneApp;->mIsProximityCloseDistance:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    .line 2159
    return-void

    :cond_0
    move v1, v5

    .line 2153
    goto :goto_0
.end method
