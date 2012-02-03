.class Lcom/android/server/WifiService$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->enforceChangePermission()V
    invoke-static {v0}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)V

    .line 395
    iget-object v0, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->ConfigureDirectInterface()V
    invoke-static {v0}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)V

    .line 396
    iget-object v0, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifidirect.DIRECT_GO_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 397
    return-void
.end method
