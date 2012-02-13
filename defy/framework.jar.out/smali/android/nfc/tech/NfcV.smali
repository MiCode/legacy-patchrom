.class public final Landroid/nfc/tech/NfcV;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcV.java"


# static fields
.field public static final EXTRA_DSFID:Ljava/lang/String; = "dsfid"

.field public static final EXTRA_RESP_FLAGS:Ljava/lang/String; = "respflags"


# instance fields
.field private mDsfId:B

.field private mRespFlags:B


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "respflags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Landroid/nfc/tech/NfcV;->mRespFlags:B

    const-string v1, "dsfid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Landroid/nfc/tech/NfcV;->mDsfId:B

    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcV;
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/NfcV;

    invoke-direct {v1, p0}, Landroid/nfc/tech/NfcV;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getDsfId()B
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/nfc/tech/NfcV;->mDsfId:B

    return v0
.end method

.method public getResponseFlags()B
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/nfc/tech/NfcV;->mRespFlags:B

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .prologue
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
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
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
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcV;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method
