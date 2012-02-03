.class Lcom/android/server/WifiService$4;
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
    .line 358
    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "WifiService"

    .line 361
    iget-object v3, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->enforceChangePermission()V
    invoke-static {v3}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)V

    .line 362
    iget-object v3, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v3

    monitor-enter v3

    .line 364
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->stopDirectDeviceDiscovery()I

    .line 365
    iget-object v4, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->isGOCreated()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 367
    const/4 v1, 0x0

    .line 368
    .local v1, ifcg:Landroid/net/InterfaceConfiguration;
    iget-object v4, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040487

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 370
    .local v2, intf:Ljava/lang/String;
    :try_start_1
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Direct] [Interface ] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v4, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 375
    :goto_0
    :try_start_2
    const-string v4, "WifiService"

    const-string v5, "[Direct Client is Connected. But this GO.] We just broadcast our status to a system. "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v4, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiStateTracker;->notifyDirectLinkCompleted(Landroid/net/InterfaceConfiguration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 377
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    .end local v1           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v2           #intf:Ljava/lang/String;
    :goto_1
    return-void

    .line 372
    .restart local v1       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v2       #intf:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 373
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting interface configuration."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 379
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v2           #intf:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 380
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "WifiService"

    const-string v5, "[Create_Link_Complete] Error configuring interface "

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->notifyDirectPeerConnected()V

    .line 384
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4
.end method
