.class public Lcom/android/settings/bluetooth/BluetoothRequestService;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothRequestService.java"


# instance fields
.field private mInForground:Z

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mNotificationMsg:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mInForground:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    const-string v2, "BluetoothServiceRequest"

    .line 78
    const-string v0, "BluetoothServiceRequest"

    const-string v0, "onReceive"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mResources:Landroid/content/res/Resources;

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "bt_svc_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "bluetooth_opp_service"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "BluetoothServiceRequest"

    const-string v0, "OPP access request handled by OPP application"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0806bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mNotificationMsg:Ljava/lang/String;

    .line 101
    const-class v0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/high16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "BluetoothServiceRequest"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown intent action:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
