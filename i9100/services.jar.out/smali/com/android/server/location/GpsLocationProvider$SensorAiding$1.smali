.class Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$SensorAiding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .locals 0
    .parameter

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 2125
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #setter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I
    invoke-static {v0, p2}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$4502(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I

    .line 2129
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2132
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2133
    .local v0, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 2134
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$4500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2135
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #setter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$4502(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I

    .line 2140
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$4600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 2141
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$4600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 2142
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$4600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 2143
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccRecent:[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$4600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mAccAccuracy:I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$4500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 2147
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyroSupported:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$4700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mLPPIsInStop:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$4800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 2149
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$1;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeSensorPacket()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$4900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    .line 2152
    :cond_2
    return-void
.end method
