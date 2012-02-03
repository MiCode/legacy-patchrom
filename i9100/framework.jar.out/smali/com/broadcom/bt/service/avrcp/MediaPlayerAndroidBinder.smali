.class Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroidBinder;
.super Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;
.source "MediaPlayerAndroid.java"


# static fields
.field public static final ActivityName:Ljava/lang/String; = "com.samsung.bt.avrcp.BluetoothMediaPlayer"

.field public static final PackageName:Ljava/lang/String; = "com.samsung.bt.avrcp"

.field public static final PlaybackServiceName:Ljava/lang/String; = "com.samsung.bt.avrcp.BluetoothMediaPlayerService"

.field public static final PlayerName:Ljava/lang/String; = "BluetoothMediaPlayer"


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerBinder;-><init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected create(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)Lcom/broadcom/bt/service/avrcp/MediaPlayer;
    .locals 1
    .parameter "mgr"

    .prologue
    .line 49
    new-instance v0, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/service/avrcp/MediaPlayerAndroid;-><init>(Lcom/broadcom/bt/service/avrcp/MediaPlayerManager;)V

    return-object v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "com.samsung.bt.avrcp.BluetoothMediaPlayer"

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "com.samsung.bt.avrcp"

    return-object v0
.end method

.method public getPlaybackServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "com.samsung.bt.avrcp.BluetoothMediaPlayerService"

    return-object v0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "BluetoothMediaPlayer"

    return-object v0
.end method
