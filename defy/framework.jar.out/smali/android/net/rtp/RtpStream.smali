.class public Landroid/net/rtp/RtpStream;
.super Ljava/lang/Object;
.source "RtpStream.java"


# static fields
.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RECEIVE_ONLY:I = 0x2

.field public static final MODE_SEND_ONLY:I = 0x1


# instance fields
.field private final mLocalAddress:Ljava/net/InetAddress;

.field private final mLocalPort:I

.field private mMode:I

.field private mNative:I

.field private mRemoteAddress:Ljava/net/InetAddress;

.field private mRemotePort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "rtp_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/rtp/RtpStream;->mRemotePort:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/rtp/RtpStream;->mMode:I

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/rtp/RtpStream;->create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/rtp/RtpStream;->mLocalPort:I

    iput-object p1, p0, Landroid/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    return-void
.end method

.method private synchronized native declared-synchronized close()V
.end method

.method private native create(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method


# virtual methods
.method public associate(Ljava/net/InetAddress;I)V
    .locals 2
    .parameter "address"
    .parameter "port"

    .prologue
    invoke-virtual {p0}, Landroid/net/rtp/RtpStream;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-nez v0, :cond_3

    :cond_1
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz p2, :cond_4

    const v0, 0xffff

    if-le p2, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object p1, p0, Landroid/net/rtp/RtpStream;->mRemoteAddress:Ljava/net/InetAddress;

    iput p2, p0, Landroid/net/rtp/RtpStream;->mRemotePort:I

    return-void
.end method

.method synchronized native declared-synchronized dup()I
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/net/rtp/RtpStream;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/rtp/RtpStream;->mLocalPort:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/rtp/RtpStream;->mMode:I

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/rtp/RtpStream;->mRemoteAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/rtp/RtpStream;->mRemotePort:I

    return v0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/net/rtp/RtpStream;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/net/rtp/RtpStream;->close()V

    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    invoke-virtual {p0}, Landroid/net/rtp/RtpStream;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/net/rtp/RtpStream;->mMode:I

    return-void
.end method
