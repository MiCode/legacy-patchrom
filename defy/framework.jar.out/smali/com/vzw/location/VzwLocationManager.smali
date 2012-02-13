.class public Lcom/vzw/location/VzwLocationManager;
.super Ljava/lang/Object;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;,
        Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;,
        Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwLocationManager"

.field public static final VZW_LBS_PROVIDER:Ljava/lang/String; = "vzw_lbs"


# instance fields
.field private final mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

.field private final mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vzw/location/VzwGpsStatus$Listener;",
            "Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Lcom/vzw/location/VzwLocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/vzw/location/IVzwLocationManager;


# direct methods
.method public constructor <init>(Lcom/vzw/location/IVzwLocationManager;)V
    .locals 3
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    new-instance v0, Lcom/vzw/location/VzwGpsStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsStatus;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    const-string v0, "VzwLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    return-void
.end method

.method private _requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 7
    .parameter "provider"
    .parameter "vzwCriteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    const-string v6, "VzwLocationManager"

    if-nez p4, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "calling thread has no looper for requestLocationUpdates()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "VzwLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_requestLocationUpdates: listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "VzwLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_requestLocationUpdates: looper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .local v1, transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    if-nez v1, :cond_1

    const-string v3, "VzwLocationManager"

    const-string v4, "_requestLocationUpdates: transport null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    invoke-direct {v1, p0, p3, p4}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .restart local v1       #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :goto_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v3, p1, p2, v1}, Lcom/vzw/location/IVzwLocationManager;->requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    monitor-exit v2

    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :goto_1
    return-void

    .restart local v1       #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :cond_1
    const-string v3, "VzwLocationManager"

    const-string v4, "_requestLocationUpdates: transport not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v2, "requestLocationUpdates: DeadObjectException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private _requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 7
    .parameter "provider"
    .parameter "vzwCriteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    const-string v6, "VzwLocationManager"

    if-nez p4, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "calling thread has no looper for requestSingleLocationUpdate()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "VzwLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_requestSingleLocationUpdate: listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "VzwLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_requestSingleLocationUpdate: looper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .local v1, transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    if-nez v1, :cond_1

    const-string v3, "VzwLocationManager"

    const-string v4, "_requestSingleLocationUpdate: transport null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    invoke-direct {v1, p0, p3, p4}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .restart local v1       #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :goto_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v3, p1, p2, v1}, Lcom/vzw/location/IVzwLocationManager;->requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    monitor-exit v2

    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :goto_1
    return-void

    .restart local v1       #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :cond_1
    const-string v3, "VzwLocationManager"

    const-string v4, "_requestSingleLocationUpdate: transport not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v2, "requestSingleLocationUpdate: DeadObjectException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/IVzwLocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    return-object v0
.end method

.method private createProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/location/LocationProvider;
    .locals 2
    .parameter "name"
    .parameter "info"

    .prologue
    new-instance v0, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;

    invoke-direct {v0, p0, p1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;-><init>(Lcom/vzw/location/VzwLocationManager;Ljava/lang/String;)V

    .local v0, provider:Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;
    const-string v1, "network"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setRequiresNetwork(Z)V

    const-string v1, "satellite"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setRequiresSatellite(Z)V

    const-string v1, "cell"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setRequiresCell(Z)V

    const-string v1, "cost"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setHasMonetaryCost(Z)V

    const-string v1, "altitude"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setSupportsAltitude(Z)V

    const-string v1, "speed"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setSupportsSpeed(Z)V

    const-string v1, "bearing"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setSupportsBearing(Z)V

    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setPowerRequirement(I)V

    const-string v1, "accuracy"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setAccuracy(I)V

    return-object v0
.end method


# virtual methods
.method public addVzwGpsStatusListener(Lcom/vzw/location/VzwGpsStatus$Listener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener==null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    :try_start_0
    new-instance v2, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Lcom/vzw/location/VzwGpsStatus$Listener;)V

    .local v2, transport:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v3, v2}, Lcom/vzw/location/IVzwLocationManager;->addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z

    move-result v1

    .local v1, result:Z
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #transport:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;
    :cond_2
    :goto_1
    move v3, v1

    goto :goto_0

    .end local v1           #result:Z
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VzwLocationManager"

    const-string v4, "RemoteException in addVzwGpsStatusListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_1
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v0, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "vzw_lbs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getBestProvider(Z)Ljava/lang/String;
    .locals 2
    .parameter "enabledOnly"

    .prologue
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .local v0, goodProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "vzw_lbs"

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, p1}, Lcom/vzw/location/IVzwLocationManager;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, info:Landroid/os/Bundle;
    if-nez v1, :cond_1

    move-object v2, v4

    .end local v1           #info:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .restart local v1       #info:Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/vzw/location/VzwLocationManager;->createProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/location/LocationProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v1           #info:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v3, "getProvider: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    goto :goto_0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 3
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationManager;->getProviders(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "getProviders: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVzwGpsDeviceStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 1
    .parameter "status"

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Lcom/vzw/location/VzwGpsDeviceStatus;

    .end local p1
    invoke-direct {p1}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwGpsDeviceStatus;->setStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    return-object p1
.end method

.method public getVzwGpsStatus(Lcom/vzw/location/VzwGpsStatus;)Lcom/vzw/location/VzwGpsStatus;
    .locals 1
    .parameter "status"

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Lcom/vzw/location/VzwGpsStatus;

    .end local p1
    invoke-direct {p1}, Lcom/vzw/location/VzwGpsStatus;-><init>()V

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwGpsStatus;->setStatus(Lcom/vzw/location/VzwGpsStatus;)V

    return-object p1
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "isProviderEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const-string v4, "VzwLocationManager"

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string v2, "VzwLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeUpdates(): listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .local v1, transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, v1}, Lcom/vzw/location/IVzwLocationManager;->removeUpdates(Lcom/vzw/location/IVzwLocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v2, "removeUpdates(): DeadObjectException"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeVzwGpsStatusListener(Lcom/vzw/location/VzwGpsStatus$Listener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    .local v1, transport:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, v1}, Lcom/vzw/location/IVzwLocationManager;->removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v3, "RemoteException in removeVzwGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 2
    .parameter "provider"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "provider"
    .parameter "listener"
    .parameter "looper"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;)V
    .locals 2
    .parameter "provider"
    .parameter "vzwCriteria"
    .parameter "listener"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vzwCriteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "provider"
    .parameter "vzwCriteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vzwCriteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 2
    .parameter "provider"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/vzw/location/VzwLocationManager;->_requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "provider"
    .parameter "listener"
    .parameter "looper"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/location/VzwLocationManager;->_requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;)V
    .locals 2
    .parameter "provider"
    .parameter "vzwCriteria"
    .parameter "listener"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vzwCriteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vzw/location/VzwLocationManager;->_requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "provider"
    .parameter "vzwCriteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vzwCriteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vzw/location/VzwLocationManager;->_requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public setVzwGpsConfigInit(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)Z
    .locals 3
    .parameter "provider"
    .parameter "configInit"

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "configInit==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/vzw/location/IVzwLocationManager;->startAuthentication(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "RemoteException in setVzwConfigInit: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
