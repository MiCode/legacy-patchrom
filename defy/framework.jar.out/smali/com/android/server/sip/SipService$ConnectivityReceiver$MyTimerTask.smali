.class Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
.super Ljava/util/TimerTask;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService$ConnectivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field private mConnected:Z

.field private mNetworkType:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "connected"

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mConnected:Z

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->realRun()V

    return-void
.end method

.method private realRun()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v0, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    #getter for: Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    invoke-static {v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->access$1900(Lcom/android/server/sip/SipService$ConnectivityReceiver;)Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    move-result-object v1

    if-eq v1, p0, :cond_1

    const-string v1, "SipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  unexpected task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mConnected:Z

    if-eqz v3, :cond_0

    const-string v3, " CONNECTED"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v1, v1, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    monitor-exit v0

    :goto_1
    return-void

    :cond_0
    const-string v3, "DISCONNECTED"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    invoke-static {v1, v2}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->access$1902(Lcom/android/server/sip/SipService$ConnectivityReceiver;Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v1, v1, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mConnected:Z

    #calls: Lcom/android/server/sip/SipService;->onConnectivityChanged(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/server/sip/SipService;->access$1700(Lcom/android/server/sip/SipService;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v1, v1, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v0, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->getExecutor()Lcom/android/server/sip/SipService$MyExecutor;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask$1;

    invoke-direct {v1, p0}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask$1;-><init>(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipService$MyExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
