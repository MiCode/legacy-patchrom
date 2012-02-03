.class Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    .line 107
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, bondState:I
    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    #calls: Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismissDialog()V
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    .line 137
    .end local v0           #bondState:I
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    const-string v3, "broadcom.android.bluetooth.intent.action.AGENT_CANCEL_USER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 124
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 125
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$100(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    :cond_3
    const v2, 0x7f080138

    .line 127
    .local v2, errorMsg:I
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$200(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    const v4, 0x7f080137

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;II)V

    .line 128
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    #calls: Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismissDialog()V
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    goto :goto_0

    .line 130
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #errorMsg:I
    :cond_4
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 132
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$100(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    :cond_5
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    #calls: Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismissDialog()V
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    goto :goto_0
.end method
