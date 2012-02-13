.class Lcom/android/server/ConnectivityService$ConnectivityThread;
.super Ljava/lang/Thread;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectivityThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const-string v0, "ConnectivityThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityThread;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getServiceInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;
    .locals 4
    .parameter "context"

    .prologue
    new-instance v1, Lcom/android/server/ConnectivityService$ConnectivityThread;

    invoke-direct {v1, p0}, Lcom/android/server/ConnectivityService$ConnectivityThread;-><init>(Landroid/content/Context;)V

    .local v1, thread:Lcom/android/server/ConnectivityService$ConnectivityThread;
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$ConnectivityThread;->start()V

    monitor-enter v1

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$000()Lcom/android/server/ConnectivityService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ignore:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "ConnectivityService"

    const-string v3, "Unexpected InterruptedException while waiting for ConnectivityService thread"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #ignore:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$000()Lcom/android/server/ConnectivityService;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityThread;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$1;)V

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$002(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
