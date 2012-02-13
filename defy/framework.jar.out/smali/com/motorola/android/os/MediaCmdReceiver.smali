.class public Lcom/motorola/android/os/MediaCmdReceiver;
.super Ljava/lang/Thread;
.source "MediaCmdReceiver.java"


# static fields
.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPLAY:Ljava/lang/String; = "play"

.field private static final DEBUG:Z = true

.field private static final MAX_PACKET_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaCmdReceiver"


# instance fields
.field private isInit:Z

.field private mAddress:Ljava/net/InetAddress;

.field private mIn:Ljava/io/BufferedReader;

.field private mOut:Ljava/io/PrintWriter;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRunning:Z

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "player"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/motorola/android/os/MediaCmdReceiver;->isInit:Z

    iput-boolean v0, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mRunning:Z

    iput-object p1, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method private doPause()V
    .locals 5

    .prologue
    const-string v4, "MediaCmdReceiver"

    :try_start_0
    const-string v1, "MediaCmdReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music isPlaying()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaCmdReceiver"

    const-string v2, "pause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "MediaCmdReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPause IllegalStateException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public init()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "MediaCmdReceiver"

    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "mediacmd_ipc"

    invoke-direct {v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .local v1, localSockAddr:Landroid/net/LocalSocketAddress;
    iget-object v2, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    const-string v2, "MediaCmdReceiver"

    const-string v3, "Connected to server"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v2, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mOut:Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mIn:Ljava/io/BufferedReader;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/android/os/MediaCmdReceiver;->isInit:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .end local v1           #localSockAddr:Landroid/net/LocalSocketAddress;
    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/IOException;
    const-string v2, "MediaCmdReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    const-string v5, "MediaCmdReceiver"

    iget-boolean v2, p0, Lcom/motorola/android/os/MediaCmdReceiver;->isInit:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "MediaCmdReceiver"

    const-string v2, "Thread started"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mRunning:Z

    const/4 v0, 0x0

    .local v0, cmd:Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "MediaCmdReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/os/MediaCmdReceiver;->doPause()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/io/IOException;
    const-string v2, "MediaCmdReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    iget-boolean v2, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mRunning:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/motorola/android/os/MediaCmdReceiver;->shutdown()V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "MediaCmdReceiver"

    const-string v1, "MediaCmdReceiver"

    const-string v1, "close"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mRunning:Z

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mOut:Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mOut:Ljava/io/PrintWriter;

    const-string v2, "bye"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mOut:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_1
    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mIn:Ljava/io/BufferedReader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_2
    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdReceiver;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/motorola/android/os/MediaCmdReceiver;->isInit:Z

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/util/AndroidRuntimeException;
    const-string v1, "MediaCmdReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close runtime exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/util/AndroidRuntimeException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    const-string v1, "MediaCmdReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
