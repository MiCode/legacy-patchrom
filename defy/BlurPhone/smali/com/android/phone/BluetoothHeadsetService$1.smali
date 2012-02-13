.class Lcom/android/phone/BluetoothHeadsetService$1;
.super Landroid/os/Handler;
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
    .line 155
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 159
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    .line 160
    .local v11, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    const/4 v15, 0x0

    .line 161
    .local v15, type:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 170
    :goto_0
    const-string v3, "BT HSHFP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incoming rfcomm ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v15}, Lcom/android/phone/BluetoothHandsfree;->typeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") connection from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "on channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v12, 0x0

    .line 176
    .local v12, priority:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v3, v0

    iget-object v4, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    .line 177
    if-gtz v12, :cond_0

    .line 178
    const-string v3, "BT HSHFP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting incoming connection because priority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v2, Landroid/bluetooth/HeadsetBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v4, v0

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iget-object v5, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget v6, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v7, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 182
    .local v2, headset:Landroid/bluetooth/HeadsetBase;
    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 183
    monitor-exit v16

    .line 242
    .end local v2           #headset:Landroid/bluetooth/HeadsetBase;
    .end local p1
    :goto_1
    return-void

    .line 163
    .end local v12           #priority:I
    .restart local p1
    :pswitch_0
    const/4 v15, 0x1

    .line 164
    goto :goto_0

    .line 166
    :pswitch_1
    const/4 v15, 0x2

    goto :goto_0

    .line 187
    .restart local v12       #priority:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v3, v0

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 189
    .local v9, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v14, 0x0

    .line 190
    .local v14, state:I
    if-eqz v9, :cond_1

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v14

    .line 194
    :cond_1
    packed-switch v14, :pswitch_data_1

    .line 241
    :goto_2
    monitor-exit v16

    goto :goto_1

    .end local v9           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v11           #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    .end local v12           #priority:I
    .end local v14           #state:I
    .end local v15           #type:I
    :catchall_0
    move-exception v3

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 197
    .restart local v9       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v11       #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    .restart local v12       #priority:I
    .restart local v14       #state:I
    .restart local v15       #type:I
    :pswitch_2
    :try_start_1
    new-instance v13, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v3, v0

    invoke-direct {v13, v3, v15, v11}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;-><init>(Lcom/android/phone/BluetoothHeadsetService;ILandroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V

    .line 198
    .local v13, remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    iget-object v4, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetooth;->notifyIncomingConnection(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 203
    :catch_0
    move-exception v3

    move-object v10, v3

    .line 204
    .local v10, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "BT HSHFP"

    const-string v4, "notifyIncomingConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 208
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v13           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :pswitch_3
    iget-object v3, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v9}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 210
    const-string v3, "BT HSHFP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already attempting connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", disconnecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v2, Landroid/bluetooth/HeadsetBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v4, v0

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iget-object v5, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget v6, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v7, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 215
    .restart local v2       #headset:Landroid/bluetooth/HeadsetBase;
    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    goto/16 :goto_2

    .line 222
    .end local v2           #headset:Landroid/bluetooth/HeadsetBase;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    move-object/from16 v0, p1

    move v1, v15

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$702(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    move-object/from16 v0, p1

    move-object v1, v11

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$802(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    iget-object v4, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetooth;->notifyIncomingConnection(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 228
    :catch_1
    move-exception v3

    move-object v10, v3

    .line 229
    .restart local v10       #e:Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "BT HSHFP"

    const-string v4, "notifyIncomingConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 233
    .end local v10           #e:Landroid/os/RemoteException;
    :pswitch_4
    const-string v3, "BT HSHFP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", disconnecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v2, Landroid/bluetooth/HeadsetBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHeadsetService$1;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    move-object v4, v0

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iget-object v5, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget v6, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v7, v11, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 238
    .restart local v2       #headset:Landroid/bluetooth/HeadsetBase;
    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 194
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
