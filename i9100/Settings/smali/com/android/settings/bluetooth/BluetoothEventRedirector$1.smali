.class Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEventRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    const-string v17, "BluetoothEventRedirector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, action:Ljava/lang/String;
    const-string v17, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 58
    .local v10, device:Landroid/bluetooth/BluetoothDevice;
    const-string v17, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 59
    const-string v17, "android.bluetooth.adapter.extra.STATE"

    const/high16 v18, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 61
    .local v16, state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    .line 158
    .end local v16           #state:I
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v17, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #calls: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->persistDiscoveringTimestamp()V
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$100(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 66
    :cond_2
    const-string v17, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #calls: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->persistDiscoveringTimestamp()V
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$100(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 70
    :cond_3
    const-string v17, "android.bluetooth.device.action.FOUND"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 71
    const-string v17, "android.bluetooth.device.extra.RSSI"

    const/16 v18, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v15

    .line 72
    .local v15, rssi:I
    const-string v17, "android.bluetooth.device.extra.CLASS"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothClass;

    .line 73
    .local v8, btClass:Landroid/bluetooth/BluetoothClass;
    const-string v17, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    move v2, v15

    move-object v3, v8

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceAppeared(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothClass;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    .end local v8           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v11           #name:Ljava/lang/String;
    .end local v15           #rssi:I
    :cond_4
    const-string v17, "android.bluetooth.device.action.DISAPPEARED"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 82
    :cond_5
    const-string v17, "android.bluetooth.device.action.NAME_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 85
    :cond_6
    const-string v17, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 86
    const-string v17, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v18, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 88
    .local v7, bondState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v9

    .line 89
    .local v9, cachedDeviceMgr:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {v9, v10, v7}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onBondingStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 90
    const/16 v17, 0xa

    move v0, v7

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->removeDockAutoConnectSetting(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$200(Lcom/android/settings/bluetooth/BluetoothEventRedirector;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 99
    invoke-virtual {v9, v10}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V

    .line 102
    :cond_7
    const-string v17, "android.bluetooth.device.extra.REASON"

    const/high16 v18, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 104
    .local v14, reason:I
    invoke-virtual {v9, v10, v14}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->showUnbondMessage(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 107
    .end local v7           #bondState:I
    .end local v9           #cachedDeviceMgr:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .end local v14           #reason:I
    :cond_8
    const-string v17, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 108
    const-string v17, "android.bluetooth.headset.extra.STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 109
    .local v12, newState:I
    const-string v17, "android.bluetooth.headset.extra.PREVIOUS_STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 110
    .local v13, oldState:I
    if-nez v12, :cond_9

    const/16 v17, 0x1

    move v0, v13

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 112
    const-string v17, "BluetoothEventRedirector"

    const-string v18, "Failed to connect BT headset"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v17

    sget-object v18, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v17

    move-object v1, v10

    move-object/from16 v2, v18

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0

    .line 118
    .end local v12           #newState:I
    .end local v13           #oldState:I
    :cond_a
    const-string v17, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 119
    const-string v17, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 120
    .restart local v12       #newState:I
    const-string v17, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 121
    .restart local v13       #oldState:I
    if-nez v12, :cond_b

    const/16 v17, 0x1

    move v0, v13

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 123
    const-string v17, "BluetoothEventRedirector"

    const-string v18, "Failed to connect BT A2DP"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v17

    sget-object v18, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v17

    move-object v1, v10

    move-object/from16 v2, v18

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0

    .line 129
    .end local v12           #newState:I
    .end local v13           #oldState:I
    :cond_c
    const-string v17, "android.bluetooth.device.action.CLASS_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 132
    :cond_d
    const-string v17, "android.bleutooth.device.action.UUID"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 142
    :cond_e
    const-string v17, "android.intent.action.DOCK_EVENT"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 144
    const/4 v6, 0x1

    .line 145
    .local v6, anythingButUnDocked:I
    const-string v17, "android.intent.extra.DOCK_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 146
    .restart local v16       #state:I
    if-nez v16, :cond_0

    .line 147
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 153
    .end local v6           #anythingButUnDocked:I
    .end local v16           #state:I
    :cond_f
    const-string v17, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 154
    const-string v17, "com.broadcom.bt.service.hid.extra.STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 155
    .restart local v12       #newState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v17

    sget-object v18, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v17

    move-object v1, v10

    move-object/from16 v2, v18

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0
.end method
