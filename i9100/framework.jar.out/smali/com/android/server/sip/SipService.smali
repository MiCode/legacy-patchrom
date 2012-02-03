.class public final Lcom/android/server/sip/SipService;
.super Landroid/net/sip/ISipService$Stub;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipService$MyExecutor;,
        Lcom/android/server/sip/SipService$MyEventComparator;,
        Lcom/android/server/sip/SipService$MyEvent;,
        Lcom/android/server/sip/SipService$WakeupTimer;,
        Lcom/android/server/sip/SipService$ConnectivityReceiver;,
        Lcom/android/server/sip/SipService$AutoRegistrationProcess;,
        Lcom/android/server/sip/SipService$KeepAliveProcess;,
        Lcom/android/server/sip/SipService$WifiScanProcess;,
        Lcom/android/server/sip/SipService$SipSessionGroupExt;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DEBUGV:Z = false

.field private static final DEBUG_TIMER:Z = false

.field private static final EXPIRY_TIME:I = 0xe10

.field private static final MIN_EXPIRY_TIME:I = 0x3c

.field private static final SHORT_EXPIRY_TIME:I = 0xa

.field static final TAG:Ljava/lang/String; = "SipService"


# instance fields
.field private mConnected:Z

.field private mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

.field private mLocalIp:Ljava/lang/String;

.field private mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

.field private mNetworkType:Ljava/lang/String;

.field private mPendingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/sip/ISipSession;",
            ">;"
        }
    .end annotation
.end field

.field private mSipGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sip/SipService$SipSessionGroupExt;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Lcom/android/server/sip/SipService$WakeupTimer;

.field private mWifiEnabled:Z

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiOnly:Z

.field private mWifiScanProcess:Lcom/android/server/sip/SipService$WifiScanProcess;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/net/sip/ISipService$Stub;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    .line 123
    new-instance v0, Lcom/android/server/sip/SipService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipService$1;-><init>(Lcom/android/server/sip/SipService;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    iput-object p1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    .line 116
    new-instance v1, Lcom/android/server/sip/SipWakeLock;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-direct {v1, v0}, Lcom/android/server/sip/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v1, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    .line 119
    new-instance v0, Lcom/android/server/sip/SipService$WakeupTimer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipService$WakeupTimer;-><init>(Lcom/android/server/sip/SipService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipService$WakeupTimer;

    .line 120
    invoke-static {p1}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService;->mWifiOnly:Z

    .line 121
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/sip/SipService;Landroid/net/sip/ISipSession;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->addPendingSession(Landroid/net/sip/ISipSession;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/sip/SipService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/sip/SipService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/sip/SipService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$WakeupTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipService$WakeupTimer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->getExecutor()Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/sip/SipService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/sip/SipService;->mWifiOnly:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/sip/SipService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->onConnectivityChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/sip/SipService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->anyOpenedToReceiveCalls()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/android/server/sip/SipService;->createLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sip/SipService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->grabWifiLock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/sip/SipService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->releaseWifiLock()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/sip/SipService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/sip/SipService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/sip/SipService;->mConnected:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addPendingSession(Landroid/net/sip/ISipSession;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->cleanUpPendingSessions()V

    .line 460
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    monitor-exit p0

    return-void

    .line 462
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 464
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "SipService"

    const-string v2, "addPendingSession()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 459
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private anyOpenedToReceiveCalls()Z
    .locals 3

    .prologue
    .line 377
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 378
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isOpenedToReceiveCalls()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 380
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .locals 4
    .parameter "ringingGroup"
    .parameter "ringingSession"

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, callId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 483
    .local v1, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eq v1, p1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->containsSession(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    const/4 v3, 0x1

    .line 490
    .end local v1           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 481
    .end local v0           #callId:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private cleanUpPendingSessions()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 469
    iget-object v5, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Map$Entry;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 472
    .local v1, entries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/util/Map$Entry;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 473
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/sip/ISipSession;

    invoke-interface {v5}, Landroid/net/sip/ISipSession;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 474
    iget-object v5, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 477
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    :cond_1
    return-void
.end method

.method private createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .locals 4
    .parameter "localProfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 332
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_1

    .line 333
    new-instance v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-direct {v0, p0, p1, v3, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    .line 334
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->notifyProfileAdded(Landroid/net/sip/SipProfile;)V

    .line 339
    :cond_0
    return-object v0

    .line 336
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    new-instance v2, Ljavax/sip/SipException;

    const-string/jumbo v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createGroup(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .locals 4
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 347
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eqz v0, :cond_1

    .line 348
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    new-instance v2, Ljavax/sip/SipException;

    const-string/jumbo v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 351
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setIncomingCallPendingIntent(Landroid/app/PendingIntent;)V

    .line 352
    invoke-virtual {v0, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 359
    :goto_0
    return-object v0

    .line 354
    :cond_1
    new-instance v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    .line 356
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->notifyProfileAdded(Landroid/net/sip/SipProfile;)V

    goto :goto_0
.end method

.method private static createLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 1425
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipService.Executor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1426
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1427
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method private determineLocalIp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 318
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    .line 319
    .local v1, s:Ljava/net/DatagramSocket;
    const-string v2, "192.168.1.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 320
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 324
    .end local v1           #s:Ljava/net/DatagramSocket;
    :goto_0
    return-object v2

    .line 321
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 324
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getExecutor()Lcom/android/server/sip/SipService$MyExecutor;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipService$MyExecutor;-><init>(Lcom/android/server/sip/SipService;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    return-object v0
.end method

.method private grabWifiLock()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "SipService"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 389
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 390
    iget-boolean v0, p0, Lcom/android/server/sip/SipService;->mConnected:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->startWifiScanner()V

    .line 392
    :cond_0
    return-void
.end method

.method private isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z
    .locals 3
    .parameter "group"

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 223
    .local v0, profile:Landroid/net/sip/SipProfile;
    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z
    .locals 1
    .parameter "group"

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->isCallerRadio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCallerRadio()Z
    .locals 2

    .prologue
    .line 231
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyProfileAdded(Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "localProfile"

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_ADD_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android:localSipUri"

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 367
    return-void
.end method

.method private notifyProfileRemoved(Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "localProfile"

    .prologue
    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_REMOVE_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android:localSipUri"

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method private declared-synchronized onConnectivityChanged(Ljava/lang/String;Z)V
    .locals 13
    .parameter "type"
    .parameter "connected"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v9, "WIFI"

    .line 422
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/server/sip/SipService;->mNetworkType:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 423
    .local v4, sameType:Z
    if-nez v4, :cond_1

    if-nez p2, :cond_1

    .line 455
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 425
    :cond_1
    :try_start_1
    const-string v9, "WIFI"

    iget-object v10, p0, Lcom/android/server/sip/SipService;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 426
    .local v6, wasWifi:Z
    const-string v9, "WIFI"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 427
    .local v3, isWifi:Z
    if-eqz v3, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    if-eqz v6, :cond_4

    if-nez v4, :cond_4

    :cond_3
    move v7, v12

    .line 428
    .local v7, wifiOff:Z
    :goto_1
    if-eqz v3, :cond_5

    if-eqz p2, :cond_5

    move v8, v12

    .line 431
    .local v8, wifiOn:Z
    :goto_2
    :try_start_2
    iget-boolean v5, p0, Lcom/android/server/sip/SipService;->mConnected:Z

    .line 432
    .local v5, wasConnected:Z
    iput-object p1, p0, Lcom/android/server/sip/SipService;->mNetworkType:Ljava/lang/String;

    .line 433
    iput-boolean p2, p0, Lcom/android/server/sip/SipService;->mConnected:Z

    .line 435
    if-eqz v5, :cond_6

    .line 436
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 437
    iget-object v9, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 438
    .local v1, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 452
    .end local v1           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #wasConnected:Z
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 453
    .local v0, e:Ljavax/sip/SipException;
    :try_start_3
    const-string v9, "SipService"

    const-string/jumbo v10, "onConnectivityChanged()"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 422
    .end local v0           #e:Ljavax/sip/SipException;
    .end local v3           #isWifi:Z
    .end local v4           #sameType:Z
    .end local v6           #wasWifi:Z
    .end local v7           #wifiOff:Z
    .end local v8           #wifiOn:Z
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .restart local v3       #isWifi:Z
    .restart local v4       #sameType:Z
    .restart local v6       #wasWifi:Z
    :cond_4
    move v7, v11

    .line 427
    goto :goto_1

    .restart local v7       #wifiOff:Z
    :cond_5
    move v8, v11

    .line 428
    goto :goto_2

    .line 442
    .restart local v5       #wasConnected:Z
    .restart local v8       #wifiOn:Z
    :cond_6
    if-eqz p2, :cond_8

    .line 443
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->determineLocalIp()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 444
    iget-object v9, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 445
    .restart local v1       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V

    goto :goto_4

    .line 447
    .end local v1           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_7
    if-eqz v3, :cond_0

    iget-object v9, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v9, :cond_0

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->stopWifiScanner()V

    goto/16 :goto_0

    .line 449
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_8
    iget-object v9, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    invoke-virtual {v9}, Lcom/android/server/sip/SipWakeLock;->reset()V

    .line 450
    if-eqz v3, :cond_0

    iget-object v9, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v9, :cond_0

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->startWifiScanner()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method private releaseWifiLock()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 399
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->stopWifiScanner()V

    .line 401
    :cond_0
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v0, "sip"

    new-instance v1, Lcom/android/server/sip/SipService;

    invoke-direct {v1, p0}, Lcom/android/server/sip/SipService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.sip.SIP_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    :cond_0
    return-void
.end method

.method private declared-synchronized startWifiScanner()V
    .locals 1

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiScanProcess:Lcom/android/server/sip/SipService$WifiScanProcess;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lcom/android/server/sip/SipService$WifiScanProcess;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipService$WifiScanProcess;-><init>(Lcom/android/server/sip/SipService;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mWifiScanProcess:Lcom/android/server/sip/SipService$WifiScanProcess;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiScanProcess:Lcom/android/server/sip/SipService$WifiScanProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$WifiScanProcess;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopWifiScanner()V
    .locals 1

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiScanProcess:Lcom/android/server/sip/SipService$WifiScanProcess;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiScanProcess:Lcom/android/server/sip/SipService$WifiScanProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$WifiScanProcess;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_0
    monitor-exit p0

    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    return-void
.end method


# virtual methods
.method public declared-synchronized close(Ljava/lang/String;)V
    .locals 4
    .parameter "localProfileUri"

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 239
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    const-string v1, "SipService"

    const-string/jumbo v2, "only creator or radio can close this profile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 244
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 245
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->notifyProfileRemoved(Landroid/net/sip/SipProfile;)V

    .line 246
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->close()V

    .line 248
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->anyOpenedToReceiveCalls()Z

    move-result v1

    if-nez v1, :cond_3

    .line 249
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->releaseWifiLock()V

    .line 250
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    invoke-virtual {v1}, Lcom/android/server/sip/SipWakeLock;->reset()V

    .line 252
    :cond_3
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->unregisterReceivers()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    .locals 6
    .parameter "localProfile"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    .line 299
    iget-boolean v2, p0, Lcom/android/server/sip/SipService;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    move-object v2, v5

    .line 305
    :goto_0
    monitor-exit p0

    return-object v2

    .line 301
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-result-object v1

    .line 302
    .local v1, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v1, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 303
    .end local v1           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljavax/sip/SipException;
    move-object v2, v5

    .line 305
    goto :goto_0

    .line 296
    .end local v0           #e:Ljavax/sip/SipException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getListOfProfiles()[Landroid/net/sip/SipProfile;
    .locals 7

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.USE_SIP"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->isCallerRadio()Z

    move-result v2

    .line 170
    .local v2, isCallerRadio:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v3, profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    iget-object v4, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 172
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isCallerRadio:Z
    .end local v3           #profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 176
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #isCallerRadio:Z
    .restart local v3       #profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/sip/SipProfile;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/sip/SipProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4
.end method

.method public declared-synchronized getPendingSession(Ljava/lang/String;)Landroid/net/sip/ISipSession;
    .locals 4
    .parameter "callId"

    .prologue
    const/4 v3, 0x0

    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    if-nez p1, :cond_0

    move-object v0, v3

    .line 313
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/ISipSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpened(Ljava/lang/String;)Z
    .locals 5
    .parameter "localProfileUri"

    .prologue
    const/4 v4, 0x0

    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    move v1, v4

    .line 264
    :goto_0
    monitor-exit p0

    return v1

    .line 260
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    const/4 v1, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const-string v1, "SipService"

    const-string/jumbo v2, "only creator or radio can query on the profile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    .line 264
    goto :goto_0

    .line 256
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isRegistered(Ljava/lang/String;)Z
    .locals 5
    .parameter "localProfileUri"

    .prologue
    const/4 v4, 0x0

    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    move v1, v4

    .line 277
    :goto_0
    monitor-exit p0

    return v1

    .line 273
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isRegistered()Z

    move-result v1

    goto :goto_0

    .line 276
    :cond_1
    const-string v1, "SipService"

    const-string/jumbo v2, "only creator or radio can query on the profile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    .line 277
    goto :goto_0

    .line 269
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized open(Landroid/net/sip/SipProfile;)V
    .locals 5
    .parameter "localProfile"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/net/sip/SipProfile;->setCallingUid(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :try_start_1
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 185
    .local v0, addingFirstProfile:Z
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 186
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->registerReceivers()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    .end local v0           #addingFirstProfile:Z
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 188
    .local v1, e:Ljavax/sip/SipException;
    :try_start_2
    const-string v2, "SipService"

    const-string/jumbo v3, "openToMakeCalls()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 180
    .end local v1           #e:Ljavax/sip/SipException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V
    .locals 6
    .parameter "localProfile"
    .parameter "incomingCallPendingIntent"
    .parameter "listener"

    .prologue
    const-string v3, "SipService"

    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.USE_SIP"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    .line 199
    if-nez p2, :cond_1

    .line 200
    const-string v3, "SipService"

    const-string v4, "incomingCallPendingIntent cannot be null; the profile is not opened"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 207
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 208
    .local v0, addingFirstProfile:Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-result-object v2

    .line 210
    .local v2, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->registerReceivers()V

    .line 211
    :cond_2
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-virtual {v2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->openToReceiveCalls()V

    .line 213
    iget-boolean v3, p0, Lcom/android/server/sip/SipService;->mWifiEnabled:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->grabWifiLock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 215
    .end local v0           #addingFirstProfile:Z
    .end local v2           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 216
    .local v1, e:Ljavax/sip/SipException;
    :try_start_2
    const-string v3, "SipService"

    const-string/jumbo v4, "openToReceiveCalls()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 196
    .end local v1           #e:Ljavax/sip/SipException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;)V
    .locals 4
    .parameter "localProfileUri"
    .parameter "listener"

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .local v0, group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_0

    .line 292
    :goto_0
    monitor-exit p0

    return-void

    .line 287
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {v0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    .end local v0           #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 290
    .restart local v0       #group:Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_1
    :try_start_2
    const-string v1, "SipService"

    const-string/jumbo v2, "only creator can set listener on the profile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
