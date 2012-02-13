.class public final Landroid/nfc/tech/NfcF;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcF.java"


# static fields
.field public static final EXTRA_PMM:Ljava/lang/String; = "pmm"

.field public static final EXTRA_SC:Ljava/lang/String; = "systemcode"


# instance fields
.field private mManufacturer:[B

.field private mSystemCode:[B


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

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    iput-object v2, p0, Landroid/nfc/tech/NfcF;->mSystemCode:[B

    iput-object v2, p0, Landroid/nfc/tech/NfcF;->mManufacturer:[B

    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "systemcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcF;->mSystemCode:[B

    const-string v1, "pmm"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcF;->mManufacturer:[B

    :cond_0
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcF;
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/NfcF;

    invoke-direct {v1, p0}, Landroid/nfc/tech/NfcF;-><init>(Landroid/nfc/Tag;)V
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

.method public getManufacturer()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/tech/NfcF;->mManufacturer:[B

    return-object v0
.end method

.method public getSystemCode()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/tech/NfcF;->mSystemCode:[B

    return-object v0
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

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcF;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method
