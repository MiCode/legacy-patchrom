.class Lcom/vzw/location/VzwGpsAuthMgr;
.super Ljava/lang/Thread;
.source "VzwGpsAuthMgr.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwGpsAuthMgr"


# instance fields
.field private mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

.field private mReqQ:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/vzw/location/VzwAuthRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vzw/location/VzwGpsReqMgr;)V
    .locals 1
    .parameter "reqMgr"

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mReqQ:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsAuthMgr;->start()V

    return-void
.end method


# virtual methods
.method declared-synchronized addRequest(Lcom/vzw/location/VzwAuthRequest;)V
    .locals 2
    .parameter "r"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "VzwGpsAuthMgr"

    const-string v1, "addRequest(): r==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mReqQ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    const-string v5, "VzwGpsAuthMgr"

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, authReq:Lcom/vzw/location/VzwAuthRequest;
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mReqQ:Ljava/util/concurrent/BlockingQueue;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mReqQ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/vzw/location/VzwAuthRequest;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    const-string v3, "VzwGpsAuthMgr"

    const-string v3, "starting authentication"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/vzw/location/VzwAuthRequest;->getAuthData()Lcom/vzw/location/VzwGpsConfigInit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v2

    .local v2, authSvrUrl:Ljava/net/InetAddress;
    const-string v3, "VzwGpsAuthMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auth req url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/vzw/location/VzwAuthRequest;->setAuthState(I)V

    :goto_2
    iget-object v3, p0, Lcom/vzw/location/VzwGpsAuthMgr;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v3, v1}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_AuthDone(Lcom/vzw/location/VzwAuthRequest;)V

    goto :goto_0

    :cond_2
    const-string v3, "VzwGpsAuthMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auth passed: inetAddress= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/vzw/location/VzwAuthRequest;->setAuthState(I)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/vzw/location/VzwAuthRequest;->setAuthState(I)V

    goto :goto_2

    .end local v2           #authSvrUrl:Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    goto :goto_1
.end method
