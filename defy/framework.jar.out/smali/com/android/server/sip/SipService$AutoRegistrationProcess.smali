.class Lcom/android/server/sip/SipService$AutoRegistrationProcess;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRegistrationProcess"
.end annotation


# instance fields
.field private mBackoff:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mExpiryTime:J

.field private mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

.field private mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field private mRegistered:Z

.field private mRunning:Z

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    new-instance v0, Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {v0}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;-><init>(Lcom/android/server/sip/SipService;)V

    return-void
.end method

.method private backoffDuration()I
    .locals 2

    .prologue
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    mul-int/lit8 v0, v1, 0xa

    .local v0, duration:I
    const/16 v1, 0xe10

    if-le v0, v1, :cond_0

    const/16 v0, 0xe10

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    goto :goto_0
.end method

.method private getAction()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isBehindNAT(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .local v0, d:[B
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xac

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    aget-byte v2, v0, v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_2

    :cond_1
    move v2, v4

    .end local v0           #d:[B
    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/net/UnknownHostException;
    const-string v2, "SipService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBehindAT()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #e:Ljava/net/UnknownHostException;
    :cond_2
    move v2, v5

    goto :goto_0
.end method

.method private notCurrentSession(Landroid/net/sip/ISipSession;)Z
    .locals 4
    .parameter "session"

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eq p1, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    move v1, v3

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private restart(I)V
    .locals 2
    .parameter "duration"

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipService$WakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$WakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipService$WakeupTimer;->cancel(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipService$WakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$WakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipService$WakeupTimer;->set(ILjava/lang/Runnable;)V

    return-void
.end method

.method private restartLater()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->backoffDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restart(I)V

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$KeepAliveProcess;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    :cond_0
    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    return v0
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 5
    .parameter "session"
    .parameter "duration"

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    if-lez p2, :cond_5

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->clearReRegisterRequired()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    iget-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    add-int/lit8 p2, p2, -0x3c

    const/16 v1, 0x3c

    if-ge p2, v1, :cond_1

    const/16 p2, 0x3c

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restart(I)V

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->isBehindNAT(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getSendKeepAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/server/sip/SipService$KeepAliveProcess;

    iget-object v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {v1, v2, v3}, Lcom/android/server/sip/SipService$KeepAliveProcess;-><init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    iput-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    :cond_3
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    invoke-virtual {v1}, Lcom/android/server/sip/SipService$KeepAliveProcess;->start()V

    :cond_4
    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    invoke-virtual {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    sparse-switch p2, :sswitch_data_0

    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restartLater()V

    :goto_1
    iput p2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    iput-object p3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_0
        -0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    invoke-direct {p0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->restartLater()V

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mConnected:Z
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$800(Lcom/android/server/sip/SipService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xe10

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    iget-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v4, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v1, v4

    .local v1, state:I
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v4, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1           #state:I
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getState()I

    move-result v4

    move v1, v4

    goto :goto_0

    .restart local v1       #state:I
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mExpiryTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .local v0, duration:I
    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v4, v5, v0}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .end local v0           #duration:I
    .end local v1           #state:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, t:Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "SipService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setListener(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .restart local v1       #state:I
    :cond_3
    :try_start_5
    iget v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    const/4 v5, -0x5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v4, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v6, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorCode:I

    iget-object v7, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mConnected:Z
    invoke-static {v4}, Lcom/android/server/sip/SipService;->access$800(Lcom/android/server/sip/SipService;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v6, -0xa

    const-string v7, "no data connection"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-boolean v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v6, -0x4

    const-string v7, "registration not running"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v5, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v6, -0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public start(Lcom/android/server/sip/SipSessionGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    iput v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mBackoff:I

    invoke-virtual {p1, p0}, Lcom/android/server/sip/SipSessionGroup;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRunning:Z

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mConnected:Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$800(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipService$WakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$WakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipService$WakeupTimer;->cancel(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    invoke-virtual {v0}, Lcom/android/server/sip/SipService$KeepAliveProcess;->stop()V

    iput-object v3, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mKeepAliveProcess:Lcom/android/server/sip/SipService$KeepAliveProcess;

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mRegistered:Z

    iget-object v0, p0, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$AutoRegistrationProcess;->setListener(Landroid/net/sip/ISipSessionListener;)V

    goto :goto_0
.end method
