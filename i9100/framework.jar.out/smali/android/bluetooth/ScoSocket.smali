.class public Landroid/bluetooth/ScoSocket;
.super Ljava/lang/Object;
.source "ScoSocket.java"


# static fields
.field private static final DBG:Z = true

.field public static final STATE_ACCEPT:I = 0x2

.field public static final STATE_CLOSED:I = 0x5

.field public static final STATE_CONNECTED:I = 0x4

.field public static final STATE_CONNECTING:I = 0x3

.field public static final STATE_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScoSocket"

.field private static final VDBG:Z


# instance fields
.field private mAcceptedCode:I

.field private mClosedCode:I

.field private mConnectedCode:I

.field private mHandler:Landroid/os/Handler;

.field private mNativeData:I

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Landroid/bluetooth/ScoSocket;->classInitNative()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/os/Handler;III)V
    .locals 2
    .parameter "pm"
    .parameter "handler"
    .parameter "acceptedCode"
    .parameter "connectedCode"
    .parameter "closedCode"

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->initNative()V

    .line 64
    iput v1, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 65
    iput-object p2, p0, Landroid/bluetooth/ScoSocket;->mHandler:Landroid/os/Handler;

    .line 66
    iput p3, p0, Landroid/bluetooth/ScoSocket;->mAcceptedCode:I

    .line 67
    iput p4, p0, Landroid/bluetooth/ScoSocket;->mConnectedCode:I

    .line 68
    iput p5, p0, Landroid/bluetooth/ScoSocket;->mClosedCode:I

    .line 69
    const-string v0, "ScoSocket"

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 70
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 72
    return-void
.end method

.method private native acceptNative()Z
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 182
    :cond_0
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native closeNative()V
.end method

.method private native connectNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native destroyNative()V
.end method

.method private native initNative()V
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 204
    const-string v0, "ScoSocket"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method private declared-synchronized onAccepted(I)V
    .locals 4
    .parameter "result"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Strange state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    if-ltz p1, :cond_1

    .line 161
    const/4 v0, 0x4

    :try_start_1
    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 165
    :goto_1
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/bluetooth/ScoSocket;->mAcceptedCode:I

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    :cond_1
    const/4 v0, 0x5

    :try_start_2
    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized onClosed()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 169
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClosed() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V

    .line 170
    iget v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    if-eq v0, v2, :cond_0

    .line 171
    const/4 v0, 0x5

    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 172
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/bluetooth/ScoSocket;->mClosedCode:I

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 173
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->releaseWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onConnected(I)V
    .locals 4
    .parameter "result"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Strange state, closing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/ScoSocket;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    if-ltz p1, :cond_1

    .line 146
    const/4 v0, 0x4

    :try_start_1
    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 150
    :goto_1
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/bluetooth/ScoSocket;->mConnectedCode:I

    iget v2, p0, Landroid/bluetooth/ScoSocket;->mState:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 151
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->releaseWakeLockNow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    :cond_1
    const/4 v0, 0x5

    :try_start_2
    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private releaseWakeLock()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 194
    :cond_0
    return-void
.end method

.method private releaseWakeLockNow()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroid/bluetooth/ScoSocket;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized accept()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    if-eq v0, v2, :cond_0

    .line 113
    const-string v0, "Bad state"

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 121
    :goto_0
    monitor-exit p0

    return v0

    .line 116
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->acceptNative()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    move v0, v2

    .line 118
    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 121
    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SCO OBJECT close() mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/ScoSocket;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->acquireWakeLock()V

    .line 129
    const/4 v0, 0x5

    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 130
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->closeNative()V

    .line 131
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->releaseWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "address"
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    if-eq v0, v3, :cond_0

    .line 92
    const-string v0, "connect(): Bad state"

    invoke-direct {p0, v0}, Landroid/bluetooth/ScoSocket;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 102
    :goto_0
    monitor-exit p0

    return v0

    .line 95
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->acquireWakeLock()V

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/ScoSocket;->connectNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    move v0, v3

    .line 98
    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Landroid/bluetooth/ScoSocket;->mState:I

    .line 101
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->releaseWakeLockNow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 102
    goto :goto_0

    .line 90
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
    .line 78
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->destroyNative()V

    .line 79
    invoke-direct {p0}, Landroid/bluetooth/ScoSocket;->releaseWakeLockNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized getState()I
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/bluetooth/ScoSocket;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
