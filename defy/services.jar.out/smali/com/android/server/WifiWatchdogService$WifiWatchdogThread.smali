.class Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;
.super Ljava/lang/Thread;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiWatchdogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiWatchdogService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiWatchdogService;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->this$0:Lcom/android/server/WifiWatchdogService;

    const-string v0, "WifiWatchdogThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->this$0:Lcom/android/server/WifiWatchdogService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->this$0:Lcom/android/server/WifiWatchdogService;

    new-instance v2, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    iget-object v3, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->this$0:Lcom/android/server/WifiWatchdogService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;-><init>(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$1;)V

    #setter for: Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    invoke-static {v1, v2}, Lcom/android/server/WifiWatchdogService;->access$302(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;)Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
