.class Lcom/android/phone/BluetoothHeadsetService$6;
.super Landroid/bluetooth/IBluetoothHeadset$Stub;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 11
    .parameter "device"

    .prologue
    const/4 v10, 0x1

    .line 744
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v9

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 747
    .local v7, cachedHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-nez v7, :cond_0

    .line 748
    const-string v1, "BT HSHFP"

    const-string v2, "Cached Headset is Null in acceptIncomingConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v1, 0x0

    monitor-exit v9

    .line 761
    :goto_0
    return v1

    .line 751
    :cond_0
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$800(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    move-result-object v8

    .line 752
    .local v8, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    new-instance v0, Landroid/bluetooth/HeadsetBase;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget v4, v8, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v5, v8, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 755
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v2, 0x2

    const/4 v3, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$2200(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 757
    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v7, v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2302(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 758
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$700(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/BluetoothHandsfree;->connectHeadset(Landroid/bluetooth/HeadsetBase;I)V

    .line 760
    const-string v1, "Successfully used incoming connection"

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Ljava/lang/String;)V

    .line 761
    monitor-exit v9

    move v1, v10

    goto :goto_0

    .line 762
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    .end local v7           #cachedHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .end local v8           #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelConnectThread()Z
    .locals 4

    .prologue
    .line 766
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 767
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 769
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 775
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1902(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 777
    :cond_0
    const/4 v2, 0x1

    monitor-exit v1

    return v2

    .line 772
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 773
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "BT HSHFP"

    const-string v3, "Connection cancelled twice?"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 778
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 623
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 627
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetooth;->connectHeadset(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :try_start_1
    monitor-exit v1

    move v1, v2

    .line 630
    :goto_0
    return v1

    .line 628
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 629
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BT HSHFP"

    const-string v3, "connectHeadset"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 632
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public connectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v7, 0x1

    .line 782
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v3

    .line 783
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 784
    .local v0, currDevice:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 785
    new-instance v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {v1, v4}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    .line 786
    .local v1, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v5, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v4, p1, v5}, Lcom/android/phone/BluetoothHeadsetService;->access$2600(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 789
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    if-nez v4, :cond_0

    .line 792
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 793
    .local v2, msg:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 794
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 795
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$2700(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x5dc

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 799
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    monitor-exit v3

    move v3, v7

    .line 805
    .end local v1           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .end local p0
    :goto_1
    return v3

    .line 797
    .restart local v1       #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .restart local p0
    :cond_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v4, p1}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 806
    .end local v0           #currDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .end local p0
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 801
    .restart local v0       #currDevice:Landroid/bluetooth/BluetoothDevice;
    .restart local p0
    :cond_1
    :try_start_1
    const-string v4, "BT HSHFP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectHeadset("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): failed: already in state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {p0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with headset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v4, 0x0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_1
.end method

.method public createIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 10
    .parameter "device"

    .prologue
    const/4 v9, 0x1

    .line 728
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v8

    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v2, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v1, p1, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$2600(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 732
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$800(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    move-result-object v7

    .line 733
    .local v7, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    new-instance v0, Landroid/bluetooth/HeadsetBase;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget v4, v7, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v5, v7, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 737
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2302(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 739
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 740
    monitor-exit v8

    return v9

    .line 741
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    .end local v7           #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 635
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 639
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetooth;->disconnectHeadset(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 644
    return-void

    .line 640
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 641
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BT HSHFP"

    const-string v3, "disconnectHeadset"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 643
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 810
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v2

    .line 811
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 812
    .local v1, remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-nez v1, :cond_0

    monitor-exit v2

    move v2, v4

    .line 843
    :goto_0
    return v2

    .line 814
    :cond_0
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 822
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2300(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/HeadsetBase;

    move-result-object v0

    .line 823
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$700(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 824
    const-string v3, "+CIEV: 7,3"

    invoke-virtual {v0, v3}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 827
    :cond_1
    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 829
    const/4 v0, 0x0

    .line 831
    :cond_2
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;III)V
    invoke-static {v3, p1, v4, v5, v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;III)V

    .line 834
    monitor-exit v2

    move v2, v7

    goto :goto_0

    .line 835
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    :cond_3
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 838
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;III)V
    invoke-static {v3, p1, v4, v5, v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;III)V

    .line 841
    monitor-exit v2

    move v2, v7

    goto :goto_0

    .line 843
    :cond_4
    monitor-exit v2

    move v2, v4

    goto :goto_0

    .line 844
    .end local v1           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getBatteryUsageHint()I
    .locals 3

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-static {}, Landroid/bluetooth/HeadsetBase;->getAtInputCount()I

    move-result v0

    return v0
.end method

.method public getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getHeadsetFeature(I)I
    .locals 3
    .parameter "feature"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHfExtFeatureBitmap:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$2400(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v0

    .line 696
    :goto_0
    return v0

    .line 693
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHfRvcBitmap:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$2500(Lcom/android/phone/BluetoothHeadsetService;)I

    move-result v0

    goto :goto_0

    .line 696
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 703
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 706
    .local v0, priority:I
    monitor-exit v1

    return v0

    .line 707
    .end local v0           #priority:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 611
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 613
    .local v0, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-nez v0, :cond_0

    .line 614
    const/4 v1, 0x0

    .line 616
    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 646
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 649
    .local v0, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-eqz v0, :cond_0

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHeadsetFeature(II)V
    .locals 3
    .parameter "feature"
    .parameter "value"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHfExtFeatureBitmap:I
    invoke-static {v0, p2}, Lcom/android/phone/BluetoothHeadsetService;->access$2402(Lcom/android/phone/BluetoothHeadsetService;I)I

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHfRvcBitmap:I
    invoke-static {v0, p2}, Lcom/android/phone/BluetoothHeadsetService;->access$2502(Lcom/android/phone/BluetoothHeadsetService;I)I

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .parameter "device"
    .parameter "priority"

    .prologue
    const/4 v3, 0x0

    .line 711
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v0

    .line 714
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    monitor-exit v0

    move v0, v3

    .line 724
    :goto_0
    return v0

    .line 717
    :cond_0
    if-gez p2, :cond_1

    .line 718
    monitor-exit v0

    move v0, v3

    goto :goto_0

    .line 720
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Ljava/lang/String;)V

    .line 724
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 725
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startVoiceRecognition()Z
    .locals 4

    .prologue
    .line 652
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v2

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 656
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 658
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    .line 660
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->startVoiceRecognition()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 661
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopVoiceRecognition()Z
    .locals 4

    .prologue
    .line 664
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v2

    .line 666
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 668
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 670
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    .line 673
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->stopVoiceRecognition()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 674
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
