.class public final Landroid/nfc/tech/IsoDep;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "IsoDep.java"


# static fields
.field public static final EXTRA_HIST_BYTES:Ljava/lang/String; = "histbytes"

.field public static final EXTRA_HI_LAYER_RESP:Ljava/lang/String; = "hiresp"

.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field private mHiLayerResponse:[B

.field private mHistBytes:[B


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 3
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 71
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 47
    iput-object v2, p0, Landroid/nfc/tech/IsoDep;->mHiLayerResponse:[B

    .line 48
    iput-object v2, p0, Landroid/nfc/tech/IsoDep;->mHistBytes:[B

    .line 72
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 74
    const-string v1, "hiresp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/IsoDep;->mHiLayerResponse:[B

    .line 75
    const-string v1, "histbytes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/IsoDep;->mHistBytes:[B

    .line 77
    :cond_0
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 60
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 64
    :goto_0
    return-object v1

    .line 62
    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/IsoDep;

    invoke-direct {v1, p0}, Landroid/nfc/tech/IsoDep;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move-object v1, v2

    .line 64
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    invoke-interface {v1}, Landroid/nfc/INfcTag;->resetIsoDepTimeout()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    .line 107
    return-void

    .line 103
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 104
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getHiLayerResponse()[B
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/nfc/tech/IsoDep;->mHiLayerResponse:[B

    return-object v0
.end method

.method public getHistoricalBytes()[B
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/nfc/tech/IsoDep;->mHistBytes:[B

    return-object v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public setTimeout(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/nfc/INfcTag;->setIsoDepTimeout(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 95
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public transceive([B)[B
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/IsoDep;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method
