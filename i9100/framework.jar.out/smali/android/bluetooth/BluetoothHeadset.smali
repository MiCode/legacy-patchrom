.class public final Landroid/bluetooth/BluetoothHeadset;
.super Ljava/lang/Object;
.source "BluetoothHeadset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHeadset$ServiceListener;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.action.STATE_CHANGED"

.field public static final ACTION_VENDOR_SPECIFIC_HEADSET_EVENT:Ljava/lang/String; = "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

.field public static final ACTION_VIRTUAL_CALL_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.action.VIRTUAL_CALL_STATE_CHANGED"

.field public static final AUDIO_STATE_CONNECTED:I = 0x1

.field public static final AUDIO_STATE_DISCONNECTED:I = 0x0

.field private static final DBG:Z = false

.field public static final EXTRA_AUDIO_STATE:Ljava/lang/String; = "android.bluetooth.headset.extra.AUDIO_STATE"

.field public static final EXTRA_DISCONNECT_INITIATOR:Ljava/lang/String; = "android.bluetooth.headset.extra.DISCONNECT_INITIATOR"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.headset.extra.PREVIOUS_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.headset.extra.STATE"

.field public static final EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_ARGS:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

.field public static final EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

.field public static final EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID"

.field public static final EXTRA_VIRTUAL_CALL_STATE:Ljava/lang/String; = "android.bluetooth.headset.extra.VIRTUAL_CALL_STATE"

.field public static final LOCAL_DISCONNECT:I = 0x1

.field public static final PRIORITY_AUTO_CONNECT:I = 0x3e8

.field public static final PRIORITY_OFF:I = 0x0

.field public static final PRIORITY_ON:I = 0x64

.field public static final PRIORITY_UNDEFINED:I = -0x1

.field public static final REMOTE_DISCONNECT:I = 0x0

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothHeadset"

.field public static final VIRTUAL_CALL_STATE_CONNECTED:I = 0x1

.field public static final VIRTUAL_CALL_STATE_DISCONNECTED:I = 0x0

.field public static final VIRTUAL_CALL_STATE_TRANSFERRED:I = 0x2


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothHeadset;

.field private final mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V
    .locals 3
    .parameter "context"
    .parameter "l"

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance v0, Landroid/bluetooth/BluetoothHeadset$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothHeadset$1;-><init>(Landroid/bluetooth/BluetoothHeadset;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    .line 220
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;

    .line 221
    iput-object p2, p0, Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const-string v0, "BluetoothHeadset"

    const-string v1, "Could not bind to Bluetooth Headset Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    return-object v0
.end method

.method public static isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 633
    const-string v0, "BluetoothHeadset"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void
.end method


# virtual methods
.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 493
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 495
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 501
    :goto_0
    return v1

    .line 496
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 498
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public cancelConnectThread()Z
    .locals 3

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 476
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 478
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->cancelConnectThread()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 484
    :goto_0
    return v1

    .line 479
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 481
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_0
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 300
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1

    .line 302
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const/4 v1, 0x1

    .line 310
    :goto_0
    return v1

    .line 305
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 307
    :cond_1
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public connectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 545
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 547
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->connectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 553
    :goto_0
    return v1

    .line 548
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 550
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public createIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 510
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 512
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->createIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 518
    :goto_0
    return v1

    .line 513
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 515
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 338
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 340
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    const/4 v1, 0x1

    .line 347
    :goto_0
    return v1

    .line 342
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 344
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 563
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 565
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 571
    :goto_0
    return v1

    .line 566
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 568
    :cond_0
    const-string v1, "BluetoothHeadset"

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
    .line 229
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 233
    return-void

    .line 231
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBatteryUsageHint()I
    .locals 3

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 450
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 452
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->getBatteryUsageHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 458
    :goto_0
    return v1

    .line 453
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 455
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 275
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 277
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 283
    :goto_0
    return-object v1

    .line 278
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 280
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 425
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 427
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 433
    :goto_0
    return v1

    .line 428
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 430
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 256
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 258
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 264
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 261
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 320
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 328
    :goto_0
    return v1

    .line 323
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 325
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 527
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 529
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 535
    :goto_0
    return v1

    .line 530
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 532
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 407
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 409
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 415
    :goto_0
    return v1

    .line 410
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 412
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startVirtualVoiceCall()Z
    .locals 3

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 584
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 586
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->startVirtualVoiceCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 592
    :goto_0
    return v1

    .line 587
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 589
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startVoiceRecognition()Z
    .locals 3

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 358
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 360
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->startVoiceRecognition()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 366
    :goto_0
    return v1

    .line 361
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 363
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopVirtualVoiceCall()Z
    .locals 3

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 603
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 605
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->stopVirtualVoiceCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 611
    :goto_0
    return v1

    .line 606
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 608
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopVoiceRecognition()Z
    .locals 3

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 376
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_0

    .line 378
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->stopVoiceRecognition()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 384
    :goto_0
    return v1

    .line 379
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 381
    :cond_0
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
