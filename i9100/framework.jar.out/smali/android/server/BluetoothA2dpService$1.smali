.class Landroid/server/BluetoothA2dpService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 84
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    const-string v10, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 85
    const-string v10, "android.bluetooth.adapter.extra.STATE"

    const/high16 v11, -0x8000

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 87
    .local v8, state:I
    packed-switch v8, :pswitch_data_0

    .line 134
    .end local v8           #state:I
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 89
    .restart local v8       #state:I
    .restart local p1
    :pswitch_0
    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static {v10}, Landroid/server/BluetoothA2dpService;->access$000(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static {v10}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 95
    .end local v8           #state:I
    :cond_1
    const-string v10, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 96
    const-string v10, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v11, -0x8000

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 98
    .local v2, bondState:I
    packed-switch v2, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 105
    :pswitch_3
    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v11, -0x1

    invoke-virtual {v10, v3, v11}, Landroid/server/BluetoothA2dpService;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 100
    :pswitch_4
    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v10, v3}, Landroid/server/BluetoothA2dpService;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 101
    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    const/16 v11, 0x64

    invoke-virtual {v10, v3, v11}, Landroid/server/BluetoothA2dpService;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 108
    .end local v2           #bondState:I
    :cond_2
    const-string v10, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 111
    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 112
    .restart local v8       #state:I
    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v11, 0x0

    #calls: Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v10, v3, v8, v11}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 114
    .end local v8           #state:I
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 115
    .restart local p1
    :cond_4
    const-string v10, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 116
    const-string v10, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 117
    .local v9, streamType:I
    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 118
    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v10}, Landroid/server/BluetoothA2dpService;->getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 119
    .local v7, sinks:[Landroid/bluetooth/BluetoothDevice;
    array-length v10, v7

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v11, 0x0

    aget-object v11, v7, v11

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v10, v11}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 120
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, address:Ljava/lang/String;
    const-string v10, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 123
    .local v4, newVolLevel:I
    const-string v10, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 125
    .local v5, oldVolLevel:I
    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v10}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, path:Ljava/lang/String;
    if-le v4, v5, :cond_5

    .line 127
    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v10, v6}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 128
    :cond_5
    if-ge v4, v5, :cond_0

    .line 129
    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v10, v6}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 98
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
