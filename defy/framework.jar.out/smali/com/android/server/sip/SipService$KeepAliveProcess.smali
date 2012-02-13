.class Lcom/android/server/sip/SipService$KeepAliveProcess;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeepAliveProcess"
.end annotation


# static fields
.field private static final INTERVAL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "\\KEEPALIVE/"


# instance fields
.field private mRunning:Z

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 1
    .parameter
    .parameter "session"

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    iput-object p2, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    if-nez v3, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->sendKeepAlive()V

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->isReRegisterRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v4}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v4, 0xe10

    invoke-virtual {v3, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0       #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "\\KEEPALIVE/"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keepalive error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    iget-object v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipService$WakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$WakeupTimer;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipService$WakeupTimer;->set(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipService$WakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$WakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipService$WakeupTimer;->cancel(Ljava/lang/Runnable;)V

    return-void
.end method
