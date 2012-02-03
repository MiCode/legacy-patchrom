.class public Lcom/android/server/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationProviderProxy$1;,
        Lcom/android/server/location/LocationProviderProxy$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private mLocationTracking:Z

.field private mMinTime:J

.field private mMinTimeSource:Landroid/os/WorkSource;

.field private final mMutex:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkState:I

.field private mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "serviceName"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/android/server/location/LocationProviderProxy$Connection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/LocationProviderProxy$Connection;-><init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/server/location/LocationProviderProxy$1;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    .line 54
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    .line 55
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    .line 57
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    .line 64
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    .line 67
    iput-object p4, p0, Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;

    .line 68
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/location/LocationProviderProxy$Connection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/LocationProviderProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/LocationProviderProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/location/LocationProviderProxy;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/location/LocationProviderProxy;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/location/LocationProviderProxy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkState:I

    return v0
.end method

.method private getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy$Connection;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 451
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 453
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->addListener(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 457
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 458
    return-void

    .line 457
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 454
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 303
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 304
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 306
    :try_start_1
    invoke-interface {v0}, Landroid/location/ILocationProvider;->disable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 311
    return-void

    .line 310
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 307
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 290
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 291
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 293
    :try_start_1
    invoke-interface {v0}, Landroid/location/ILocationProvider;->enable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 298
    return-void

    .line 297
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 294
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableLocationTracking(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 369
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    .line 371
    if-nez p1, :cond_0

    .line 372
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    .line 373
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->clear()V

    .line 375
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 376
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_1

    .line 378
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->enableLocationTracking(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 383
    return-void

    .line 382
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 379
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAccuracy()I
    .locals 2

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 248
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->getAccuracy()I

    move-result v1

    .line 251
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 349
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v3}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v1

    .line 351
    .local v1, provider:Landroid/location/ILocationProvider;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    if-eqz v1, :cond_0

    .line 354
    :try_start_1
    invoke-interface {v1}, Landroid/location/ILocationProvider;->getInternalState()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 359
    :goto_0
    return-object v2

    .line 351
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 355
    .restart local v1       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationProviderProxy"

    const-string v3, "getInternalState failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMinTime()J
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    monitor-exit v0

    return-wide v1

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 239
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->getPowerRequirement()I

    move-result v1

    .line 242
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 3
    .parameter "extras"

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v0

    .line 323
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    if-eqz v0, :cond_0

    .line 326
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 330
    :goto_0
    return v1

    .line 323
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 327
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    .line 330
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatusUpdateTime()J
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;

    move-result-object v0

    .line 337
    .local v0, provider:Landroid/location/ILocationProvider;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    if-eqz v0, :cond_0

    .line 340
    :try_start_1
    invoke-interface {v0}, Landroid/location/ILocationProvider;->getStatusUpdateTime()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    .line 344
    :goto_0
    return-wide v1

    .line 337
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 341
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v1

    .line 344
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public hasMonetaryCost()Z
    .locals 2

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 203
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->hasMonetaryCost()Z

    move-result v1

    .line 206
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLocationTracking()Z
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mLocationTracking:Z

    monitor-exit v0

    return v1

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 5
    .parameter "criteria"

    .prologue
    const/4 v4, 0x0

    .line 256
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 257
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v3}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 258
    .local v1, provider:Landroid/location/ILocationProvider;
    if-eqz v1, :cond_0

    .line 260
    :try_start_1
    invoke-interface {v1, p1}, Landroid/location/ILocationProvider;->meetsCriteria(Landroid/location/Criteria;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    :try_start_2
    monitor-exit v2

    move v2, v3

    .line 284
    :goto_0
    return v2

    .line 261
    :catch_0
    move-exception v3

    .line 264
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->getAccuracy()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v2, v4

    .line 268
    goto :goto_0

    .line 264
    .end local v1           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 270
    .restart local v1       #provider:Landroid/location/ILocationProvider;
    :cond_1
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    .line 271
    .local v0, criteriaPower:I
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->getPowerRequirement()I

    move-result v2

    if-ge v0, v2, :cond_2

    move v2, v4

    .line 273
    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p1}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->supportsAltitude()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 276
    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual {p1}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->supportsSpeed()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 279
    goto :goto_0

    .line 281
    :cond_4
    invoke-virtual {p1}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/location/LocationProviderProxy;->supportsBearing()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    .line 282
    goto :goto_0

    .line 284
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public reconnect()V
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 78
    new-instance v1, Lcom/android/server/location/LocationProviderProxy$Connection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/LocationProviderProxy$Connection;-><init>(Lcom/android/server/location/LocationProviderProxy;Lcom/android/server/location/LocationProviderProxy$1;)V

    iput-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    .line 79
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 463
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 465
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->removeListener(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 469
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 470
    return-void

    .line 469
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 466
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public requestSingleShotFix()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public requiresCell()Z
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 194
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresCell()Z

    move-result v1

    .line 197
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requiresNetwork()Z
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 176
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresNetwork()Z

    move-result v1

    .line 179
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requiresSatellite()Z
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 185
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->requiresSatellite()Z

    move-result v1

    .line 188
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 438
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 440
    :try_start_1
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :try_start_2
    monitor-exit v1

    move v1, v2

    .line 445
    :goto_0
    return v1

    .line 441
    :catch_0
    move-exception v2

    .line 444
    :cond_0
    monitor-exit v1

    .line 445
    const/4 v1, 0x0

    goto :goto_0

    .line 444
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 3
    .parameter "minTime"
    .parameter "ws"

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    iput-wide p1, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTime:J

    .line 398
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mMinTimeSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p3}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 399
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 400
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 402
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationProvider;->setMinTime(JLandroid/os/WorkSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 407
    return-void

    .line 406
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 403
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public supportsAltitude()Z
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 212
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsAltitude()Z

    move-result v1

    .line 215
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supportsBearing()Z
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 230
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsBearing()Z

    move-result v1

    .line 233
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supportsSpeed()Z
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getCachedAttributes()Lcom/android/internal/location/DummyLocationProvider;

    move-result-object v0

    .line 221
    .local v0, cachedAttributes:Lcom/android/internal/location/DummyLocationProvider;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/android/internal/location/DummyLocationProvider;->supportsSpeed()Z

    move-result v1

    .line 224
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 426
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 428
    :try_start_1
    invoke-interface {v0, p1}, Landroid/location/ILocationProvider;->updateLocation(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 432
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 433
    return-void

    .line 432
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 429
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 3
    .parameter "state"
    .parameter "info"

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    iput p1, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkState:I

    .line 412
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 413
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceConnection:Lcom/android/server/location/LocationProviderProxy$Connection;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy$Connection;->getProvider()Landroid/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 414
    .local v0, provider:Landroid/location/ILocationProvider;
    if-eqz v0, :cond_0

    .line 416
    :try_start_1
    invoke-interface {v0, p1, p2}, Landroid/location/ILocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 420
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 421
    return-void

    .line 420
    .end local v0           #provider:Landroid/location/ILocationProvider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 417
    .restart local v0       #provider:Landroid/location/ILocationProvider;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
