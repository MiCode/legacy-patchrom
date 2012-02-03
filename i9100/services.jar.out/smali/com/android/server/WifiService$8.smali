.class Lcom/android/server/WifiService$8;
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
    .line 431
    iput-object p1, p0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->enforceChangePermission()V
    invoke-static {v0}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/WifiService$8;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->SetAutoScan(Z)Z

    .line 437
    const-string v0, "WifiService"

    const-string v1, "DIRECT_LINK_ADDED, stop supplicant scan"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method
