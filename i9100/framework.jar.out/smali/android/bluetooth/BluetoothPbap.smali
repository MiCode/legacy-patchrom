.class public Landroid/bluetooth/BluetoothPbap;
.super Ljava/lang/Object;
.source "BluetoothPbap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothPbap$ServiceListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final PBAP_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.pbap.intent.PBAP_PREVIOUS_STATE"

.field public static final PBAP_STATE:Ljava/lang/String; = "android.bluetooth.pbap.intent.PBAP_STATE"

.field public static final PBAP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPbap"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothPbap;

.field private final mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V
    .locals 3
    .parameter "context"
    .parameter "l"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Landroid/bluetooth/BluetoothPbap$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothPbap$1;-><init>(Landroid/bluetooth/BluetoothPbap;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    .line 115
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothPbap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const-string v0, "BluetoothPbap"

    const-string v1, "Could not bind to Bluetooth Pbap Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    return-object p1
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;

    return-object v0
.end method

.method public static doesClassMatchSink(Landroid/bluetooth/BluetoothClass;)Z
    .locals 1
    .parameter "btClass"

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 233
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 231
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x104 -> :sswitch_0
        0x108 -> :sswitch_0
        0x10c -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 255
    const-string v0, "BluetoothPbap"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnect()Z
    .locals 3

    .prologue
    const-string v2, "BluetoothPbap"

    .line 205
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    if-eqz v1, :cond_0

    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPbap;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v1, 0x1

    .line 214
    :goto_0
    return v1

    .line 209
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothPbap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 211
    :cond_0
    const-string v1, "BluetoothPbap"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPbap;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    const-string v2, "BluetoothPbap"

    .line 169
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    if-eqz v1, :cond_0

    .line 171
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPbap;->getClient()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothPbap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 174
    :cond_0
    const-string v1, "BluetoothPbap"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getState()I
    .locals 3

    .prologue
    const-string v2, "BluetoothPbap"

    .line 150
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    if-eqz v1, :cond_0

    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPbap;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 153
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothPbap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 155
    :cond_0
    const-string v1, "BluetoothPbap"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const-string v2, "BluetoothPbap"

    .line 187
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    if-eqz v1, :cond_0

    .line 189
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPbap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 195
    :goto_0
    return v1

    .line 190
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothPbap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 192
    :cond_0
    const-string v1, "BluetoothPbap"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
