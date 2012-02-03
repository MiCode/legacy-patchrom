.class Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;
.super Lcom/broadcom/bt/service/avrcp/MediaPlayer;
.source "MediaPlayerAndroid.java"


# static fields
.field public static final MEDIA_ONCHANGED:Ljava/lang/String; = "com.android.music.mediachanged"

.field public static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.android.music.playbackcomplete"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field private static final TAG:Ljava/lang/String; = "AVRCP.MediaPlayerAndroid"


# instance fields
.field private mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayer;-><init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V

    .line 119
    new-instance v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid$1;-><init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 3

    .prologue
    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->duration()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 314
    :goto_0
    return-wide v1

    .line 311
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 312
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAlbumId()J
    .locals 3

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getAlbumId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 266
    :goto_0
    return-wide v1

    .line 263
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 264
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getAlbumName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 258
    :goto_0
    return-object v1

    .line 255
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 256
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    goto :goto_0
.end method

.method public getArtistId()J
    .locals 3

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getArtistId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 282
    :goto_0
    return-wide v1

    .line 279
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 280
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getArtistName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    :goto_0
    return-object v1

    .line 271
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 272
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    goto :goto_0
.end method

.method public getAudioId()J
    .locals 3

    .prologue
    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getAudioId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 298
    :goto_0
    return-wide v1

    .line 295
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 296
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "BluetoothMediaPlayer"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 290
    :goto_0
    return-object v1

    .line 287
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 288
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    goto :goto_0
.end method

.method public getPlayStatus()J
    .locals 3

    .prologue
    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getPlayStatus()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 364
    :goto_0
    return-wide v1

    .line 361
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 362
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getQueue()I
    .locals 2

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getQueue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 182
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 180
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getQueuePosition()I
    .locals 2

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getQueuePosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 192
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 190
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRepeatMode()I
    .locals 2

    .prologue
    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getRepeatMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    :goto_0
    return v1

    .line 351
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 352
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getShuffleMode()I
    .locals 2

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getShuffleMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 338
    :goto_0
    return v1

    .line 335
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 336
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getTrackName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    :goto_0
    return-object v1

    .line 247
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 248
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 207
    :goto_0
    return v1

    .line 204
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 205
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 241
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBinded(Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    const-string v3, "AVRCP.MediaPlayerAndroid"

    .line 66
    const-string v1, "AVRCP.MediaPlayerAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBinded: Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p2}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    .line 77
    :try_start_0
    const-string v1, "AVRCP.MediaPlayerAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBinded:Playing track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v3}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v1, "AVRCP.MediaPlayerAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBinded:By artist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v3}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "AVRCP.MediaPlayerAndroid"

    const-string/jumbo v2, "onBinded:Music player is playing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->registerIntentReceiver()V

    .line 85
    const/4 v1, 0x1

    .line 90
    :goto_1
    return v1

    .line 82
    :cond_0
    const-string v1, "MediaPlayerServiceConnection"

    const-string v2, "Music player is not playing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 87
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onUnbinded(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 155
    const-string v0, "AVRCP.MediaPlayerAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnbinded:ComponentName!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->unregisterIntentReceiver()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    .line 158
    return-void
.end method

.method public onUnbinded(Ljava/lang/String;)V
    .locals 3
    .parameter "PlayerName"

    .prologue
    .line 161
    const-string v0, "AVRCP.MediaPlayerAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnbinded:PlayerName!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->unregisterIntentReceiver()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    .line 164
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 220
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 227
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public position()J
    .locals 3

    .prologue
    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->position()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 306
    :goto_0
    return-wide v1

    .line 303
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 304
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->prev()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 234
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected registerIntentReceiver()V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.mediachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method

.method public seek(J)J
    .locals 3
    .parameter "pos"

    .prologue
    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->seek(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 322
    :goto_0
    return-wide v1

    .line 319
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 320
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->setQueuePosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 198
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setRepeatMode(I)V
    .locals 2
    .parameter "repeatmode"

    .prologue
    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->setRepeatMode(I)V

    .line 343
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->refreshUI(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 345
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter "shufflemode"

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->setShuffleMode(I)V

    .line 327
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->refreshUI(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 329
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mMPService:Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 213
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected unregisterIntentReceiver()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayer;->mManager:Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method
