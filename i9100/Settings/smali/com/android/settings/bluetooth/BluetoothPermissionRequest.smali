.class public final Lcom/android/settings/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const v6, 0x7f080067

    const/4 v9, 0x1

    const v8, 0x1080080

    const/4 v7, 0x0

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 52
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 55
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-class v0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 57
    const/high16 v0, 0x1000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 64
    :goto_0
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 67
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->shouldShowDialogInForeground(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    :cond_0
    :goto_1
    return-void

    .line 61
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 76
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    const-string v1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    new-instance v1, Landroid/app/Notification;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v8, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 83
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 84
    :goto_2
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0806bf

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, p1, v4, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 88
    const/16 v2, 0x18

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 89
    iput v9, v1, Landroid/app/Notification;->defaults:I

    .line 90
    invoke-static {p1, v7, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 92
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 94
    invoke-virtual {p0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 83
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 96
    :cond_4
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 100
    invoke-virtual {p0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method
