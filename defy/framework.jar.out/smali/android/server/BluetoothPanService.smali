.class public Landroid/server/BluetoothPanService;
.super Landroid/bluetooth/IBluetoothPan$Stub;
.source "BluetoothPanService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PAN_NAP_SERVICE:Ljava/lang/String; = "NAP"

.field public static final BLUETOOTH_PAN_SERVICE:Ljava/lang/String; = "bluetooth_pan"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = false

.field private static final MESSAGE_CLOSE_PAN_CONNECTION:I = 0x67

.field private static final MESSAGE_CONFIG_PAN_NAP_SERVER:I = 0x66

.field private static final MESSAGE_START_PAN_SERVICE:I = 0x65

.field private static final NAPIPADDR:Ljava/lang/String; = "192.168.0.1"

.field private static final PANNETMASK:Ljava/lang/String; = "255.255.255.0"

.field private static final PAN_CONN_NAP_SVC:I = 0x1

.field private static final PAN_CONN_NONE:I = 0x0

.field private static final PAN_CONN_UNKNOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothPanService"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnabled:Z

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private mConnection:I

.field private final mContext:Landroid/content/Context;

.field private mDefaultRouteIntf:Ljava/lang/String;

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mNativeData:I

.field private mPanInterface:Ljava/lang/String;

.field private mPanService:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRmtConnAddr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    :try_start_0
    const-string v1, "/system/lib/libmot_btpan_jni.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    invoke-static {}, Landroid/server/BluetoothPanService;->classInitNative()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "libmot_btpan_jni loaded failed"

    invoke-static {v1}, Landroid/server/BluetoothPanService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 3
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    const-string v1, ""

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPan$Stub;-><init>()V

    const-string v0, ""

    iput-object v1, p0, Landroid/server/BluetoothPanService;->mRmtConnAddr:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Landroid/server/BluetoothPanService;->mPanService:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothPanService;->mBluetoothEnabled:Z

    const-string v0, "rmnet0"

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mDefaultRouteIntf:Ljava/lang/String;

    new-instance v0, Landroid/server/BluetoothPanService$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothPanService$1;-><init>(Landroid/server/BluetoothPanService;)V

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/server/BluetoothPanService$2;

    invoke-direct {v0, p0}, Landroid/server/BluetoothPanService$2;-><init>(Landroid/server/BluetoothPanService;)V

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/server/BluetoothPanService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/server/BluetoothPanService;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v0, p0, Landroid/server/BluetoothPanService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Platform does not support Bluetooth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/server/BluetoothPanService;->initNative()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not init BluetoothNapService"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mDhcpInfo:Landroid/net/DhcpInfo;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Landroid/server/BluetoothPanService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/server/BluetoothPanService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/server/BluetoothPanService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/server/BluetoothPanService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/server/BluetoothPanService;->onBluetoothEnable()V

    :cond_2
    return-void
.end method

.method private native acceptNative(Ljava/lang/String;)Z
.end method

.method static synthetic access$000(Landroid/server/BluetoothPanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothPanService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothPanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothPanService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothPanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/server/BluetoothPanService;->mConnection:I

    return v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothPanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothPanService;->configureIpTables()V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothPanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothPanService;->stopDhcpServer()V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothPanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothPanService;->configureDhcp()V

    return-void
.end method

.method static synthetic access$600(Landroid/server/BluetoothPanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothPanService;->startDhcpServer()V

    return-void
.end method

.method static synthetic access$700(Landroid/server/BluetoothPanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothPanService;->startPanService()V

    return-void
.end method

.method static synthetic access$800(Landroid/server/BluetoothPanService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothPanService;->mPanInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/server/BluetoothPanService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/server/BluetoothPanService;->configureNapIpAddr(Ljava/lang/String;)V

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native closeNative()V
.end method

.method private configureDhcp()V
    .locals 6

    .prologue
    const-string v4, ","

    const-string v4, ""

    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/data/btip.conf"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .local v3, out:Ljava/io/FileWriter;
    const-string v4, "net.dns1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, dns1:Ljava/lang/String;
    const-string v4, "net.dns2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, dns2:Ljava/lang/String;
    const-string v4, "interface=bnep0\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v4, "dhcp-option = option:dns-server"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_0
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_1
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #dns1:Ljava/lang/String;
    .end local v1           #dns2:Ljava/lang/String;
    .end local v3           #out:Ljava/io/FileWriter;
    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, exception:Ljava/io/IOException;
    const-string v4, "error on operation file: /data/btip.conf"

    invoke-static {v4}, Landroid/server/BluetoothPanService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native configureIpAddrNative(Ljava/lang/String;II)V
.end method

.method private native configureIpForwardNative(Ljava/lang/String;)V
.end method

.method private configureIpTables()V
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/server/BluetoothPanService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInterface(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothPanService;->mDefaultRouteIntf:Ljava/lang/String;

    iget-object v2, p0, Landroid/server/BluetoothPanService;->mDefaultRouteIntf:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/server/BluetoothPanService;->configureIpForwardNative(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iptables -A POSTROUTING -t nat -s 192.168.0.65/26 -o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothPanService;->mDefaultRouteIntf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -j MASQUERADE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, natCmd:Ljava/lang/String;
    const-string v2, "service.motorola.btpannat"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ctl.start"

    const-string v3, "napics"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private configureNapIpAddr(Ljava/lang/String;)V
    .locals 2
    .parameter "intf"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothPanService;->getNapIpAddrSetting()V

    iget-object v0, p0, Landroid/server/BluetoothPanService;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v1, v1, Landroid/net/DhcpInfo;->netmask:I

    invoke-direct {p0, p1, v0, v1}, Landroid/server/BluetoothPanService;->configureIpAddrNative(Ljava/lang/String;II)V

    return-void
.end method

.method private native connectNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native destroyNative()V
.end method

.method private getLocalServiceSetting()V
    .locals 1

    .prologue
    const-string v0, "NAP"

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mPanService:Ljava/lang/String;

    return-void
.end method

.method private getNapIpAddrSetting()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothPanService;->mDhcpInfo:Landroid/net/DhcpInfo;

    const-string v1, "192.168.0.1"

    invoke-static {v1}, Landroid/server/BluetoothPanService;->stringToIpAddr(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    iget-object v0, p0, Landroid/server/BluetoothPanService;->mDhcpInfo:Landroid/net/DhcpInfo;

    const-string v1, "255.255.255.0"

    invoke-static {v1}, Landroid/server/BluetoothPanService;->stringToIpAddr(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->netmask:I

    return-void
.end method

.method private handleNetworkStateChange(Ljava/lang/String;II)V
    .locals 4
    .parameter "address"
    .parameter "prevState"
    .parameter "state"

    .prologue
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    iput-object p1, p0, Landroid/server/BluetoothPanService;->mRmtConnAddr:Ljava/lang/String;

    :goto_0
    if-eq p3, p2, :cond_0

    iget-object v2, p0, Landroid/server/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.android.bluetooth.pan.intent.action.ACTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.motorola.android.bluetooth.pan.intent.EXTRA_ROLE_TYPE"

    const-string v3, "NAP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.motorola.android.bluetooth.pan.intent.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.motorola.android.bluetooth.pan.intent.EXTRA_STATE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Landroid/server/BluetoothPanService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    :cond_1
    const-string v2, ""

    iput-object v2, p0, Landroid/server/BluetoothPanService;->mRmtConnAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method private native initNative()Z
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "BluetoothPanService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized onAccepted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "addr"
    .parameter "intf"
    .parameter "result"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-lez p3, :cond_1

    iput-object p2, p0, Landroid/server/BluetoothPanService;->mPanInterface:Ljava/lang/String;

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mPanService:Ljava/lang/String;

    const-string v2, "NAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Landroid/server/BluetoothPanService;->mConnection:I

    invoke-virtual {p0, v0}, Landroid/server/BluetoothPanService;->getPanState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothPanService;->handleNetworkStateChange(Ljava/lang/String;II)V

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no action. unsupported pan service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothPanService;->mPanService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothPanService;->log(Ljava/lang/String;)V

    const/4 v1, 0x2

    iput v1, p0, Landroid/server/BluetoothPanService;->mConnection:I

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Landroid/server/BluetoothPanService;->mConnection:I

    const-string v1, ""

    iput-object v1, p0, Landroid/server/BluetoothPanService;->mPanInterface:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/server/BluetoothPanService;->getPanState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothPanService;->handleNetworkStateChange(Ljava/lang/String;II)V

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 3

    .prologue
    const-string v0, ""

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/server/BluetoothPanService;->mBluetoothEnabled:Z

    invoke-direct {p0}, Landroid/server/BluetoothPanService;->closeNative()V

    iget v0, p0, Landroid/server/BluetoothPanService;->mConnection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/server/BluetoothPanService;->stopDhcpServer()V

    iget-object v0, p0, Landroid/server/BluetoothPanService;->mRmtConnAddr:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothPanService;->handleNetworkStateChange(Ljava/lang/String;II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/server/BluetoothPanService;->mConnection:I

    const-string v0, ""

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mRmtConnAddr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mPanInterface:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 4

    .prologue
    const-string v0, ""

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/server/BluetoothPanService;->mBluetoothEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/server/BluetoothPanService;->mBluetoothEnabled:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/server/BluetoothPanService;->mConnection:I

    const-string v0, ""

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mRmtConnAddr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mPanInterface:Ljava/lang/String;

    iget-object v0, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onClosed(Ljava/lang/String;)V
    .locals 5
    .parameter "addr"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothPanService;->stopDhcpServer()V

    const/4 v1, 0x0

    iput v1, p0, Landroid/server/BluetoothPanService;->mConnection:I

    const-string v1, ""

    iput-object v1, p0, Landroid/server/BluetoothPanService;->mPanInterface:Ljava/lang/String;

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothPanService;->getPanState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothPanService;->handleNetworkStateChange(Ljava/lang/String;II)V

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private startDhcpServer()V
    .locals 2

    .prologue
    const-string v0, "ctl.start"

    const-string v1, "btdhcpd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startPanService()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothPanService;->getLocalServiceSetting()V

    iget-object v0, p0, Landroid/server/BluetoothPanService;->mPanService:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start pan service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mPanService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothPanService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/server/BluetoothPanService;->mPanService:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/server/BluetoothPanService;->acceptNative(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "no Pan Service"

    invoke-static {v0}, Landroid/server/BluetoothPanService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopDhcpServer()V
    .locals 2

    .prologue
    const-string v0, "ctl.stop"

    const-string v1, "btdhcpd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
    .locals 6
    .parameter "addrString"

    .prologue
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, parts:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, a:I
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    shl-int/lit8 v1, v5, 0x8

    .local v1, b:I
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    shl-int/lit8 v2, v5, 0x10

    .local v2, c:I
    const/4 v5, 0x3

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    shl-int/lit8 v3, v5, 0x18

    .local v3, d:I
    or-int v5, v0, v1

    or-int/2addr v5, v2

    or-int/2addr v5, v3

    return v5
.end method


# virtual methods
.method public declared-synchronized disconnectPan()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, ""

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothPanService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/server/BluetoothPanService;->getPanServiceState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Landroid/server/BluetoothPanService;->stopDhcpServer()V

    invoke-direct {p0}, Landroid/server/BluetoothPanService;->closeNative()V

    iget-object v0, p0, Landroid/server/BluetoothPanService;->mRmtConnAddr:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothPanService;->handleNetworkStateChange(Ljava/lang/String;II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/server/BluetoothPanService;->mConnection:I

    const-string v0, ""

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mRmtConnAddr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/server/BluetoothPanService;->mPanInterface:Ljava/lang/String;

    iget-object v0, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :pswitch_0
    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "Pan status:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/server/BluetoothPanService;->mConnection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRmtConnAddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mRmtConnAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPanInterface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mPanInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothPanService;->destroyNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothPan$Stub;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothPan$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getPanServiceState()I
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothPanService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Landroid/server/BluetoothPanService;->mConnection:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPanState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "rmtAddr"

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothPanService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, dev_addr:Ljava/lang/String;
    iget-object v1, p0, Landroid/server/BluetoothPanService;->mRmtConnAddr:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/server/BluetoothPanService;->mRmtConnAddr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    .end local v0           #dev_addr:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
