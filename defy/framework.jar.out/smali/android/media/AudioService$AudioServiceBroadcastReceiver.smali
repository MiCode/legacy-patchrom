.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .local v3, action:Ljava/lang/String;
    const-string v16, "com.motorola.fmradio.state"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    const-string v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    #setter for: Landroid/media/AudioService;->mFMRadioRuning:Z
    invoke-static/range {v16 .. v17}, Landroid/media/AudioService;->access$4602(Landroid/media/AudioService;Z)Z

    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :cond_1
    const-string v16, "com.motorola.internal.intent.action.MOT_DOCK_EVENT"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    const-string v17, "com.motorola.internal.intent.extra.DOCK_STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    #setter for: Landroid/media/AudioService;->mDockState:I
    invoke-static/range {v16 .. v17}, Landroid/media/AudioService;->access$3702(Landroid/media/AudioService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mDockState:I
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    const/4 v7, 0x0

    .local v7, config:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mDockState:I
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)I

    move-result v16

    if-eqz v16, :cond_2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DockState="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mDockState:I
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_2
    const/16 v16, 0x3

    move/from16 v0, v16

    move v1, v7

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mDockState:I
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)I

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "DockState=0"

    invoke-static/range {v16 .. v16}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .end local v7           #config:I
    :pswitch_0
    const/4 v7, 0x7

    .restart local v7       #config:I
    goto :goto_1

    .end local v7           #config:I
    :pswitch_1
    const/4 v7, 0x6

    .restart local v7       #config:I
    goto :goto_1

    .end local v7           #config:I
    :cond_3
    const-string v16, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const-string v16, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .local v13, state:I
    const-string v16, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .local v6, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .local v4, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    const/16 v17, 0x80

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    const/16 v17, 0x80

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    move/from16 v10, v16

    .local v10, isConnected:Z
    :goto_2
    if-eqz v10, :cond_6

    const/16 v16, 0x2

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    const/16 v16, 0x4

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v16

    if-eqz v16, :cond_5

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v10           #isConnected:Z
    :cond_4
    const/16 v16, 0x0

    move/from16 v10, v16

    goto :goto_2

    .restart local v10       #isConnected:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-nez v10, :cond_0

    const/16 v16, 0x2

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    const/16 v16, 0x4

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    :cond_7
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v16

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    #setter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4902(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    #calls: Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$5100(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #calls: Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v17

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static/range {v16 .. v17}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_3

    .end local v4           #address:Ljava/lang/String;
    .end local v6           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #isConnected:Z
    .end local v13           #state:I
    .restart local p1
    :cond_a
    const-string v16, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const-string v16, "android.bluetooth.headset.extra.STATE"

    const/16 v17, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .restart local v13       #state:I
    const/16 v8, 0x10

    .local v8, device:I
    const-string v16, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .restart local v6       #btDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v4, 0x0

    .restart local v4       #address:Ljava/lang/String;
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    .local v5, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    .end local v5           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x1

    move/from16 v10, v16

    .restart local v10       #isConnected:Z
    :goto_5
    if-eqz v10, :cond_d

    const/16 v16, 0x2

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    const/16 v16, 0x0

    move v0, v8

    move/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static/range {v16 .. v17}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioService;->clearAllScoClients()V

    goto/16 :goto_0

    .end local v10           #isConnected:Z
    .restart local v5       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local p1
    :sswitch_0
    const/16 v8, 0x20

    goto :goto_4

    :sswitch_1
    const/16 v8, 0x40

    goto :goto_4

    .end local v5           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local p1
    :cond_c
    const/16 v16, 0x0

    move/from16 v10, v16

    goto :goto_5

    .restart local v10       #isConnected:Z
    :cond_d
    if-nez v10, :cond_0

    const/16 v16, 0x2

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    const/16 v16, 0x1

    move v0, v8

    move/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v0, v17

    move v1, v8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static/range {v16 .. v17}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    goto/16 :goto_0

    .end local v4           #address:Ljava/lang/String;
    .end local v6           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v8           #device:I
    .end local v10           #isConnected:Z
    .end local v13           #state:I
    .restart local p1
    :cond_e
    const-string v16, "android.intent.action.HEADSET_PLUG"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const-string v16, "state"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .restart local v13       #state:I
    const-string v16, "microphone"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .local v11, microphone:I
    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .restart local v10       #isConnected:Z
    if-nez v13, :cond_f

    if-eqz v10, :cond_f

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v18, ""

    invoke-static/range {v16 .. v18}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_f
    const/16 v16, 0x1

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    if-nez v10, :cond_0

    const-string v16, "true"

    const-string v17, "ro.mot.fid.30544.tty"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "preferred_tty_mode"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    packed-switch v16, :pswitch_data_1

    const-string v14, "off"

    .local v14, tty_mode:Ljava/lang/String;
    :goto_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "tty_mode="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .end local v14           #tty_mode:Ljava/lang/String;
    :cond_10
    const/16 v16, 0x4

    const/16 v17, 0x1

    const-string v18, ""

    invoke-static/range {v16 .. v18}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    new-instance v17, Ljava/lang/Integer;

    const/16 v18, 0x4

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_2
    const-string v14, "full"

    .restart local v14       #tty_mode:Ljava/lang/String;
    goto :goto_6

    .end local v14           #tty_mode:Ljava/lang/String;
    :pswitch_3
    const-string v14, "vco"

    .restart local v14       #tty_mode:Ljava/lang/String;
    goto :goto_6

    .end local v14           #tty_mode:Ljava/lang/String;
    :pswitch_4
    const-string v14, "hco"

    .restart local v14       #tty_mode:Ljava/lang/String;
    goto :goto_6

    .end local v10           #isConnected:Z
    .end local v14           #tty_mode:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .restart local v10       #isConnected:Z
    if-nez v13, :cond_12

    if-eqz v10, :cond_12

    const/16 v16, 0x8

    const/16 v17, 0x0

    const-string v18, ""

    invoke-static/range {v16 .. v18}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_12
    const/16 v16, 0x1

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    if-nez v10, :cond_0

    const/16 v16, 0x8

    const/16 v17, 0x1

    const-string v18, ""

    invoke-static/range {v16 .. v18}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    new-instance v17, Ljava/lang/Integer;

    const/16 v18, 0x8

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v10           #isConnected:Z
    .end local v11           #microphone:I
    .end local v13           #state:I
    :cond_13
    const-string v16, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    const-string v16, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/16 v17, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .restart local v13       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v16

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_14

    packed-switch v13, :pswitch_data_2

    const/4 v13, -0x1

    :goto_7
    const/16 v17, -0x1

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_14

    new-instance v12, Landroid/content/Intent;

    const-string v17, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, newIntent:Landroid/content/Intent;
    const-string v17, "android.media.extra.SCO_AUDIO_STATE"

    move-object v0, v12

    move-object/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .end local v12           #newIntent:Landroid/content/Intent;
    :cond_14
    monitor-exit v16

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    :pswitch_5
    const/4 v13, 0x1

    goto :goto_7

    :pswitch_6
    const/4 v13, 0x0

    goto :goto_7

    .end local v13           #state:I
    :cond_15
    const-string v16, "true"

    const-string v17, "ro.mot.fid.30544.tty"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const-string v16, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "preferred_tty_mode"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    packed-switch v16, :pswitch_data_3

    const-string v14, "off"

    .restart local v14       #tty_mode:Ljava/lang/String;
    :goto_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "tty_mode="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v14           #tty_mode:Ljava/lang/String;
    :pswitch_7
    const-string v14, "full"

    .restart local v14       #tty_mode:Ljava/lang/String;
    goto :goto_8

    .end local v14           #tty_mode:Ljava/lang/String;
    :pswitch_8
    const-string v14, "vco"

    .restart local v14       #tty_mode:Ljava/lang/String;
    goto :goto_8

    .end local v14           #tty_mode:Ljava/lang/String;
    :pswitch_9
    const-string v14, "hco"

    .restart local v14       #tty_mode:Ljava/lang/String;
    goto :goto_8

    .end local v14           #tty_mode:Ljava/lang/String;
    :cond_16
    const-string v16, "com.motorola.internal.intent.action.MOT_BASIC_DOCK_AUDIO_PLUG"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    const-string v16, "AudioService"

    const-string v17, "Broadcast Receiver: Got ACTION_MOT_BASIC_DOCK_AUDIO_PLUG"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "state"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .restart local v13       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    const/16 v17, 0x800

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .restart local v10       #isConnected:Z
    if-nez v13, :cond_17

    if-eqz v10, :cond_17

    const-string v16, "AudioService"

    const-string v17, "Broadcast Receiver: For MOT_BASIC_DOCK_AUDIO_PLUG State = 0 && isConnected = TRUE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x800

    const/16 v17, 0x0

    const-string v18, ""

    invoke-static/range {v16 .. v18}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    const/16 v17, 0x800

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_17
    const/16 v16, 0x1

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    if-nez v10, :cond_0

    const-string v16, "AudioService"

    const-string v17, "Broadcast Receiver: For MOT_BASIC_DOCK_AUDIO_PLUG State = 1 && isConnected = FALSE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x800

    const/16 v17, 0x1

    const-string v18, ""

    invoke-static/range {v16 .. v18}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    new-instance v17, Ljava/lang/Integer;

    const/16 v18, 0x800

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v10           #isConnected:Z
    .end local v13           #state:I
    :cond_18
    const-string v16, "com.motorola.internal.intent.action.MOT_SMART_DOCK_SPDIF_PLUG"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    const-string v16, "AudioService"

    const-string v17, "Broadcast Receiver: Got ACTION_MOT_SMART_DOCK_SPDIF_PLUG"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "state"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .restart local v13       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    const/16 v17, 0x400

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .restart local v10       #isConnected:Z
    if-nez v13, :cond_19

    if-eqz v10, :cond_19

    const-string v16, "AudioService"

    const-string v17, "Broadcast Receiver: For MOT_SMART_DOCK_SPDIF_PLUG State = 0 && isConnected = TRUE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x400

    const/16 v17, 0x0

    const-string v18, ""

    invoke-static/range {v16 .. v18}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    const/16 v17, 0x400

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_19
    const/16 v16, 0x1

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    if-nez v10, :cond_0

    const-string v16, "AudioService"

    const-string v17, "Broadcast Receiver: For MOT_SMART_DOCK_SPDIF_PLUG State = 1 && isConnected = FALSE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x400

    const/16 v17, 0x1

    const-string v18, ""

    invoke-static/range {v16 .. v18}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    new-instance v17, Ljava/lang/Integer;

    const/16 v18, 0x400

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v10           #isConnected:Z
    .end local v13           #state:I
    :cond_1a
    const-string v16, "com.motorola.intent.action.EXTDISP_STATUS_DISPLAY"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    const-string v16, "AudioService"

    const-string v17, "Broadcast Receiver: Got action EXTDISP_STATUS_DISPLAY"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "audio"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .local v13, state:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    const/16 v17, 0x1000

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .restart local v10       #isConnected:Z
    if-nez v13, :cond_1b

    if-eqz v10, :cond_1b

    const-string v16, "AudioService"

    const-string v17, "Broadcast Receiver: For HDMI Audio State = 0 && isConnected = TRUE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1000

    const/16 v17, 0x0

    const-string v18, ""

    invoke-static/range {v16 .. v18}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    const/16 v17, 0x1000

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1b
    const/16 v16, 0x1

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    if-nez v10, :cond_0

    const-string v16, "AudioService"

    const-string v17, "Broadcast Receiver: For HDMI Audio State = 1 && isConnected = FALSE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1000

    const/16 v17, 0x1

    const-string v18, ""

    invoke-static/range {v16 .. v18}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    new-instance v17, Ljava/lang/Integer;

    const/16 v18, 0x1000

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v10           #isConnected:Z
    .end local v13           #state:Z
    :cond_1c
    const-string v16, "com.motorola.internal.intent.action.MEDIA_SPEAKER_ENABLE"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string v16, "enabled"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .local v9, enabled:Z
    const-string v16, "AudioService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Broadcase Receiver: Got action MEDIA_SPEAKER_ENABLE "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    move v0, v9

    move/from16 v1, v16

    if-ne v0, v1, :cond_1d

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Landroid/media/AudioService;->mForcedUseForMedia:I
    invoke-static/range {v16 .. v17}, Landroid/media/AudioService;->access$3902(Landroid/media/AudioService;I)I

    :goto_9
    new-instance v15, Landroid/content/Intent;

    const-string v16, "com.motorola.internal.intent.action.MEDIA_SPEAKER_STATE_CHANGE"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v15, update:Landroid/content/Intent;
    const-string v16, "enabled"

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v15           #update:Landroid/content/Intent;
    :cond_1d
    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Landroid/media/AudioService;->mForcedUseForMedia:I
    invoke-static/range {v16 .. v17}, Landroid/media/AudioService;->access$3902(Landroid/media/AudioService;I)I

    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
