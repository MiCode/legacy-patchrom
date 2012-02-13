.class public Landroid/net/rtp/AudioStream;
.super Landroid/net/rtp/RtpStream;
.source "AudioStream.java"


# instance fields
.field private mCodec:Landroid/net/rtp/AudioCodec;

.field private mDtmfType:I

.field private mGroup:Landroid/net/rtp/AudioGroup;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Landroid/net/rtp/RtpStream;-><init>(Ljava/net/InetAddress;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    return-void
.end method


# virtual methods
.method public getCodec()Landroid/net/rtp/AudioCodec;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    return-object v0
.end method

.method public getDtmfType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    return v0
.end method

.method public getGroup()Landroid/net/rtp/AudioGroup;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    return-object v0
.end method

.method public final isBusy()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public join(Landroid/net/rtp/AudioGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    invoke-virtual {v0, p0}, Landroid/net/rtp/AudioGroup;->remove(Landroid/net/rtp/AudioStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    :cond_2
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    iget v1, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    invoke-virtual {p1, p0, v0, v1}, Landroid/net/rtp/AudioGroup;->add(Landroid/net/rtp/AudioStream;Landroid/net/rtp/AudioCodec;I)V

    iput-object p1, p0, Landroid/net/rtp/AudioStream;->mGroup:Landroid/net/rtp/AudioGroup;

    goto :goto_0
.end method

.method public setCodec(Landroid/net/rtp/AudioCodec;)V
    .locals 2
    .parameter "codec"

    .prologue
    invoke-virtual {p0}, Landroid/net/rtp/AudioStream;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Landroid/net/rtp/AudioCodec;->type:I

    iget v1, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type is used by DTMF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    return-void
.end method

.method public setDtmfType(I)V
    .locals 2
    .parameter "type"

    .prologue
    invoke-virtual {p0}, Landroid/net/rtp/AudioStream;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x60

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/net/rtp/AudioStream;->mCodec:Landroid/net/rtp/AudioCodec;

    iget v0, v0, Landroid/net/rtp/AudioCodec;->type:I

    if-ne p1, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type is used by codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p1, p0, Landroid/net/rtp/AudioStream;->mDtmfType:I

    return-void
.end method
