.class Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;
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
    .line 2208
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 2210
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #setter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I
    invoke-static {v0, p2}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5402(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I

    .line 2214
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2217
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2218
    .local v0, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2219
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2220
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #setter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5402(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I

    .line 2225
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 2226
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 2227
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 2228
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 2231
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeSensorPacket()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$4900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    .line 2233
    :cond_1
    return-void
.end method
