.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 609
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 611
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "connected"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    #setter for: Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$102(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 612
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->updateUsbStatus()V
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)V

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    const-string v10, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 614
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering;->mUsbMassStorageOff:Z
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$302(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 615
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->updateUsbStatus()V
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_0

    .line 617
    :cond_2
    const-string v10, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 618
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering;->mUsbMassStorageOff:Z
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$302(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 619
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->updateUsbStatus()V
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_0

    .line 620
    :cond_3
    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 621
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/HierarchicalStateMachine;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/HierarchicalStateMachine;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/android/internal/util/HierarchicalStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 622
    :cond_4
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 623
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering;->mBooted:Z
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$502(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 624
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->updateUsbStatus()V
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)V

    .line 627
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->updateDunRequired()V
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_0

    .line 630
    :cond_5
    const-string v10, "android.intent.action.CSC_UPDATE_DONE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 631
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->updateDunRequired()V
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_0

    .line 633
    :cond_6
    const-string v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 634
    const-string v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "READY"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "LOADED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 636
    :cond_7
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->updateDunRequired()V
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)V

    goto/16 :goto_0

    .line 641
    :cond_8
    const-string v10, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 642
    const-string v10, "Tethering"

    const-string v11, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 646
    const-string v10, "Tethering"

    const-string v11, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v10, "network_management"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 649
    .local v2, b:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    .line 650
    .local v8, service:Landroid/os/INetworkManagementService;
    const/4 v10, 0x0

    new-array v6, v10, [Ljava/lang/String;

    .line 653
    .local v6, ifaces:[Ljava/lang/String;
    :try_start_0
    invoke-interface {v8}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 659
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v5, v1, v4

    .line 660
    .local v5, iface:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v10, v5}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 661
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 664
    .local v9, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 665
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ActiveSync] onReceive() Untether on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V
    invoke-static {v10, v5}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    .line 659
    .end local v9           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 654
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #iface:Ljava/lang/String;
    .end local v7           #len$:I
    :catch_0
    move-exception v3

    .line 655
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 671
    .end local v2           #b:Landroid/os/IBinder;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #ifaces:[Ljava/lang/String;
    .end local v8           #service:Landroid/os/INetworkManagementService;
    :cond_a
    const-string v10, "Tethering"

    const-string v11, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
