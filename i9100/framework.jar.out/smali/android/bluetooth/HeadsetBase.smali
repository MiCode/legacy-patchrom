.class public final Landroid/bluetooth/HeadsetBase;
.super Ljava/lang/Object;
.source "HeadsetBase.java"


# static fields
.field private static final DBG:Z = false

.field public static final DIRECTION_INCOMING:I = 0x1

.field public static final DIRECTION_OUTGOING:I = 0x2

.field public static final RFCOMM_DISCONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Bluetooth HeadsetBase"

.field private static sAtInputCount:I


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAddress:Ljava/lang/String;

.field protected mAtParser:Landroid/bluetooth/AtParser;

.field private final mConnectTimestamp:J

.field private final mDirection:I

.field private mEventThread:Ljava/lang/Thread;

.field private mEventThreadHandler:Landroid/os/Handler;

.field private volatile mEventThreadInterrupted:Z

.field private mNativeData:I

.field private final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mRfcommChannel:I

.field private mTimeoutRemainingMs:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    .line 63
    invoke-static {}, Landroid/bluetooth/HeadsetBase;->classInitNative()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .parameter "pm"
    .parameter "adapter"
    .parameter "device"
    .parameter "rfcommChannel"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/HeadsetBase;->mDirection:I

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/HeadsetBase;->mConnectTimestamp:J

    .line 81
    iput-object p2, p0, Landroid/bluetooth/HeadsetBase;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 82
    iput-object p3, p0, Landroid/bluetooth/HeadsetBase;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 83
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAddress:Ljava/lang/String;

    .line 84
    iput p4, p0, Landroid/bluetooth/HeadsetBase;->mRfcommChannel:I

    .line 85
    const/4 v0, 0x1

    const-string v1, "HeadsetBase"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 87
    invoke-virtual {p0}, Landroid/bluetooth/HeadsetBase;->initializeAtParser()V

    .line 89
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/bluetooth/HeadsetBase;->initializeNativeDataNative(I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V
    .locals 3
    .parameter "pm"
    .parameter "adapter"
    .parameter "device"
    .parameter "socketFd"
    .parameter "rfcommChannel"
    .parameter "handler"

    .prologue
    const/4 v2, 0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput v2, p0, Landroid/bluetooth/HeadsetBase;->mDirection:I

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/HeadsetBase;->mConnectTimestamp:J

    .line 97
    iput-object p2, p0, Landroid/bluetooth/HeadsetBase;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 98
    iput-object p3, p0, Landroid/bluetooth/HeadsetBase;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 99
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAddress:Ljava/lang/String;

    .line 100
    iput p5, p0, Landroid/bluetooth/HeadsetBase;->mRfcommChannel:I

    .line 101
    iput-object p6, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;

    .line 102
    const-string v0, "HeadsetBase"

    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 104
    invoke-virtual {p0}, Landroid/bluetooth/HeadsetBase;->initializeAtParser()V

    .line 106
    invoke-direct {p0, p4}, Landroid/bluetooth/HeadsetBase;->initializeNativeDataNative(I)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/HeadsetBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadInterrupted:Z

    return v0
.end method

.method static synthetic access$100(Landroid/bluetooth/HeadsetBase;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/bluetooth/HeadsetBase;->readNative(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/HeadsetBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->getLastReadStatusNative()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/bluetooth/HeadsetBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/HeadsetBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->disconnectNative()V

    return-void
.end method

.method private declared-synchronized acquireWakeLock()V
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :cond_0
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native connectAsyncNative()I
.end method

.method private native connectNative()Z
.end method

.method private native disconnectNative()V
.end method

.method public static getAtInputCount()I
    .locals 1

    .prologue
    .line 296
    sget v0, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    return v0
.end method

.method private native getLastReadStatusNative()I
.end method

.method private native initializeNativeDataNative(I)V
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 300
    const-string v0, "Bluetooth HeadsetBase"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method private native notifySlcEstablishedNative(Ljava/lang/String;)V
.end method

.method private native readNative(I)Ljava/lang/String;
.end method

.method private declared-synchronized releaseWakeLock()V
    .locals 1

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native sendURCNative(Ljava/lang/String;)Z
.end method

.method private stopEventThread()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadInterrupted:Z

    .line 186
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 188
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    .line 193
    return-void

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native waitForAsyncConnectNative(I)I
.end method


# virtual methods
.method public connect(Landroid/os/Handler;)Z
    .locals 1
    .parameter "handler"

    .prologue
    .line 196
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 197
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->connectNative()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    .line 198
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;

    .line 200
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public connectAsync()Z
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->connectAsyncNative()I

    move-result v0

    .line 212
    .local v0, ret:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->stopEventThread()V

    .line 238
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->disconnectNative()V

    .line 239
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->cleanupNativeDataNative()V

    .line 69
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->releaseWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAtParser()Landroid/bluetooth/AtParser;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAtParser:Landroid/bluetooth/AtParser;

    return-object v0
.end method

.method public getConnectTimestamp()J
    .locals 2

    .prologue
    .line 271
    iget-wide v0, p0, Landroid/bluetooth/HeadsetBase;->mConnectTimestamp:J

    return-wide v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Landroid/bluetooth/HeadsetBase;->mDirection:I

    return v0
.end method

.method public getRemainingAsyncConnectWaitingTimeMs()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Landroid/bluetooth/HeadsetBase;->mTimeoutRemainingMs:I

    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method protected handleInput(Ljava/lang/String;)V
    .locals 4
    .parameter "input"

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->acquireWakeLock()V

    .line 117
    const-class v1, Landroid/bluetooth/HeadsetBase;

    monitor-enter v1

    .line 118
    :try_start_0
    sget v2, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    .line 119
    const/4 v2, 0x0

    sput v2, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    .line 123
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v1, p0, Landroid/bluetooth/HeadsetBase;->mAtParser:Landroid/bluetooth/AtParser;

    invoke-virtual {v1, p1}, Landroid/bluetooth/AtParser;->process(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    .line 130
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->getResultCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 131
    const-string v1, "Bluetooth HeadsetBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 136
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->releaseWakeLock()V

    .line 137
    return-void

    .line 121
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :cond_1
    :try_start_1
    sget v2, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected initializeAtParser()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Landroid/bluetooth/AtParser;

    invoke-direct {v0}, Landroid/bluetooth/AtParser;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAtParser:Landroid/bluetooth/AtParser;

    .line 147
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifySlcEstablished()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/bluetooth/HeadsetBase;->notifySlcEstablishedNative(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public declared-synchronized sendURC(Ljava/lang/String;)Z
    .locals 2
    .parameter "urc"

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 276
    invoke-direct {p0, p1}, Landroid/bluetooth/HeadsetBase;->sendURCNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, ret:Z
    move v1, v0

    .line 279
    .end local v0           #ret:Z
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startEventThread()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/bluetooth/HeadsetBase$1;

    const-string v1, "HeadsetBase Event Thread"

    invoke-direct {v0, p0, v1}, Landroid/bluetooth/HeadsetBase$1;-><init>(Landroid/bluetooth/HeadsetBase;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadInterrupted:Z

    .line 178
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 179
    return-void
.end method

.method public waitForAsyncConnect(ILandroid/os/Handler;)I
    .locals 1
    .parameter "timeout_ms"
    .parameter "handler"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Landroid/bluetooth/HeadsetBase;->waitForAsyncConnectNative(I)I

    move-result v0

    .line 227
    .local v0, res:I
    if-lez v0, :cond_0

    .line 228
    iput-object p2, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;

    .line 230
    :cond_0
    return v0
.end method
