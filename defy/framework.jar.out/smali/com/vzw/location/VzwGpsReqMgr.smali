.class Lcom/vzw/location/VzwGpsReqMgr;
.super Ljava/lang/Object;
.source "VzwGpsReqMgr.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VzwGpsReqMgr"


# instance fields
.field private activeConfig:Lcom/vzw/location/VzwCriteria;

.field appSessionQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vzw/location/VzwGpsAppSession;",
            ">;"
        }
    .end annotation
.end field

.field private dataAvl:Z

.field locListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vzw/location/VzwGpsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

.field mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

.field private mPendingBroadcasts:I

.field mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final nLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/vzw/location/IVzwGpsStatusProvider;Lcom/vzw/location/VzwLocationProviderProxy;Landroid/os/PowerManager$WakeLock;)V
    .locals 1
    .parameter "gpsStatusProvider"
    .parameter "proxy"
    .parameter "wakeLock"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->nLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->dataAvl:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    iput-object p2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    iput-object p3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    iget v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VzwGpsReqMgr"

    const-string v2, "exception in acquireWakeLock(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private clearSessionLocked(Lcom/vzw/location/VzwGpsAppSession;)V
    .locals 4
    .parameter "session"

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getPid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/vzw/location/VzwGpsReqMgr;->sessionExistsLocked(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/vzw/location/VzwGpsAppSession;->setPendingBroadcasts(I)V

    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->releaseWakeLock()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getStatusListener()Lcom/vzw/location/IVzwGpsStatusListener;

    move-result-object v0

    .local v0, listener:Lcom/vzw/location/IVzwGpsStatusListener;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/vzw/location/VzwGpsReqMgr;->removeStatusListenerLocked(Lcom/vzw/location/IVzwGpsStatusListener;Lcom/vzw/location/VzwGpsAppSession;)V

    goto :goto_0

    .end local v0           #listener:Lcom/vzw/location/IVzwGpsStatusListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static gcd(JJ)J
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    move-wide v0, p2

    .local v0, temp:J
    rem-long p2, p0, p2

    move-wide p0, v0

    goto :goto_0

    .end local v0           #temp:J
    :cond_0
    return-wide p0
.end method

.method private getOrCreateSessionLocked()Lcom/vzw/location/VzwGpsAppSession;
    .locals 4

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, pid:I
    invoke-direct {p0, v2, v0}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked(II)Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v1

    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v1, :cond_0

    new-instance v1, Lcom/vzw/location/VzwGpsAppSession;

    .end local v1           #session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-direct {v1, v2, v0}, Lcom/vzw/location/VzwGpsAppSession;-><init>(II)V

    .restart local v1       #session:Lcom/vzw/location/VzwGpsAppSession;
    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method private getRequestLocked()Lcom/vzw/location/VzwGpsRequest;
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    .local v0, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v0, :cond_0

    const-string v1, "VzwGpsReqMgr"

    const-string v2, "getRequest(): session==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v1

    goto :goto_0
.end method

.method private getSessionLocked()Lcom/vzw/location/VzwGpsAppSession;
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked(II)Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    return-object v0
.end method

.method private getSessionLocked(II)Lcom/vzw/location/VzwGpsAppSession;
    .locals 4
    .parameter "uid"
    .parameter "pid"

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsAppSession;

    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsAppSession;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsAppSession;->getPid()I

    move-result v2

    if-ne v2, p2, :cond_1

    move-object v2, v1

    goto :goto_0

    .end local v1           #session:Lcom/vzw/location/VzwGpsAppSession;
    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 3

    .prologue
    :try_start_0
    iget v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VzwGpsReqMgr"

    const-string v2, "exception in releaseWakeLock(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V
    .locals 1
    .parameter "gpsReq"
    .parameter "updateConfig"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeStatusListenerLocked(Lcom/vzw/location/IVzwGpsStatusListener;Lcom/vzw/location/VzwGpsAppSession;)V
    .locals 4
    .parameter "listener"
    .parameter "session"

    .prologue
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->nLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    invoke-interface {v2, p1}, Lcom/vzw/location/IVzwGpsStatusProvider;->removeGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/vzw/location/VzwGpsAppSession;->setStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V

    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "VzwGpsReqMgr"

    const-string v3, "mGpsStatusProvider.removeGpsStatusListener() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private reportAuthStatusLocked(Lcom/vzw/location/VzwAuthRequest;I)Z
    .locals 5
    .parameter "authReq"
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/vzw/location/VzwAuthRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAppSession;->getStatusListener()Lcom/vzw/location/IVzwGpsStatusListener;

    move-result-object v1

    .local v1, statusListener:Lcom/vzw/location/IVzwGpsStatusListener;
    if-nez v1, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2, p2}, Lcom/vzw/location/IVzwGpsStatusListener;->onAuthStatusChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/vzw/location/VzwAuthRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vzw/location/VzwGpsReqMgr;->clearSessionLocked(Lcom/vzw/location/VzwGpsAppSession;)V

    const-string v2, "VzwGpsReqMgr"

    const-string v3, "report auth status exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    goto :goto_0
.end method

.method private sessionExistsLocked(II)Z
    .locals 1
    .parameter "uid"
    .parameter "pid"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked(II)Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateProviderConfigLocked(Z)V
    .locals 26
    .parameter "silent"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->size()I

    move-result v22

    if-nez v22, :cond_1

    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocationProviderProxy;->enableLocationTracking(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v11, Lcom/vzw/location/VzwCriteria;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwGpsRequest;

    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwCriteria;-><init>(Lcom/vzw/location/VzwCriteria;)V

    .local v11, newConfig:Lcom/vzw/location/VzwCriteria;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vzw/location/VzwGpsRequest;

    .local v12, nxtReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v12}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v14

    .local v14, perf:Lcom/vzw/location/VzwGpsPerformance;
    invoke-virtual {v12}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v6

    .local v6, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-virtual {v12}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getPriority()I

    move-result v5

    .local v5, fixPriority:I
    invoke-virtual {v12}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v4

    .local v4, fixMode:I
    invoke-virtual {v14}, Lcom/vzw/location/VzwGpsPerformance;->getPreferredResponseTime()J

    move-result-wide v15

    .local v15, prefRespTime:J
    invoke-virtual {v14}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v7

    .local v7, horAccuracy:J
    invoke-virtual {v14}, Lcom/vzw/location/VzwGpsPerformance;->getVerticalAccuracy()J

    move-result-wide v20

    .local v20, vertAccuracy:J
    invoke-virtual {v11}, Lcom/vzw/location/VzwCriteria;->getPriority()I

    move-result v22

    move v0, v5

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    invoke-virtual {v11, v4}, Lcom/vzw/location/VzwCriteria;->setFixMode(I)V

    :cond_2
    invoke-virtual {v11}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getVerticalAccuracy()J

    move-result-wide v22

    cmp-long v22, v20, v22

    if-lez v22, :cond_3

    invoke-virtual {v11}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwGpsPerformance;->setVerticalAccuracy(J)V

    :cond_3
    invoke-virtual {v11}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v22

    cmp-long v22, v7, v22

    if-lez v22, :cond_4

    invoke-virtual {v11}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwGpsPerformance;->setHorizontalAccuracy(J)V

    :cond_4
    invoke-virtual {v11}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getPreferredResponseTime()J

    move-result-wide v22

    cmp-long v22, v15, v22

    if-gez v22, :cond_5

    invoke-virtual {v11}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwGpsPerformance;->setPreferredResponseTime(J)V

    :cond_5
    invoke-virtual {v6}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v22

    invoke-virtual {v11}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Lcom/vzw/location/VzwGpsReqMgr;->gcd(JJ)J

    move-result-wide v18

    .local v18, tbf:J
    invoke-virtual {v11}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwGpsFixRate;->setTimeBetweenFixes(J)V

    goto/16 :goto_1

    .end local v4           #fixMode:I
    .end local v5           #fixPriority:I
    .end local v6           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    .end local v7           #horAccuracy:J
    .end local v12           #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v14           #perf:Lcom/vzw/location/VzwGpsPerformance;
    .end local v15           #prefRespTime:J
    .end local v18           #tbf:J
    .end local v20           #vertAccuracy:J
    :cond_6
    invoke-virtual {v11}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v22

    const-wide/16 v23, -0x1

    invoke-virtual/range {v22 .. v24}, Lcom/vzw/location/VzwGpsFixRate;->setNumFixes(J)V

    const/4 v13, 0x0

    .local v13, oneSec:Z
    invoke-virtual {v11}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_7

    const/4 v13, 0x1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, it2:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vzw/location/VzwGpsRequest;

    .restart local v12       #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v12}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v6

    .restart local v6       #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    if-eqz v13, :cond_8

    const-wide/16 v22, 0x1f4

    move-object v0, v6

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwGpsFixRate;->setUpdateMargin(J)V

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Lcom/vzw/location/VzwGpsFixRate;->setUpdateMargin()V

    goto :goto_2

    .end local v6           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    .end local v12           #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    move-object/from16 v22, v0

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwCriteria;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocationProviderProxy;->enableLocationTracking(ZZ)V

    invoke-virtual {v11}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwGpsRequest;

    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v17

    .local v17, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v17, :cond_b

    const-string v22, "VzwGpsReqMgr"

    const-string v23, "updateProviderConfigLocked(): session==null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v17           #session:Lcom/vzw/location/VzwGpsAppSession;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationProviderProxy;->setConfig(Lcom/vzw/location/VzwCriteria;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocationProviderProxy;->enableLocationTracking(ZZ)V

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    goto/16 :goto_0

    .restart local v17       #session:Lcom/vzw/location/VzwGpsAppSession;
    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/vzw/location/VzwGpsAppSession;->getAuthRequest()Lcom/vzw/location/VzwAuthRequest;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwAuthRequest;->getAuthData()Lcom/vzw/location/VzwGpsConfigInit;

    move-result-object v3

    .local v3, configInit:Lcom/vzw/location/VzwGpsConfigInit;
    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v22

    if-nez v22, :cond_c

    new-instance v22, Ljava/lang/NullPointerException;

    const-string v23, "updateProviderConfigLocked(): assistanceHost==null"

    invoke-direct/range {v22 .. v23}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_c
    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v22

    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcPort()I

    move-result v23

    move-object v0, v11

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwCriteria;->setAssistanceHost(Ljava/net/InetAddress;I)V

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized addRequest(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)Z
    .locals 6
    .parameter "criteria"
    .parameter "locListener"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getOrCreateSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v1

    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsAppSession;->getAuthRequest()Lcom/vzw/location/VzwAuthRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vzw/location/VzwAuthRequest;->getAuthState()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const-string v2, "VzwGpsReqMgr"

    const-string v3, "addRequest(): no prior GPS_EVENT_INIT_PASS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v0

    .local v0, gpsReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V

    :cond_1
    new-instance v0, Lcom/vzw/location/VzwGpsRequest;

    .end local v0           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-direct {v0, v1, p1, p2}, Lcom/vzw/location/VzwGpsRequest;-><init>(Lcom/vzw/location/VzwGpsAppSession;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    .restart local v0       #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v1, v0}, Lcom/vzw/location/VzwGpsAppSession;->setGpsRequest(Lcom/vzw/location/VzwGpsRequest;)V

    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v5, :cond_2

    move v2, v5

    :goto_1
    invoke-direct {p0, v2}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .end local v0           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v1           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->nLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    invoke-interface {v3, p1}, Lcom/vzw/location/IVzwGpsStatusProvider;->addGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getOrCreateSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v1

    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v1, p1}, Lcom/vzw/location/VzwGpsAppSession;->setStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x1

    .end local v1           #session:Lcom/vzw/location/VzwGpsAppSession;
    :goto_0
    monitor-exit p0

    return v2

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "VzwGpsReqMgr"

    const-string v4, "mGpsStatusProvider.addGpsStatusListener() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    monitor-exit v2

    move v2, v3

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getNumRequests()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequest()Lcom/vzw/location/VzwGpsRequest;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getRequestLocked()Lcom/vzw/location/VzwGpsRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized locationCallbackFinished()V
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked()Lcom/vzw/location/VzwGpsAppSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .local v2, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/vzw/location/VzwGpsAppSession;->setPendingBroadcasts(I)V

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->releaseWakeLock()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0           #identity:J
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v2           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removeRequest(Z)V
    .locals 1
    .parameter "updateConfig"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getRequestLocked()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    .local v0, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v0, :cond_0

    const-string v1, "VzwGpsReqMgr"

    const-string v2, "removeStatusListener(): session==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/vzw/location/VzwGpsReqMgr;->removeStatusListenerLocked(Lcom/vzw/location/IVzwGpsStatusListener;Lcom/vzw/location/VzwGpsAppSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startAuthentication(Lcom/vzw/location/VzwGpsConfigInit;)V
    .locals 4
    .parameter "configInit"

    .prologue
    const/16 v3, 0x8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getOrCreateSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v1

    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsAppSession;->getAuthRequest()Lcom/vzw/location/VzwAuthRequest;

    move-result-object v0

    .local v0, authReq:Lcom/vzw/location/VzwAuthRequest;
    invoke-virtual {v0}, Lcom/vzw/location/VzwAuthRequest;->getAuthState()I

    move-result v2

    if-ne v2, v3, :cond_0

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwAuthRequest;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwAuthRequest;->setAuthData(Lcom/vzw/location/VzwGpsConfigInit;)V

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwAuthRequest;->setAuthState(I)V

    const/16 v2, 0x65

    invoke-direct {p0, v0, v2}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwAuthRequest;I)Z

    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    if-nez v2, :cond_1

    new-instance v2, Lcom/vzw/location/VzwGpsAuthMgr;

    invoke-direct {v2, p0}, Lcom/vzw/location/VzwGpsAuthMgr;-><init>(Lcom/vzw/location/VzwGpsReqMgr;)V

    iput-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    :cond_1
    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    invoke-virtual {v2, v0}, Lcom/vzw/location/VzwGpsAuthMgr;->addRequest(Lcom/vzw/location/VzwAuthRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #authReq:Lcom/vzw/location/VzwAuthRequest;
    .end local v1           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized trigger_AuthDone(Lcom/vzw/location/VzwAuthRequest;)V
    .locals 3
    .parameter "authReq"

    .prologue
    const/16 v2, 0x8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/vzw/location/VzwAuthRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    .local v0, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwGpsAppSession;->setAuthRequest(Lcom/vzw/location/VzwAuthRequest;)V

    invoke-virtual {p1}, Lcom/vzw/location/VzwAuthRequest;->getAuthState()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwAuthRequest;I)Z

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwAuthRequest;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x3

    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwAuthRequest;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized trigger_LocationChanged(Lcom/vzw/location/VzwLocation;)V
    .locals 22
    .parameter "location"

    .prologue
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v18

    if-nez v18, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v6, 0x0

    .local v6, deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    const/4 v15, 0x0

    .local v15, rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, currentTime:J
    const/4 v3, 0x0

    .local v3, client:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, it:Ljava/util/Iterator;
    move-object/from16 v16, v15

    .end local v15           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .local v16, rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vzw/location/VzwGpsRequest;

    .local v9, gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v9}, Lcom/vzw/location/VzwGpsRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v14

    .local v14, nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v9}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v8

    .local v8, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-virtual {v9}, Lcom/vzw/location/VzwGpsRequest;->getLocationListener()Lcom/vzw/location/IVzwLocationListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .local v13, nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    if-eqz v13, :cond_b

    :try_start_2
    invoke-virtual {v9}, Lcom/vzw/location/VzwGpsRequest;->getlastUpdated()J

    move-result-wide v18

    sub-long v18, v4, v18

    invoke-virtual {v8}, Lcom/vzw/location/VzwGpsFixRate;->getUpdateMargin()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-ltz v18, :cond_b

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/vzw/location/IVzwLocationListener;->onLocationChanged(Lcom/vzw/location/VzwLocation;)V

    invoke-virtual {v9, v4, v5}, Lcom/vzw/location/VzwGpsRequest;->setlastUpdated(J)V

    invoke-virtual {v9}, Lcom/vzw/location/VzwGpsRequest;->incrementFixesReported()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v14}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGpsAppSession;->setPendingBroadcasts(I)V

    invoke-virtual {v14}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/vzw/location/VzwGpsReqMgr;->acquireWakeLock()V

    :cond_2
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v8}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_b

    invoke-virtual {v9}, Lcom/vzw/location/VzwGpsRequest;->getfixesReported()J

    move-result-wide v18

    invoke-virtual {v8}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-ltz v18, :cond_b

    if-nez v16, :cond_a

    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v16           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v15       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :goto_2
    :try_start_5
    invoke-virtual {v15, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    move-object/from16 v16, v15

    .end local v15           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v16       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    goto :goto_1

    :catchall_0
    move-exception v19

    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    move-object/from16 v15, v16

    .end local v16           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .local v7, e:Landroid/os/RemoteException;
    .restart local v15       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :goto_4
    if-nez v6, :cond_3

    :try_start_8
    new-instance v6, Ljava/util/LinkedList;

    .end local v6           #deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .restart local v6       #deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :cond_3
    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .end local v3           #client:I
    .end local v4           #currentTime:J
    .end local v6           #deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v8           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    .end local v9           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v10           #it:Ljava/util/Iterator;
    .end local v13           #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .end local v14           #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    .end local v15           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :catchall_1
    move-exception v18

    monitor-exit p0

    throw v18

    .restart local v3       #client:I
    .restart local v4       #currentTime:J
    .restart local v6       #deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v10       #it:Ljava/util/Iterator;
    .restart local v16       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :cond_4
    const/16 v17, 0x0

    .local v17, updateConfig:Z
    if-eqz v16, :cond_7

    const/16 v17, 0x1

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, it2:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vzw/location/VzwGpsRequest;

    .restart local v9       #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v6, :cond_6

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    :cond_6
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V

    goto :goto_5

    .end local v9           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v11           #it2:Ljava/util/Iterator;
    :cond_7
    if-eqz v6, :cond_8

    const/16 v17, 0x1

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, it3:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vzw/location/VzwGpsRequest;

    .restart local v9       #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v9}, Lcom/vzw/location/VzwGpsRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwGpsReqMgr;->clearSessionLocked(Lcom/vzw/location/VzwGpsAppSession;)V

    goto :goto_6

    .end local v9           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v12           #it3:Ljava/util/Iterator;
    :cond_8
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-lez v18, :cond_9

    const/16 v18, 0x1

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :cond_9
    const/16 v18, 0x0

    goto :goto_7

    .end local v16           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .end local v17           #updateConfig:Z
    .restart local v8       #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    .restart local v9       #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .restart local v13       #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .restart local v14       #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    .restart local v15       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :catch_1
    move-exception v18

    move-object/from16 v7, v18

    goto :goto_4

    .end local v15           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v16       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :cond_a
    move-object/from16 v15, v16

    .end local v16           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v15       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    goto/16 :goto_2

    .end local v15           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v16       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :cond_b
    move-object/from16 v15, v16

    .end local v16           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v15       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    goto/16 :goto_3
.end method

.method public declared-synchronized trigger_NetworkStateUpdate(Z)V
    .locals 1
    .parameter "dataConn"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsReqMgr;->dataAvl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trigger_UidRemoved(I)V
    .locals 5
    .parameter "uid"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    :try_start_1
    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwGpsAppSession;

    .local v3, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsAppSession;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_2

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/LinkedList;

    .end local v2           #rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .restart local v2       #rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0           #it:Ljava/util/Iterator;
    .end local v2           #rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    .end local v3           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0       #it:Ljava/util/Iterator;
    .restart local v2       #rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    :cond_4
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it2:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwGpsAppSession;

    .restart local v3       #session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-direct {p0, v3}, Lcom/vzw/location/VzwGpsReqMgr;->clearSessionLocked(Lcom/vzw/location/VzwGpsAppSession;)V

    goto :goto_2

    .end local v3           #session:Lcom/vzw/location/VzwGpsAppSession;
    :cond_5
    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x1

    :goto_3
    invoke-direct {p0, v4}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public declared-synchronized updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 8
    .parameter "provider"
    .parameter "enabled"

    .prologue
    const/4 v7, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vzw/location/VzwGpsAppSession;

    .local v4, nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v3

    .local v3, nxtReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsRequest;->getLocationListener()Lcom/vzw/location/IVzwLocationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .local v2, nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    if-eqz v2, :cond_0

    if-ne p2, v7, :cond_2

    :try_start_1
    invoke-interface {v2, p1}, Lcom/vzw/location/IVzwLocationListener;->onProviderEnabled(Ljava/lang/String;)V

    :goto_1
    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Lcom/vzw/location/VzwGpsAppSession;->setPendingBroadcasts(I)V

    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v6

    if-ne v6, v7, :cond_1

    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->acquireWakeLock()V

    :cond_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "VzwGpsReqMgr"

    const-string v6, "updateProviderListenersLocked(): RemoteException: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .end local v3           #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v4           #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v1       #it:Ljava/util/Iterator;
    .restart local v2       #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .restart local v3       #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    .restart local v4       #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    :cond_2
    :try_start_5
    invoke-interface {v2, p1}, Lcom/vzw/location/IVzwLocationListener;->onProviderDisabled(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .end local v3           #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v4           #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    :cond_3
    monitor-exit p0

    return-void
.end method
