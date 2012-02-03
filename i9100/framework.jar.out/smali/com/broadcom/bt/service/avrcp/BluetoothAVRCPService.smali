.class public Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;
.super Lcom/broadcom/bt/service/framework/BaseEventLoop;
.source "BluetoothAVRCPService.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothAVRCPService"


# instance fields
.field a2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private final mExactAVRCControlDevicelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 62
    invoke-static {}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->classInitNativeAVRCP()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseEventLoop;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;-><init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    .line 48
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "00:26:E8"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mExactAVRCControlDevicelist:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 90
    new-instance v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;-><init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-boolean v3, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    .line 70
    iput-boolean v3, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    .line 71
    return-void
.end method

.method private static native classInitNativeAVRCP()V
.end method

.method private native cleanupNativeAVRCP()V
.end method

.method private native disableNativeAVRCP()V
.end method

.method private native enableNativeAVRCP()V
.end method

.method private native initNativeAVRCP()V
.end method

.method private static native onPlayStateChangedNative(Ljava/lang/String;I)V
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 4

    .prologue
    const-string v1, "BluetoothAVRCPService"

    .line 250
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable: enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-boolean v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 253
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->disableNativeAVRCP()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "disableNativeAVRCP failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 250
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public duration(Ljava/lang/String;)J
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 489
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 490
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->duration()J

    move-result-wide v1

    .line 493
    :goto_0
    return-wide v1

    .line 492
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized enable()V
    .locals 3

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->enableNativeAVRCP()V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->finish()V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    .line 203
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 204
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    const-string v1, "BluetoothAVRCPService"

    .line 188
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 191
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->cleanupNativeAVRCP()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    :cond_0
    monitor-exit p0

    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "Unable to cleanup AVRCP EventLoop service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 188
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 418
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 419
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 422
    :goto_0
    return-object v1

    .line 421
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlbumName: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getArtistName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 425
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 426
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 429
    :goto_0
    return-object v1

    .line 428
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArtistName: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAudioId(Ljava/lang/String;)J
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 474
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 475
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getAudioId()J

    move-result-wide v1

    .line 478
    :goto_0
    return-wide v1

    .line 477
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioId: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentPlayer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getCurrentPlayer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPlayer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getDefaultPlayer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "bluetooth_avrcp"

    return-object v0
.end method

.method public getPlayStatus(Ljava/lang/String;)J
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 532
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 533
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getPlayStatus()J

    move-result-wide v1

    .line 536
    :goto_0
    return-wide v1

    .line 535
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getPlayers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayers()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition(Ljava/lang/String;)I
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 355
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getQueuePosition()I

    move-result v1

    .line 359
    :goto_0
    return v1

    .line 358
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQueuePosition: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not find or not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRepeatMode(Ljava/lang/String;)I
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 516
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 517
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getRepeatMode()I

    move-result v1

    .line 520
    :goto_0
    return v1

    .line 519
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRepeatMode: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getShuffleMode(Ljava/lang/String;)I
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 509
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 510
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getShuffleMode()I

    move-result v1

    .line 513
    :goto_0
    return v1

    .line 512
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShuffleMode: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTotalTracks(Ljava/lang/String;)I
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 433
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getQueue()I

    move-result v1

    .line 442
    :goto_0
    return v1

    .line 441
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTotalTracks: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTrackName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 411
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 412
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->getTrackName()Ljava/lang/String;

    move-result-object v1

    .line 415
    :goto_0
    return-object v1

    .line 414
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrackName: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    .line 88
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->initNativeAVRCP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isExactControlDevice()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-string v8, "BluetoothAVRCPService"

    .line 542
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v6, :cond_0

    .line 543
    const-string v6, "BluetoothAVRCPService"

    const-string v6, "isExactControlDevice. a2dp is null"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v9

    .line 562
    :goto_0
    return v6

    .line 546
    :cond_0
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v4

    .line 549
    .local v4, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v4, :cond_3

    :try_start_0
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mExactAVRCControlDevicelist:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 550
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 551
    .local v3, sink:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mExactAVRCControlDevicelist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    .local v0, addr:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 553
    const-string v6, "BluetoothAVRCPService"

    const-string v7, " This device is ExactControlDevice"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    const/4 v6, 0x1

    goto :goto_0

    .line 559
    .end local v0           #addr:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sink:Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 560
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "BluetoothAVRCPService"

    const-string v6, "isExactControlDevice()"

    invoke-static {v8, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5           #t:Ljava/lang/Throwable;
    :cond_3
    move v6, v9

    .line 562
    goto :goto_0
.end method

.method public isPlayerLaunched(Ljava/lang/String;)Z
    .locals 1
    .parameter "PlayerName"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->isPlayerLaunched(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 372
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 373
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->isPlaying()Z

    move-result v1

    .line 376
    :goto_0
    return v1

    .line 375
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchPlayer(Ljava/lang/String;I)V
    .locals 1
    .parameter "PlayerName"
    .parameter "msWait"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->launchPlayer(Ljava/lang/String;I)V

    .line 349
    return-void
.end method

.method public next(Ljava/lang/String;)V
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 405
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 406
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->next()V

    .line 409
    :goto_0
    return-void

    .line 408
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 267
    const-string v0, "BluetoothAVRCPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnected: address = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.avrcp.action.ON_AVRCP_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .prologue
    .line 293
    const-string v0, "BluetoothAVRCPService"

    const-string/jumbo v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.avrcp.action.ON_AVRCP_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public onPlayStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "PlayerName"
    .parameter "StateChangeType"

    .prologue
    .line 351
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStateChangedNative(Ljava/lang/String;I)V

    .line 352
    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 388
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->pause()V

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public play(Ljava/lang/String;)V
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 393
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 394
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->play()V

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public position(Ljava/lang/String;)J
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 482
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 483
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->position()J

    move-result-wide v1

    .line 486
    :goto_0
    return-wide v1

    .line 485
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public prev(Ljava/lang/String;)V
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 400
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->prev()V

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshUI(Ljava/lang/String;I)V
    .locals 4
    .parameter "PlayerName"
    .parameter "controls"

    .prologue
    .line 445
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 446
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->refreshUI(I)V

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshUI: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized registerCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seek(Ljava/lang/String;J)J
    .locals 4
    .parameter "PlayerName"
    .parameter "pos"

    .prologue
    .line 496
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 497
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0, p2, p3}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->seek(J)J

    move-result-wide v1

    .line 500
    :goto_0
    return-wide v1

    .line 499
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seek: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setCurrentPlayer(Ljava/lang/String;)V
    .locals 1
    .parameter "PlayerName"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->setCurrentPlayer(Ljava/lang/String;)Z

    .line 343
    return-void
.end method

.method public setQueuePosition(Ljava/lang/String;I)V
    .locals 4
    .parameter "PlayerName"
    .parameter "index"

    .prologue
    .line 364
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 365
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->setQueuePosition(I)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setQueuePosition: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRepeatMode(Ljava/lang/String;I)V
    .locals 4
    .parameter "PlayerName"
    .parameter "mode"

    .prologue
    .line 524
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 525
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->setRepeatMode(I)V

    .line 528
    :goto_0
    return-void

    .line 527
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRepeatMode: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setShuffleMode(Ljava/lang/String;I)V
    .locals 4
    .parameter "PlayerName"
    .parameter "shufflemode"

    .prologue
    .line 503
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 504
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->setShuffleMode(I)V

    .line 507
    :goto_0
    return-void

    .line 506
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setShuffleMode: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPService"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->init(Landroid/content/Context;)Z

    .line 169
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->enable()V

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    const-string v0, "BluetoothAVRCPService"

    .line 180
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPService"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "calling mPlayerMgr.clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->clear()V

    .line 183
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->disable()V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopPlayer(Ljava/lang/String;)V
    .locals 4
    .parameter "PlayerName"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayerMgr:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;

    move-result-object v0

    .line 381
    .local v0, player:Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->stop()V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPlayer: player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not binded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
