.class Lcom/android/phone/BluetoothHeadsetService$3;
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
    .line 346
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    .line 349
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 351
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 352
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v3, v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 356
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 357
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v3

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isSLCconnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 358
    const-string v3, "BT HSHFP"

    const-string v4, "CONNECT_HFP_SLC_DELAYED. something wrong... send broadcast to connected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.headset.extra.PREVIOUS_STATE"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    const-string v3, "android.bluetooth.headset.extra.STATE"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 363
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$3;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Lcom/android/phone/BluetoothHeadsetService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
