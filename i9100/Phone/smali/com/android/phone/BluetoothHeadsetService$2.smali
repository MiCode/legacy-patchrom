.class Lcom/android/phone/BluetoothHeadsetService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 257
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, -0x8000

    const/4 v8, -0x1

    const-string v11, "BT HSHFP"

    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 264
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 265
    .local v2, currDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v5, 0x0

    .line 266
    .local v5, state:I
    if-eqz v2, :cond_0

    .line 267
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v5

    .line 270
    :cond_0
    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    if-ne v5, v10, :cond_3

    :cond_1
    const-string v7, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 274
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    :cond_2
    :goto_0
    return-void

    .line 277
    :cond_3
    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 278
    const-string v7, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 280
    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->adjustPriorities()V
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)V

    .line 281
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z

    .line 282
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothEnabled()V

    goto :goto_0

    .line 286
    :pswitch_1
    if-eqz v2, :cond_4

    .line 287
    const-string v7, "BT HSHFP"

    const-string v7, "onReceive: ACTION_STATE_CHANGED: STATE_TURNING_OFF: setState"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :try_start_1
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothDisabled()V

    .line 297
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAudioGateway;->stop()V

    .line 306
    const-string v7, "BT HSHFP"

    const-string v7, "HSP/HFP profile has been disconnected."

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v4, i:Landroid/content/Intent;
    const-string v7, "android.bluetooth.device.extra.PROFILE"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v8, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v4, v8}, Lcom/android/phone/BluetoothHeadsetService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    .end local v4           #i:Landroid/content/Intent;
    :cond_5
    const-string v7, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 314
    const-string v7, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 316
    .local v1, bondState:I
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    .line 323
    :pswitch_3
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v7, v3, v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1500(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 318
    :pswitch_4
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    invoke-static {v7, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    if-ne v7, v8, :cond_2

    .line 319
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/16 v8, 0x64

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v7, v3, v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1500(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 326
    .end local v1           #bondState:I
    :cond_6
    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 327
    const-string v7, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 328
    .local v6, streamType:I
    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 329
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v7

    const-string v8, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/phone/BluetoothHandsfree;->sendScoGainUpdate(I)V

    goto/16 :goto_0

    .line 333
    .end local v6           #streamType:I
    :cond_7
    const-string v7, "android.bleutooth.device.action.UUID"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 334
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 337
    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v7, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 291
    :catch_0
    move-exception v7

    goto/16 :goto_1

    .line 275
    :catch_1
    move-exception v7

    goto/16 :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 316
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
