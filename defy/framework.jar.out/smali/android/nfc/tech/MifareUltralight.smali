.class public final Landroid/nfc/tech/MifareUltralight;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "MifareUltralight.java"


# static fields
.field private static final MAX_PAGE_COUNT:I = 0x100

.field private static final NXP_MANUFACTURER_ID:I = 0x4

.field public static final PAGE_SIZE:I = 0x4

.field public static final TYPE_ULTRALIGHT:I = 0x1

.field public static final TYPE_ULTRALIGHT_C:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mType:I


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
    const/16 v1, 0x9

    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v0

    .local v0, a:Landroid/nfc/tech/NfcA;
    const/4 v1, -0x1

    iput v1, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    :cond_0
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareUltralight;
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/MifareUltralight;

    invoke-direct {v1, p0}, Landroid/nfc/tech/MifareUltralight;-><init>(Landroid/nfc/Tag;)V
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

.method private static validatePageIndex(I)V
    .locals 3
    .parameter "pageIndex"

    .prologue
    if-ltz p0, :cond_0

    const/16 v0, 0x100

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
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

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/nfc/tech/MifareUltralight;->mType:I

    return v0
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public readPages(I)[B
    .locals 4
    .parameter "pageOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Landroid/nfc/tech/MifareUltralight;->validatePageIndex(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareUltralight;->checkConnected()V

    const/4 v1, 0x2

    new-array v0, v1, [B

    const/16 v1, 0x30

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .local v0, cmd:[B
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareUltralight;->transceive([BZ)[B

    move-result-object v1

    return-object v1
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

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/MifareUltralight;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public writePage(I[B)V
    .locals 4
    .parameter "pageOffset"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Landroid/nfc/tech/MifareUltralight;->validatePageIndex(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareUltralight;->checkConnected()V

    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .local v0, cmd:[B
    const/16 v1, -0x5e

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareUltralight;->transceive([BZ)[B

    return-void
.end method
