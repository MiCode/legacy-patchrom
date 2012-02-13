.class public interface abstract Lcom/android/server/location/LocationProviderInterface;
.super Ljava/lang/Object;
.source "LocationProviderInterface.java"


# virtual methods
.method public abstract addListener(I)V
.end method

.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract enableLocationTracking(Z)V
.end method

.method public abstract getAccuracy()I
.end method

.method public abstract getInternalState()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPowerRequirement()I
.end method

.method public abstract getStatus(Landroid/os/Bundle;)I
.end method

.method public abstract getStatusUpdateTime()J
.end method

.method public abstract hasMonetaryCost()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract meetsCriteria(Landroid/location/Criteria;)Z
.end method

.method public abstract removeListener(I)V
.end method

.method public abstract requestSingleShotFix()Z
.end method

.method public abstract requiresCell()Z
.end method

.method public abstract requiresNetwork()Z
.end method

.method public abstract requiresSatellite()Z
.end method

.method public abstract sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract setMinTime(JLandroid/os/WorkSource;)V
.end method

.method public abstract supportsAltitude()Z
.end method

.method public abstract supportsBearing()Z
.end method

.method public abstract supportsSpeed()Z
.end method

.method public abstract updateLocation(Landroid/location/Location;)V
.end method

.method public abstract updateNetworkState(ILandroid/net/NetworkInfo;)V
.end method
