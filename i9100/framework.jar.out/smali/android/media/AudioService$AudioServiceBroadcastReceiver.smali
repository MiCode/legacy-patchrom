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
    .line 2320
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2320
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2323
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2325
    .local v3, action:Ljava/lang/String;
    const-string v17, "action=%s"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    const-string v17, "android.intent.action.DOCK_EVENT"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2328
    const-string v17, "android.intent.extra.DOCK_STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2331
    .local v10, dockState:I
    packed-switch v10, :pswitch_data_0

    .line 2340
    const/4 v8, 0x0

    .line 2342
    .local v8, config:I
    :goto_0
    const/16 v17, 0x3

    move/from16 v0, v17

    move v1, v8

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2644
    .end local v8           #config:I
    .end local v10           #dockState:I
    .end local p1
    :cond_0
    :goto_1
    return-void

    .line 2333
    .restart local v10       #dockState:I
    .restart local p1
    :pswitch_0
    const/4 v8, 0x7

    .line 2334
    .restart local v8       #config:I
    goto :goto_0

    .line 2336
    .end local v8           #config:I
    :pswitch_1
    const/4 v8, 0x6

    .line 2337
    .restart local v8       #config:I
    goto :goto_0

    .line 2343
    .end local v8           #config:I
    .end local v10           #dockState:I
    :cond_1
    const-string v17, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2344
    const-string v17, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2346
    .local v16, state:I
    const-string v17, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 2347
    .local v6, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 2348
    .local v4, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x80

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x80

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    move/from16 v12, v17

    .line 2351
    .local v12, isConnected:Z
    :goto_2
    if-eqz v12, :cond_4

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 2353
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2354
    if-nez v16, :cond_0

    .line 2358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v4

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2348
    .end local v12           #isConnected:Z
    :cond_2
    const/16 v17, 0x0

    move/from16 v12, v17

    goto :goto_2

    .line 2362
    .restart local v12       #isConnected:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v4

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2364
    :cond_4
    if-nez v12, :cond_0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 2367
    :cond_5
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)V

    .line 2370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v4

    #setter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4902(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 2379
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v4

    #calls: Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$5100(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2374
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #calls: Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)V

    .line 2376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v18, v0

    #getter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_3

    .line 2381
    .end local v4           #address:Ljava/lang/String;
    .end local v6           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v12           #isConnected:Z
    .end local v16           #state:I
    .restart local p1
    :cond_8
    const-string v17, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 2382
    const-string v17, "android.bluetooth.headset.extra.STATE"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2384
    .restart local v16       #state:I
    const/16 v9, 0x10

    .line 2385
    .local v9, device:I
    const-string v17, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 2386
    .restart local v6       #btDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v4, 0x0

    .line 2387
    .restart local v4       #address:Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 2388
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 2389
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    .line 2390
    .local v5, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v5, :cond_9

    .line 2391
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 2403
    .end local v5           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x1

    move/from16 v12, v17

    .line 2406
    .restart local v12       #isConnected:Z
    :goto_5
    if-eqz v12, :cond_b

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    .line 2407
    const/16 v17, 0x0

    move v0, v9

    move/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static/range {v17 .. v18}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioService;->clearAllScoClients()V

    goto/16 :goto_1

    .line 2394
    .end local v12           #isConnected:Z
    .restart local v5       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local p1
    :sswitch_0
    const/16 v9, 0x20

    .line 2395
    goto :goto_4

    .line 2397
    :sswitch_1
    const/16 v9, 0x40

    goto :goto_4

    .line 2403
    .end local v5           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local p1
    :cond_a
    const/16 v17, 0x0

    move/from16 v12, v17

    goto :goto_5

    .line 2413
    .restart local v12       #isConnected:Z
    :cond_b
    if-nez v12, :cond_0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 2414
    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    new-instance v18, Ljava/lang/Integer;

    move-object/from16 v0, v18

    move v1, v9

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static/range {v17 .. v18}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .line 2420
    .end local v4           #address:Ljava/lang/String;
    .end local v6           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v9           #device:I
    .end local v12           #isConnected:Z
    .end local v16           #state:I
    .restart local p1
    :cond_c
    const-string v17, "android.intent.action.HEADSET_PLUG"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 2421
    const-string/jumbo v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2422
    .restart local v16       #state:I
    const-string/jumbo v17, "microphone"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2424
    .local v13, microphone:I
    if-eqz v13, :cond_e

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2426
    .restart local v12       #isConnected:Z
    if-nez v16, :cond_d

    if-eqz v12, :cond_d

    .line 2427
    const/16 v17, 0x4

    const/16 v18, 0x0

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioService;->headsetToggle(Z)V

    goto/16 :goto_1

    .line 2434
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 2435
    const/16 v17, 0x4

    const/16 v18, 0x1

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    new-instance v18, Ljava/lang/Integer;

    const/16 v19, 0x4

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioService;->headsetToggle(Z)V

    goto/16 :goto_1

    .line 2444
    .end local v12           #isConnected:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2445
    .restart local v12       #isConnected:Z
    if-nez v16, :cond_f

    if-eqz v12, :cond_f

    .line 2446
    const/16 v17, 0x8

    const/16 v18, 0x0

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioService;->headsetToggle(Z)V

    goto/16 :goto_1

    .line 2453
    :cond_f
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 2454
    const/16 v17, 0x8

    const/16 v18, 0x1

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    new-instance v18, Ljava/lang/Integer;

    const/16 v19, 0x8

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/media/AudioService;->headsetToggle(Z)V

    goto/16 :goto_1

    .line 2463
    .end local v12           #isConnected:Z
    .end local v13           #microphone:I
    .end local v16           #state:I
    :cond_10
    const-string v17, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 2464
    const-string v17, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2466
    .restart local v16       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v17

    monitor-enter v17

    .line 2467
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v18, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_11

    .line 2468
    packed-switch v16, :pswitch_data_1

    .line 2476
    const/16 v16, -0x1

    .line 2479
    :goto_6
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 2480
    new-instance v14, Landroid/content/Intent;

    const-string v18, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2481
    .local v14, newIntent:Landroid/content/Intent;
    const-string v18, "android.media.extra.SCO_AUDIO_STATE"

    move-object v0, v14

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v18, v0

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2485
    .end local v14           #newIntent:Landroid/content/Intent;
    :cond_11
    monitor-exit v17

    goto/16 :goto_1

    :catchall_0
    move-exception v18

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 2470
    :pswitch_2
    const/16 v16, 0x1

    .line 2471
    goto :goto_6

    .line 2473
    :pswitch_3
    const/16 v16, 0x0

    .line 2474
    goto :goto_6

    .line 2487
    .end local v16           #state:I
    :cond_12
    const-string v17, "android.intent.action.HDMI_PLUG"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 2488
    const-string/jumbo v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2490
    .restart local v16       #state:I
    const-string v17, "AudioService"

    const-string v18, "ACTION_HDMI_PLUG receive !!!  : "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x2000

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2493
    .restart local v12       #isConnected:Z
    if-nez v16, :cond_13

    if-eqz v12, :cond_13

    .line 2494
    const-string v17, "AudioService"

    const-string v18, "ACTION_HDMI_PLUG - disconnected "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    const/16 v17, 0x2000

    const/16 v18, 0x0

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x2000

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2499
    :cond_13
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 2500
    const-string v17, "AudioService"

    const-string v18, "ACTION_HDMI_PLUG - connected "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    const/16 v17, 0x2000

    const/16 v18, 0x1

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    new-instance v18, Ljava/lang/Integer;

    const/16 v19, 0x2000

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2507
    .end local v12           #isConnected:Z
    .end local v16           #state:I
    :cond_14
    const-string v17, "HDMI_CONNECTED"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 2508
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x2000

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2509
    .restart local v12       #isConnected:Z
    if-nez v12, :cond_0

    .line 2510
    const-string v17, "AudioService"

    const-string v18, "HDMI CONNECTED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    const/16 v17, 0x2000

    const/16 v18, 0x1

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    new-instance v18, Ljava/lang/Integer;

    const/16 v19, 0x2000

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2516
    .end local v12           #isConnected:Z
    :cond_15
    const-string v17, "HDMI_DISCONNECTED"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 2517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x2000

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2518
    .restart local v12       #isConnected:Z
    if-eqz v12, :cond_0

    .line 2519
    const-string v17, "AudioService"

    const-string v18, "HDMI DISCONNECTED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    const/16 v17, 0x2000

    const/16 v18, 0x0

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x2000

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2525
    .end local v12           #isConnected:Z
    :cond_16
    const-string v17, "android.intent.action.TVOUT_PLUG"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 2526
    const-string/jumbo v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2527
    .restart local v16       #state:I
    const-string v17, "AudioService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "TVOUT_PLUG evt state : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x800

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2530
    .restart local v12       #isConnected:Z
    if-nez v16, :cond_17

    if-eqz v12, :cond_17

    .line 2531
    const/16 v17, 0x800

    const/16 v18, 0x0

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x800

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2535
    :cond_17
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 2536
    const/16 v17, 0x800

    const/16 v18, 0x1

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    new-instance v18, Ljava/lang/Integer;

    const/16 v19, 0x800

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2542
    .end local v12           #isConnected:Z
    .end local v16           #state:I
    :cond_18
    const-string v17, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 2543
    const-string/jumbo v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2544
    .restart local v16       #state:I
    const-string v17, "AudioService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EXTRA_DOCK_SPEAKER evt state : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x1000

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2547
    .restart local v12       #isConnected:Z
    if-nez v16, :cond_19

    if-eqz v12, :cond_19

    .line 2548
    const/16 v17, 0x1000

    const/16 v18, 0x0

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    const/16 v18, 0x1000

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2552
    :cond_19
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 2553
    const/16 v17, 0x1000

    const/16 v18, 0x1

    const-string v19, ""

    invoke-static/range {v17 .. v19}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2556
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v17

    new-instance v18, Ljava/lang/Integer;

    const/16 v19, 0x1000

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2561
    .end local v12           #isConnected:Z
    .end local v16           #state:I
    :cond_1a
    const-string v17, "android.intent.action.BOOT_COMPLETED"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 2562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Landroid/media/AudioService;->boot_complete_flag:Z
    invoke-static/range {v17 .. v18}, Landroid/media/AudioService;->access$5202(Landroid/media/AudioService;Z)Z

    .line 2563
    const-string/jumbo v17, "ro.csc.sales_code"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2564
    .local v15, salescode:Ljava/lang/String;
    if-nez v15, :cond_1c

    .line 2565
    const-string v17, "AudioService"

    const-string v18, "can not get salescode"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    :cond_1b
    :goto_7
    const-string v17, "AudioService"

    const-string v18, "android.intent.action.BOOT_COMPLETED: BOOT_COMPLETED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2567
    :cond_1c
    const/4 v11, 0x0

    .local v11, i:I
    :goto_8
    invoke-static {}, Landroid/media/AudioService;->access$5300()[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_1b

    .line 2568
    invoke-static {}, Landroid/media/AudioService;->access$5300()[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, v11

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 2570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static/range {v17 .. v18}, Landroid/media/AudioService;->access$5402(Landroid/media/AudioService;Z)Z

    goto :goto_7

    .line 2567
    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 2579
    .end local v11           #i:I
    .end local v15           #salescode:Ljava/lang/String;
    :cond_1e
    const-string v17, "com.android.music.musicservicecommand"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 2580
    const-string v17, "AudioService"

    const-string/jumbo v18, "musicservicecommand"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2597
    :cond_1f
    const-string v17, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 2622
    sget-boolean v17, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    if-eqz v17, :cond_20

    const-string/jumbo v17, "omap.audio.voicerecord.vul.gain"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 2624
    const-string v17, "choice"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2625
    .local v7, choice:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2627
    .end local v7           #choice:Ljava/lang/String;
    :cond_20
    sget-boolean v17, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    if-eqz v17, :cond_21

    const-string/jumbo v17, "omap.audio.voicerecord.vdl.gain"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 2629
    const-string v17, "choice"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2630
    .restart local v7       #choice:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2632
    .end local v7           #choice:Ljava/lang/String;
    :cond_21
    sget-boolean v17, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    if-eqz v17, :cond_22

    const-string/jumbo v17, "omap.audio.voicerecord.mm.gain"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 2634
    const-string v17, "choice"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2635
    .restart local v7       #choice:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2637
    .end local v7           #choice:Ljava/lang/String;
    :cond_22
    sget-boolean v17, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    if-eqz v17, :cond_0

    const-string/jumbo v17, "omap.audio.voicerecord.tone.gain"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2639
    const-string v17, "choice"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2640
    .restart local v7       #choice:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2391
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 2468
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
