.class Lcom/android/server/location/LocationProviderProxy$Connection;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

.field private mProvider:Landroid/location/ILocationProvider;

.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/server/location/LocationProviderProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy$Connection;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProvider()Landroid/location/ILocationProvider;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    const-string v0, "LocationProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationProviderProxy.onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    const-string v0, "LocationProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationProviderProxy.onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mProvider:Landroid/location/ILocationProvider;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 7

    .prologue
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;
    invoke-static {v3}, Lcom/android/server/location/LocationProviderProxy;->access$300(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy$Connection;

    move-result-object v3

    if-eq v3, p0, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v1

    .local v1, provider:Landroid/location/ILocationProvider;
    if-nez v1, :cond_1

    monitor-exit v2

    goto :goto_0

    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #provider:Landroid/location/ILocationProvider;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z
    invoke-static {v3}, Lcom/android/server/location/LocationProviderProxy;->access$400(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Landroid/location/ILocationProvider;->enable()V

    :cond_2
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z
    invoke-static {v3}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/location/ILocationProvider;->enableLocationTracking(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMinTime:J
    invoke-static {v3}, Lcom/android/server/location/LocationProviderProxy;->access$600(Lcom/android/server/location/LocationProviderProxy;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMinTime:J
    invoke-static {v3}, Lcom/android/server/location/LocationProviderProxy;->access$600(Lcom/android/server/location/LocationProviderProxy;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;
    invoke-static {v5}, Lcom/android/server/location/LocationProviderProxy;->access$700(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Landroid/location/ILocationProvider;->setMinTime(JLandroid/os/WorkSource;)V

    :cond_4
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/location/LocationProviderProxy;->access$800(Lcom/android/server/location/LocationProviderProxy;)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mNetworkState:I
    invoke-static {v3}, Lcom/android/server/location/LocationProviderProxy;->access$900(Lcom/android/server/location/LocationProviderProxy;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/server/location/LocationProviderProxy;->access$800(Lcom/android/server/location/LocationProviderProxy;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/location/ILocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_6

    :try_start_3
    new-instance v3, Lcom/android/internal/location/DummyLocationProvider;

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->this$0:Lcom/android/server/location/LocationProviderProxy;

    #getter for: Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/location/LocationProviderProxy;->access$1000(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/internal/location/DummyLocationProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;)V

    iput-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresNetwork()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresNetwork(Z)V

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresSatellite()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresSatellite(Z)V

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresCell()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresCell(Z)V

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->hasMonetaryCost()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/location/DummyLocationProvider;->setHasMonetaryCost(Z)V

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsAltitude()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsAltitude(Z)V

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsSpeed()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsSpeed(Z)V

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsBearing()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsBearing(Z)V

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getPowerRequirement()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/location/DummyLocationProvider;->setPowerRequirement(I)V

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getAccuracy()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/location/DummyLocationProvider;->setAccuracy(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    :goto_2
    :try_start_4
    monitor-exit v2

    goto/16 :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/location/LocationProviderProxy$Connection;->mCachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method
