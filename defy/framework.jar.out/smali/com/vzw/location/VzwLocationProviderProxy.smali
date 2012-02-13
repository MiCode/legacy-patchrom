.class public Lcom/vzw/location/VzwLocationProviderProxy;
.super Ljava/lang/Object;
.source "VzwLocationProviderProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwLocationProviderProxy"


# instance fields
.field private mDead:Z

.field private mLocationTracking:Z

.field private final mName:Ljava/lang/String;

.field private final mProvider:Lcom/vzw/location/IVzwLocationProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vzw/location/IVzwLocationProvider;)V
    .locals 3
    .parameter "name"
    .parameter "provider"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mLocationTracking:Z

    iput-object p1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    :try_start_0
    invoke-interface {p2}, Lcom/vzw/location/IVzwLocationProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "linkToDeath failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mDead:Z

    goto :goto_0
.end method


# virtual methods
.method public addListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationProvider;->addListener(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "addListener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public binderDied()V
    .locals 3

    .prologue
    const-string v0, "VzwLocationProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mDead:Z

    invoke-virtual {p0}, Lcom/vzw/location/VzwLocationProviderProxy;->unlinkProvider()V

    return-void
.end method

.method public disable()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->disable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "disable failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enable()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->enable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "enable failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableLocationTracking(ZZ)V
    .locals 3
    .parameter "enable"
    .parameter "silent"

    .prologue
    iput-boolean p1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mLocationTracking:Z

    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1, p1, p2}, Lcom/vzw/location/IVzwLocationProvider;->enableLocationTracking(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "enableLocationTracking failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAccuracy()I
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->getAccuracy()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "getAccuracy failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->getPowerRequirement()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "getPowerRequirement failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 3
    .parameter "extras"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "getStatus failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatusUpdateTime()J
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->getStatusUpdateTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "getStatusUpdateTime failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public hasMonetaryCost()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->hasMonetaryCost()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "hasMonetaryCost failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mDead:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "isEnabled failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLocationTracking()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mLocationTracking:Z

    return v0
.end method

.method public removeListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationProvider;->removeListener(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "removeListener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requiresCell()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->requiresCell()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "requiresCell failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requiresNetwork()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->requiresNetwork()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "requiresNetwork failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requiresSatellite()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->requiresSatellite()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "requiresSatellite failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setConfig(Lcom/vzw/location/VzwCriteria;)V
    .locals 3
    .parameter "vzwCriteria"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationProvider;->setConfig(Lcom/vzw/location/VzwCriteria;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "setConfig failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public supportsAltitude()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->supportsAltitude()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "supportsAltitude failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supportsBearing()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->supportsBearing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "supportsBearing failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supportsSpeed()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationProvider;->supportsSpeed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "supportsSpeed failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unlinkProvider()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v0}, Lcom/vzw/location/IVzwLocationProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method public updateAuthenticationState(II)V
    .locals 3
    .parameter "clientId"
    .parameter "authState"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1, p1, p2}, Lcom/vzw/location/IVzwLocationProvider;->updateAuthenticationState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "updateAuthenticationState failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateNetworkState(I)V
    .locals 3
    .parameter "state"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationProviderProxy;->mProvider:Lcom/vzw/location/IVzwLocationProvider;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationProvider;->updateNetworkState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationProviderProxy"

    const-string v2, "updateNetworkState failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
