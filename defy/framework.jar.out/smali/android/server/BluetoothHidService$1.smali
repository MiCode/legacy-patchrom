.class Landroid/server/BluetoothHidService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothHidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothHidService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothHidService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v5, -0x8000

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, state:I
    packed-switch v3, :pswitch_data_0

    .end local v3           #state:I
    :cond_0
    :goto_0
    return-void

    .restart local v3       #state:I
    :pswitch_0
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    #calls: Landroid/server/BluetoothHidService;->onBluetoothEnable()V
    invoke-static {v4}, Landroid/server/BluetoothHidService;->access$000(Landroid/server/BluetoothHidService;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    #calls: Landroid/server/BluetoothHidService;->onBluetoothDisable()V
    invoke-static {v4}, Landroid/server/BluetoothHidService;->access$100(Landroid/server/BluetoothHidService;)V

    goto :goto_0

    .end local v3           #state:I
    :cond_1
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v2, :cond_2

    const-string v4, "BluetoothHidService"

    const-string v5, "No device specified in intent BOND_STATE_CHANGED, ignore."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, bondState:I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/server/BluetoothHidService;->setHidPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Landroid/server/BluetoothHidService$1;->this$0:Landroid/server/BluetoothHidService;

    const/16 v5, 0x64

    invoke-virtual {v4, v2, v5}, Landroid/server/BluetoothHidService;->setHidPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
