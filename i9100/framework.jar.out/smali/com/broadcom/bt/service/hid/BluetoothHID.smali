.class public final Lcom/broadcom/bt/service/hid/BluetoothHID;
.super Ljava/lang/Object;
.source "BluetoothHID.java"


# static fields
.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.broadcom.bt.service.hid.action.STATE_CHANGED"

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.broadcom.bt.service.hid.extra.STATE"

.field private static final HH_ATTR_MASK_BATTERY_POWER:I = 0x10

.field private static final HH_ATTR_MASK_NORMALLY_CONNECTABLE:I = 0x2

.field private static final HH_ATTR_MASK_RECONN_INIT:I = 0x4

.field private static final HH_ATTR_MASK_REMOTE_WAKE:I = 0x20

.field private static final HH_ATTR_MASK_SDP_DISABLE:I = 0x8

.field private static final HH_ATTR_MASK_SEC_REQUIRED:I = 0x8000

.field private static final HH_ATTR_MASK_SUP_TOUT_AVLBL:I = 0x40

.field private static final HH_ATTR_MASK_VIRTUAL_CABLE:I = 0x1

.field private static final HOST_SHOULD_NOT_CONNECT_BLACK_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_OFF:I = 0x0

.field public static final PRIORITY_ON:I = 0x64

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_VUP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothHID"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Rocketfish Bluetooth Keyboard"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/broadcom/bt/service/hid/BluetoothHID;->HOST_SHOULD_NOT_CONNECT_BLACK_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mContext:Landroid/content/Context;

    .line 100
    const-string v1, "bluetooth_hid"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 101
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 102
    invoke-static {v0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/hid/IBluetoothHID;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    .line 110
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v1, "BluetoothHID"

    const-string v2, "Bluetooth HID service not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    goto :goto_0
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const-string v3, "BluetoothHID"

    .line 119
    const-string v1, "BluetoothHID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 124
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 123
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    const-string v3, "BluetoothHID"

    .line 135
    const-string v1, "BluetoothHID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v2}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 247
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 246
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 208
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 207
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v4, 0x0

    .line 253
    if-nez p1, :cond_0

    move v1, v4

    .line 262
    :goto_0
    return v1

    .line 258
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    const/4 v1, 0x1

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 261
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getProtocolMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 262
    goto :goto_0
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .locals 5
    .parameter "device"
    .parameter "reportType"
    .parameter "reportId"
    .parameter "bufferSize"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 281
    if-eqz p1, :cond_0

    if-lt p2, v2, :cond_0

    const/4 v1, 0x3

    if-le p2, v1, :cond_1

    :cond_0
    move v1, v4

    .line 290
    :goto_0
    return v1

    .line 286
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 287
    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 289
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getReport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 290
    goto :goto_0
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 165
    .local v0, state:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 5
    .parameter "device"
    .parameter "cData"

    .prologue
    const/4 v4, 0x0

    .line 310
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v4

    .line 319
    :goto_0
    return v1

    .line 315
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    const/4 v1, 0x1

    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 318
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getReport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 319
    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 195
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 194
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 5
    .parameter "device"
    .parameter "protocolMode"

    .prologue
    const/4 v4, 0x0

    .line 267
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v1, v4

    .line 276
    :goto_0
    return v1

    .line 272
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    const/4 v1, 0x1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 275
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getProtocolMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 276
    goto :goto_0
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .locals 5
    .parameter "device"
    .parameter "reportType"
    .parameter "cData"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 295
    if-eqz p1, :cond_0

    if-lt p2, v2, :cond_0

    const/4 v1, 0x3

    if-gt p2, v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v4

    .line 304
    :goto_0
    return v1

    .line 300
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 301
    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 303
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getReport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 304
    goto :goto_0
.end method

.method public shouldHostConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v7, 0x0

    .line 218
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, deviceName:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 220
    sget-object v5, Lcom/broadcom/bt/service/hid/BluetoothHID;->HOST_SHOULD_NOT_CONNECT_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    .local v1, blacklistName:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    .line 233
    .end local v1           #blacklistName:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :goto_0
    return v5

    .line 228
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v5, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getAttrMask(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 229
    .local v0, attrMask:I
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_0

    .line 231
    .end local v0           #attrMask:I
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 232
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "BluetoothHID"

    const-string v6, ""

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v7

    .line 233
    goto :goto_0
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    const-string v3, "BluetoothHID"

    .line 150
    const-string v1, "BluetoothHID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "virtualUnplug("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
