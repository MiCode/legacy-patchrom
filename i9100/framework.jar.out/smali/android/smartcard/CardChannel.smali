.class final Landroid/smartcard/CardChannel;
.super Ljava/lang/Object;
.source "CardChannel.java"

# interfaces
.implements Landroid/smartcard/ICardChannel;


# instance fields
.field private final client:Landroid/smartcard/SmartcardClient;

.field private final hChannel:J

.field private volatile isClosed:Z

.field private final isLogicalChannel:Z


# direct methods
.method constructor <init>(Landroid/smartcard/SmartcardClient;JZ)V
    .locals 0
    .parameter "client"
    .parameter "hChannel"
    .parameter "isLogicalChannel"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/smartcard/CardChannel;->client:Landroid/smartcard/SmartcardClient;

    .line 41
    iput-wide p2, p0, Landroid/smartcard/CardChannel;->hChannel:J

    .line 42
    iput-boolean p4, p0, Landroid/smartcard/CardChannel;->isLogicalChannel:Z

    .line 43
    return-void
.end method

.method private assertOpen()V
    .locals 2

    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/smartcard/CardChannel;->isClosed:Z

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/smartcard/CardChannel;->isClosed:Z

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/smartcard/CardChannel;->client:Landroid/smartcard/SmartcardClient;

    invoke-virtual {v0, p0}, Landroid/smartcard/SmartcardClient;->closeChannel(Landroid/smartcard/CardChannel;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method getHandle()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Landroid/smartcard/CardChannel;->hChannel:J

    return-wide v0
.end method

.method invalidate()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/smartcard/CardChannel;->isClosed:Z

    .line 126
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/smartcard/CardChannel;->isClosed:Z

    return v0
.end method

.method public isLogicalChannel()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/smartcard/CardChannel;->isLogicalChannel:Z

    return v0
.end method

.method public transmit([B)[B
    .locals 4
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/smartcard/CardChannel;->assertOpen()V

    .line 103
    :try_start_0
    iget-object v1, p0, Landroid/smartcard/CardChannel;->client:Landroid/smartcard/SmartcardClient;

    iget-wide v2, p0, Landroid/smartcard/CardChannel;->hChannel:J

    invoke-virtual {v1, v2, v3, p1}, Landroid/smartcard/SmartcardClient;->transmit(J[B)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 104
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 105
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid handle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "channel is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_0
    throw v0
.end method
