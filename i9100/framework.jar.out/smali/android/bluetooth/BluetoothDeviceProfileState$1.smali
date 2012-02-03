.class Landroid/bluetooth/BluetoothDeviceProfileState$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0x66

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 119
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v7, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 122
    const-string v7, "android.bluetooth.headset.extra.STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 123
    .local v4, newState:I
    const-string v7, "android.bluetooth.headset.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 124
    .local v5, oldState:I
    const-string v7, "android.bluetooth.headset.extra.DISCONNECT_INITIATOR"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 128
    .local v2, initiator:I
    if-ne v4, v9, :cond_2

    .line 129
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v7, v10}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$600(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 131
    :cond_2
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v7, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$702(Landroid/bluetooth/BluetoothDeviceProfileState;I)I

    .line 132
    if-nez v4, :cond_3

    if-nez v2, :cond_3

    .line 134
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 136
    :cond_3
    if-eq v4, v9, :cond_4

    if-nez v4, :cond_0

    .line 138
    :cond_4
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v11}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_0

    .line 140
    .end local v2           #initiator:I
    .end local v4           #newState:I
    .end local v5           #oldState:I
    :cond_5
    const-string v7, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 141
    const-string v7, "android.bluetooth.a2dp.extra.SINK_STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 142
    .restart local v4       #newState:I
    const-string v7, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 143
    .restart local v5       #oldState:I
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpState:I
    invoke-static {v7, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$802(Landroid/bluetooth/BluetoothDeviceProfileState;I)I

    .line 145
    if-ne v4, v9, :cond_6

    .line 146
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V
    invoke-static {v7, v10}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$600(Landroid/bluetooth/BluetoothDeviceProfileState;I)V

    .line 148
    :cond_6
    if-eq v5, v9, :cond_7

    const/4 v7, 0x4

    if-ne v5, v7, :cond_8

    :cond_7
    if-nez v4, :cond_8

    .line 151
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 153
    :cond_8
    if-eq v4, v9, :cond_9

    if-nez v4, :cond_0

    .line 155
    :cond_9
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v11}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_0

    .line 157
    .end local v4           #newState:I
    .end local v5           #oldState:I
    :cond_a
    const-string v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 160
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v11}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_0

    .line 161
    :cond_b
    const-string v7, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 162
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 163
    const-string v7, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 165
    .local v6, val:I
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v8, 0x68

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 166
    .local v3, msg:Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 167
    iget-object v7, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v7, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
