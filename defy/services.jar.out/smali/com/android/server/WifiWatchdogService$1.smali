.class Lcom/android/server/WifiWatchdogService$1;
.super Landroid/database/ContentObserver;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiWatchdogService;->registerForSettingsChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiWatchdogService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiWatchdogService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService$1;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$1;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->isWatchdogEnabled()Z
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$000(Lcom/android/server/WifiWatchdogService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$1;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->registerForWifiBroadcasts()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$100(Lcom/android/server/WifiWatchdogService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$1;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->unregisterForWifiBroadcasts()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$200(Lcom/android/server/WifiWatchdogService;)V

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$1;->this$0:Lcom/android/server/WifiWatchdogService;

    #getter for: Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$300(Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$1;->this$0:Lcom/android/server/WifiWatchdogService;

    #getter for: Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$300(Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->disableWatchdog()V

    goto :goto_0
.end method
