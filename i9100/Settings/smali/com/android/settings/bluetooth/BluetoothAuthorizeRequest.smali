.class public Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAuthorizeRequest.java"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mService:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "broadcom.android.bluetooth.intent.TEMPORARY_KEY"

    const-string v6, "broadcom.android.bluetooth.intent.SERVICE"

    const-string v5, "broadcom.android.bluetooth.intent.DEVICE"

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 62
    const-string v1, "broadcom.android.bluetooth.intent.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 63
    const-string v1, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->mService:Ljava/lang/String;

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 66
    const v0, 0x7f0806d0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->mService:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 76
    const-string v0, "broadcom.android.bluetooth.intent.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 77
    const-string v0, "broadcom.android.bluetooth.intent.PAIRING_VARIANT"

    const/high16 v1, -0x100

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 78
    const-string v0, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "broadcom.android.bluetooth.intent.TEMPORARY_KEY"

    invoke-virtual {p2, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 85
    const-string v2, "sap_weak_linkkey"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    const-string v1, "BluetoothAuthorizeRequest"

    const-string v2, "Rejecting SAP connection authorization due to weak link key"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, v0, v3, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 88
    const v0, 0x7f08075d

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 93
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 94
    const-class v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 96
    const-string v3, "broadcom.android.bluetooth.intent.DEVICE"

    invoke-virtual {v2, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    const-string v3, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v0, "broadcom.android.bluetooth.intent.TEMPORARY_KEY"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const-string v0, "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
