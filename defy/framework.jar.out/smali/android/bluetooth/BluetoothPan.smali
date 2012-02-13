.class public Landroid/bluetooth/BluetoothPan;
.super Ljava/lang/Object;
.source "BluetoothPan.java"


# static fields
.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.motorola.android.bluetooth.pan.intent.action.ACTION_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "com.motorola.android.bluetooth.pan.intent.EXTRA_PREVIOUS_STATE"

.field public static final EXTRA_ROLE_TYPE:Ljava/lang/String; = "com.motorola.android.bluetooth.pan.intent.EXTRA_ROLE_TYPE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.motorola.android.bluetooth.pan.intent.EXTRA_STATE"

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothPan"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/bluetooth/IBluetoothPan;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    const-string v2, "bluetooth_pan"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_pan"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    const-string v1, "bluetooth_pan"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/bluetooth/IBluetoothPan$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPan;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    :goto_0
    return-void

    :cond_1
    const-string v1, "BluetoothPan"

    const-string v2, "BluetoothPan servie is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    goto :goto_0
.end method


# virtual methods
.method public disconnectPan()Z
    .locals 4

    .prologue
    const-string v2, "BluetoothPan"

    const/4 v1, 0x0

    .local v1, res:Z
    :try_start_0
    const-string v2, "BluetoothPan"

    const-string v3, "mService.disconnectPan is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothPan;->disconnectPan()Z
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
    const-string v2, "BluetoothPan"

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

.method public getPanServiceState()I
    .locals 5

    .prologue
    const-string v4, "BluetoothPan"

    const/4 v1, 0x0

    .local v1, state:I
    :try_start_0
    const-string v2, "BluetoothPan"

    const-string v3, "mService.getPanServiceState is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothPan;->getPanServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothPan"

    const-string v2, "check PAN Service state, error="

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPanState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    const-string v4, "BluetoothPan"

    const/4 v1, 0x0

    .local v1, state:I
    :try_start_0
    const-string v2, "BluetoothPan"

    const-string v3, "mService.getPanState is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothPan;->getPanState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothPan"

    const-string v2, "check PAN state, error="

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
