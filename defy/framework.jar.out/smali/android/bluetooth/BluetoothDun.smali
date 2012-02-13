.class public Landroid/bluetooth/BluetoothDun;
.super Ljava/lang/Object;
.source "BluetoothDun.java"


# static fields
.field public static final DUN_PREVIOUS_STATE:Ljava/lang/String; = "com.motorola.android.bluetooth.dun.intent.DUN_PREVIOUS_STATE"

.field public static final DUN_STATE:Ljava/lang/String; = "com.motorola.android.bluetooth.dun.intent.DUN_STATE"

.field public static final DUN_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.motorola.android.bluetooth.dun.intent.action.DUN_STATE_CHANGED"

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothDun"


# instance fields
.field private final mService:Landroid/bluetooth/IBluetoothDun;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "bluetooth_dun"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    const-string v1, "BluetoothDun"

    const-string v2, "Bluetooth DUN service not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Landroid/bluetooth/IBluetoothDun$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    goto :goto_0
.end method

.method public static doesClassMatchDun(I)Z
    .locals 1
    .parameter "btClass"

    .prologue
    and-int/lit16 v0, p0, 0x1ffc

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x104 -> :sswitch_0
        0x108 -> :sswitch_0
        0x10c -> :sswitch_0
        0x110 -> :sswitch_0
        0x114 -> :sswitch_0
        0x118 -> :sswitch_0
    .end sparse-switch
.end method

.method private getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDun;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDun"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDunConnection()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothDun;->acceptDunConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "BluetoothDun"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public disconnectDunClient(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothDun;->disconnectDunClient(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "BluetoothDun"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public getDunState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .local v1, state:I
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothDun;->getDunState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothDun"

    const-string v3, "check DUN state, error="

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRemoteDeviceAddress()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, addr:Ljava/lang/String;
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDun;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRemoteDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .local v1, name:Ljava/lang/String;
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDun;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method
