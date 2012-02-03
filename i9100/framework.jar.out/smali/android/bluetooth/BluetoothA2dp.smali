.class public final Landroid/bluetooth/BluetoothA2dp;
.super Ljava/lang/Object;
.source "BluetoothA2dp.java"


# static fields
.field public static final ACTION_SINK_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

.field private static final DBG:Z = false

.field public static final EXTRA_PREVIOUS_SINK_STATE:Ljava/lang/String; = "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

.field public static final EXTRA_SINK_STATE:Ljava/lang/String; = "android.bluetooth.a2dp.extra.SINK_STATE"

.field public static final PRIORITY_AUTO_CONNECT:I = 0x3e8

.field public static final PRIORITY_OFF:I = 0x0

.field public static final PRIORITY_ON:I = 0x64

.field public static final PRIORITY_UNDEFINED:I = -0x1

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_PLAYING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dp"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/bluetooth/IBluetoothA2dp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    .line 100
    const-string v1, "bluetooth_a2dp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 101
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 102
    invoke-static {v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    .line 110
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v1, "BluetoothA2dp"

    const-string v2, "Bluetooth A2DP service not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 340
    const-string v0, "BluetoothA2dp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 323
    packed-switch p0, :pswitch_data_0

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 325
    :pswitch_0
    const-string v0, "disconnected"

    goto :goto_0

    .line 327
    :pswitch_1
    const-string v0, "connecting"

    goto :goto_0

    .line 329
    :pswitch_2
    const-string v0, "connected"

    goto :goto_0

    .line 331
    :pswitch_3
    const-string v0, "disconnecting"

    goto :goto_0

    .line 333
    :pswitch_4
    const-string/jumbo v0, "playing"

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 3
    .parameter "device"
    .parameter "value"

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothA2dp;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 314
    :goto_0
    return v1

    .line 312
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 313
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connectSink(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->connectSink(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 125
    :goto_0
    return v1

    .line 123
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnectSink(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->disconnectSink(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 142
    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 141
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectedSinks()Ljava/util/Set;
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
    .line 196
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothA2dp;->getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    :goto_0
    return-object v1

    .line 198
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNonDisconnectedSinks()Ljava/util/Set;
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
    .line 212
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothA2dp;->getNonDisconnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    :goto_0
    return-object v1

    .line 214
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 215
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 268
    :goto_0
    return v1

    .line 266
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 267
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSinkState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    :goto_0
    return v1

    .line 229
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 230
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSinkConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 186
    .local v0, state:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSuspended()Z
    .locals 3

    .prologue
    .line 294
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothA2dp;->isSuspended()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 297
    :goto_0
    return v1

    .line 295
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 296
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 174
    :goto_0
    return v1

    .line 172
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 173
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 250
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothA2dp;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 253
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSuspended(Z)V
    .locals 3
    .parameter "val"

    .prologue
    .line 281
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->setSuspended(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 283
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v1, 0x0

    goto :goto_0
.end method
