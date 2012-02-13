.class Lcom/android/server/sip/SipService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    }
.end annotation


# instance fields
.field private mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

.field private mTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/android/server/sip/SipService;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/sip/SipService$ConnectivityReceiver;)Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/sip/SipService$ConnectivityReceiver;Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    return-object p1
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$1100(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method private onChanged(Ljava/lang/String;Z)V
    .locals 5
    .parameter "type"
    .parameter "connected"

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->cancel()Z

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;-><init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    #getter for: Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->mNetworkType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->access$1600(Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;->cancel()Z

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->mTask:Lcom/android/server/sip/SipService$ConnectivityReceiver$MyTimerTask;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    const/4 v2, 0x0

    #calls: Lcom/android/server/sip/SipService;->onConnectivityChanged(Ljava/lang/String;Z)V
    invoke-static {v1, p1, v2}, Lcom/android/server/sip/SipService;->access$1700(Lcom/android/server/sip/SipService;Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v6, "networkInfo"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .local v3, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .local v5, type:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .local v4, state:Landroid/net/NetworkInfo$State;
    iget-object v6, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mWifiOnly:Z
    invoke-static {v6}, Lcom/android/server/sip/SipService;->access$1500(Lcom/android/server/sip/SipService;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eq v6, v8, :cond_1

    .end local v2           #b:Landroid/os/Bundle;
    .end local v3           #netInfo:Landroid/net/NetworkInfo;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    .end local v5           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v2       #b:Landroid/os/Bundle;
    .restart local v3       #netInfo:Landroid/net/NetworkInfo;
    .restart local v4       #state:Landroid/net/NetworkInfo$State;
    .restart local v5       #type:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, activeNetInfo:Landroid/net/NetworkInfo;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v6, v7, :cond_0

    :cond_2
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_3

    invoke-direct {p0, v5, v8}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->onChanged(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->onChanged(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->getExecutor()Lcom/android/server/sip/SipService$MyExecutor;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;-><init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipService$MyExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
