.class Lcom/android/server/WifiService$WifiHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3341
    iput-object p1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    .line 3342
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3343
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v5, "Exception in sendProvisionResponse() : "

    const-string v5, "WifiService"

    .line 3347
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 3515
    .end local p0
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3350
    .restart local p0
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v8, :cond_2

    move v6, v8

    :goto_1
    iget v7, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/WifiService;->setWifiEnabledBlocking(ZZI)Z
    invoke-static {v5, v8, v6, v7}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;ZZI)Z

    .line 3351
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Lcom/android/server/WifiWatchdogService;

    move-result-object v5

    if-nez v5, :cond_1

    .line 3352
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    new-instance v6, Lcom/android/server/WifiWatchdogService;

    iget-object v7, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/server/WifiWatchdogService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V

    #setter for: Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;
    invoke-static {v5, v6}, Lcom/android/server/WifiService;->access$2502(Lcom/android/server/WifiService;Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService;

    .line 3354
    :cond_1
    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_2
    move v6, v9

    .line 3350
    goto :goto_1

    .line 3358
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->reportStartWorkSource()V
    invoke-static {v5}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)V

    .line 3359
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_3

    move v6, v8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateTracker;->setScanOnlyMode(Z)V

    .line 3360
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->restart()Z

    .line 3361
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    move v6, v8

    :goto_3
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateTracker;->setHighPerfMode(Z)V

    .line 3363
    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_3
    move v6, v9

    .line 3359
    goto :goto_2

    :cond_4
    move v6, v9

    .line 3361
    goto :goto_3

    .line 3367
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->doUpdateWifiState()V
    invoke-static {v5}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 3373
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v8, :cond_5

    move v6, v8

    :goto_4
    iget v7, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/WifiService;->setWifiEnabledBlocking(ZZI)Z
    invoke-static {v5, v9, v6, v7}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;ZZI)Z

    .line 3374
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;
    invoke-static {v5, v6}, Lcom/android/server/WifiService;->access$2502(Lcom/android/server/WifiService;Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService;

    .line 3375
    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :cond_5
    move v6, v9

    .line 3373
    goto :goto_4

    .line 3379
    :pswitch_5
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->disconnectAndStop()Z

    goto/16 :goto_0

    .line 3384
    :pswitch_6
    invoke-static {}, Lcom/android/server/WifiService;->access$2900()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 3388
    :pswitch_7
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/server/WifiService;->setWifiApEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v5, v8, v6, p0}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 3391
    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 3395
    .restart local p0
    :pswitch_8
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/server/WifiService;->setWifiApEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v5, v9, v6, p0}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 3398
    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 3402
    .restart local p0
    :pswitch_9
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-ne v7, v8, :cond_6

    move v7, v8

    :goto_5
    #calls: Lcom/android/server/WifiService;->setNumAllowedChannelsBlocking(IZ)Z
    invoke-static {v5, v6, v7}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;IZ)Z

    goto/16 :goto_0

    :cond_6
    move v7, v9

    goto :goto_5

    .line 3406
    :pswitch_a
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v6}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateTracker;->enableAllNetworks(Ljava/util/List;)V

    goto/16 :goto_0

    .line 3410
    :pswitch_b
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v8, :cond_7

    move v2, v8

    .line 3411
    .local v2, forceActive:Z
    :goto_6
    sget-object v5, Lcom/android/server/WifiService$11;->$SwitchMap$android$net$wifi$SupplicantState:[I

    iget-object v6, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 3418
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    .line 3422
    :pswitch_c
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z

    goto/16 :goto_0

    .end local v2           #forceActive:Z
    :cond_7
    move v2, v9

    .line 3410
    goto :goto_6

    .line 3425
    :pswitch_d
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->reportStartWorkSource()V
    invoke-static {v5}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 3428
    :pswitch_e
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v8, :cond_8

    move v6, v8

    :goto_7
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    goto/16 :goto_0

    :cond_8
    move v6, v9

    goto :goto_7

    .line 3431
    :pswitch_f
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/server/WifiService;->writeWifiApConfigBlocked(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v5, p0}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 3434
    .restart local p0
    :pswitch_10
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->readWifiApConfigBlocked()V
    invoke-static {v5}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 3438
    :pswitch_11
    iget-object v6, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/server/WifiService;->setWifiDirectEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v6, v8, v7, v5}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 3441
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->notifyDirectStart()V

    .line 3442
    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 3446
    :pswitch_12
    iget-object v6, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/server/WifiService;->setWifiDirectEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v6, v9, v7, v5}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 3449
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->notifyDirectStop()V

    .line 3450
    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 3454
    :pswitch_13
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v5

    monitor-enter v5

    .line 3456
    :try_start_0
    iget-object v6, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v6

    const/4 v7, 0x1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-interface {v6, v7, p0}, Landroid/os/INetworkManagementService;->createAutonomousGO(ZLjava/lang/String;)Z

    .line 3457
    const-string v6, "WifiService"

    const-string v7, "MESSAGE_CREATE_GO"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3461
    :goto_8
    :try_start_1
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 3458
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 3459
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in sendProvisionResponse() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    .line 3466
    .end local v1           #e:Ljava/lang/Exception;
    .restart local p0
    :pswitch_14
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v5

    monitor-enter v5

    .line 3468
    :try_start_3
    iget-object v6, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v6

    const/4 v7, 0x0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-interface {v6, v7, p0}, Landroid/os/INetworkManagementService;->createAutonomousGO(ZLjava/lang/String;)Z

    .line 3469
    const-string v6, "WifiService"

    const-string v7, "MESSAGE_DESTROY_GO"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3473
    :goto_9
    :try_start_4
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 3470
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 3471
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in sendProvisionResponse() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_9

    .line 3477
    .end local v1           #e:Ljava/lang/Exception;
    .restart local p0
    :pswitch_15
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v6

    monitor-enter v6

    .line 3479
    :try_start_6
    const-string v7, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendProvisionRequest, Disconnect Current Wifi-Connection and Disable supplicant\'s auto-connection. : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-interface {v5, v7, p0}, Landroid/os/INetworkManagementService;->sendProvisionDiscoveryToPeer(ILjava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3484
    :goto_a
    :try_start_7
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v5

    .line 3481
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 3482
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v5, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in sendProvisionRequest() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_a

    .line 3488
    .end local v1           #e:Ljava/lang/Exception;
    .restart local p0
    :pswitch_16
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v6

    monitor-enter v6

    .line 3490
    :try_start_9
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v0, v5, v7

    .line 3491
    .local v0, cfgMethod:Ljava/lang/String;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v4, v5, v7

    .line 3492
    .local v4, macAddr:Ljava/lang/String;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v3, v5, v7

    .line 3494
    .local v3, mPin:Ljava/lang/String;
    const-string v5, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendProvisionResponse, Disconnect Current Wifi-Connection and Disable supplicant\'s auto-connection."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v5

    invoke-interface {v5, v0, v4, v3}, Landroid/os/INetworkManagementService;->sendProvisionResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 3499
    .end local v0           #cfgMethod:Ljava/lang/String;
    .end local v3           #mPin:Ljava/lang/String;
    .end local v4           #macAddr:Ljava/lang/String;
    :goto_b
    :try_start_a
    monitor-exit v6

    goto/16 :goto_0

    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v5

    .line 3496
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 3497
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_b
    const-string v5, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in sendProvisionResponse() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_b

    .line 3503
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_17
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v6

    monitor-enter v6

    .line 3505
    :try_start_c
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_9

    .line 3506
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->DisableDnsmasq()V
    invoke-static {v5}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)V

    .line 3508
    :cond_9
    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-interface {v5, p0}, Landroid/os/INetworkManagementService;->disconnectPeer(Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 3512
    :goto_c
    :try_start_d
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v5

    .line 3509
    :catch_4
    move-exception v5

    move-object v1, v5

    .line 3510
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_e
    const-string v5, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in disconnectPeer() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_c

    .line 3347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_13
        :pswitch_14
        :pswitch_17
    .end packed-switch

    .line 3411
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
