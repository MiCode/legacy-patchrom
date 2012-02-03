.class Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDevicePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0xc

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v3

    #calls: Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->onBluetoothStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->access$100(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;I)V

    .line 89
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 94
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->access$200(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Lcom/android/settings/ProgressCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDeviceList:Lcom/android/settings/ProgressCategory;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->access$200(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Lcom/android/settings/ProgressCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDevicePreferenceMap:Ljava/util/WeakHashMap;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->access$300(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Ljava/util/WeakHashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mDevicePreferenceMap:Ljava/util/WeakHashMap;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->access$300(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 102
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    #calls: Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->addDevices()V
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->access$400(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)V

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    .line 122
    :cond_2
    :goto_0
    return-void

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 109
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->finish()V

    goto :goto_0

    .line 112
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, bondState:I
    if-ne v0, v4, :cond_2

    .line 115
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 116
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->access$500(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    #calls: Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->access$600(Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;Landroid/bluetooth/BluetoothDevice;)V

    .line 118
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePickerDialog;->finish()V

    goto :goto_0
.end method
