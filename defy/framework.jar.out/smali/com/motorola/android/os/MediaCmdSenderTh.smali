.class public Lcom/motorola/android/os/MediaCmdSenderTh;
.super Ljava/lang/Thread;
.source "MediaCmdSenderTh.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaCmdSenderTh"


# instance fields
.field private mCmdSender:Lcom/motorola/android/os/MediaCmdSender;

.field private mIn:Ljava/io/BufferedReader;

.field private mOut:Ljava/io/PrintWriter;

.field private mRunning:Z

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;Lcom/motorola/android/os/MediaCmdSender;)V
    .locals 1
    .parameter "socket"
    .parameter "cmdSender"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mSocket:Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mOut:Ljava/io/PrintWriter;

    iput-object v0, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mIn:Ljava/io/BufferedReader;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mRunning:Z

    iput-object p1, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mSocket:Landroid/net/LocalSocket;

    iput-object p2, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mCmdSender:Lcom/motorola/android/os/MediaCmdSender;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "MediaCmdSenderTh"

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mIn:Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v2, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mOut:Ljava/io/PrintWriter;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mRunning:Z

    const/4 v1, 0x0

    .local v1, inputLine:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "MediaCmdSenderTh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bye"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .end local v1           #inputLine:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mRunning:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/motorola/android/os/MediaCmdSenderTh;->shutdown()V

    :cond_2
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/IOException;
    const-string v2, "MediaCmdSenderTh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " read exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendCmd(Ljava/lang/String;)V
    .locals 5
    .parameter "cmd"

    .prologue
    const-string v4, "MediaCmdSenderTh"

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mOut:Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const-string v1, "MediaCmdSenderTh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCmd : send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/android/os/MediaCmdSenderTh;->shutdown()V
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/util/AndroidRuntimeException;
    const-string v1, "MediaCmdSenderTh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCmd runtime exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/android/os/MediaCmdSenderTh;->shutdown()V

    goto :goto_1
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const-string v3, "MediaCmdSenderTh"

    const-string v1, "MediaCmdSenderTh"

    const-string v1, "shutdown"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mRunning:Z

    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mOut:Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mIn:Ljava/io/BufferedReader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1
    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    :cond_2
    iget-object v1, p0, Lcom/motorola/android/os/MediaCmdSenderTh;->mCmdSender:Lcom/motorola/android/os/MediaCmdSender;

    invoke-virtual {v1, p0}, Lcom/motorola/android/os/MediaCmdSender;->remove(Lcom/motorola/android/os/MediaCmdSenderTh;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    const-string v1, "MediaCmdSenderTh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutdown exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
