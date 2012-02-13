.class public final Landroid/nfc/tech/MifareClassic;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "MifareClassic.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x10

.field public static final KEY_DEFAULT:[B = null

.field public static final KEY_MIFARE_APPLICATION_DIRECTORY:[B = null

.field public static final KEY_NFC_FORUM:[B = null

.field private static final MAX_BLOCK_COUNT:I = 0x100

.field private static final MAX_SECTOR_COUNT:I = 0x28

.field public static final SIZE_1K:I = 0x400

.field public static final SIZE_2K:I = 0x800

.field public static final SIZE_4K:I = 0x1000

.field public static final SIZE_MINI:I = 0x140

.field public static final TYPE_CLASSIC:I = 0x0

.field public static final TYPE_PLUS:I = 0x1

.field public static final TYPE_PRO:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mIsEmulated:Z

.field private mSize:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_MIFARE_APPLICATION_DIRECTORY:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_NFC_FORUM:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0xa0t
        0xa1t
        0xa2t
        0xa3t
        0xa4t
        0xa5t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0xd3t
        0xf7t
        0xd3t
        0xf7t
        0xd3t
        0xf7t
    .end array-data
.end method

.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 6
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/16 v4, 0x1000

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v0

    .local v0, a:Landroid/nfc/tech/NfcA;
    iput-boolean v2, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag incorrectly enumerated as Mifare Classic, SAK = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    :goto_0
    return-void

    :sswitch_1
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    const/16 v1, 0x140

    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    :sswitch_2
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    const/16 v1, 0x800

    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    :sswitch_3
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    :sswitch_4
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    :sswitch_5
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    iput-boolean v3, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    goto :goto_0

    :sswitch_6
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    iput-boolean v3, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    goto :goto_0

    :sswitch_7
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    :sswitch_8
    const/4 v1, 0x2

    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x18 -> :sswitch_4
        0x28 -> :sswitch_5
        0x38 -> :sswitch_6
        0x88 -> :sswitch_7
        0x98 -> :sswitch_8
        0xb8 -> :sswitch_8
    .end sparse-switch
.end method

.method private authenticate(I[BZ)Z
    .locals 9
    .parameter "sector"
    .parameter "key"
    .parameter "keyA"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/16 v3, 0xc

    new-array v0, v3, [B

    .local v0, cmd:[B
    if-eqz p3, :cond_0

    const/16 v3, 0x60

    aput-byte v3, v0, v5

    :goto_0
    invoke-virtual {p0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getTag()Landroid/nfc/Tag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    .local v2, uid:[B
    array-length v3, v2

    sub-int/2addr v3, v7

    const/4 v4, 0x2

    invoke-static {v2, v3, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v5, v0, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v6

    :goto_1
    return v3

    .end local v2           #uid:[B
    :cond_0
    const/16 v3, 0x61

    aput-byte v3, v0, v5

    goto :goto_0

    .restart local v2       #uid:[B
    :catch_0
    move-exception v1

    .local v1, e:Landroid/nfc/TagLostException;
    throw v1

    .end local v1           #e:Landroid/nfc/TagLostException;
    :catch_1
    move-exception v3

    :cond_1
    move v3, v5

    goto :goto_1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/MifareClassic;

    invoke-direct {v1, p0}, Landroid/nfc/tech/MifareClassic;-><init>(Landroid/nfc/Tag;)V
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

.method private static validateBlock(I)V
    .locals 3
    .parameter "block"

    .prologue
    if-ltz p0, :cond_0

    const/16 v0, 0x100

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "block out of bounds: "

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

.method private static validateSector(I)V
    .locals 3
    .parameter "sector"

    .prologue
    if-ltz p0, :cond_0

    const/16 v0, 0x28

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sector out of bounds: "

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

.method private static validateValueOperand(I)V
    .locals 2
    .parameter "value"

    .prologue
    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value operand negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public authenticateSectorWithKeyA(I[B)Z
    .locals 1
    .parameter "sectorIndex"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result v0

    return v0
.end method

.method public authenticateSectorWithKeyB(I[B)Z
    .locals 1
    .parameter "sectorIndex"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result v0

    return v0
.end method

.method public blockToSector(I)I
    .locals 1
    .parameter "blockIndex"

    .prologue
    const/16 v0, 0x80

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    if-ge p1, v0, :cond_0

    div-int/lit8 v0, p1, 0x4

    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x20

    goto :goto_0
.end method

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

.method public decrement(II)V
    .locals 3
    .parameter "blockIndex"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, cmd:Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, -0x40

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public getBlockCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getBlockCountInSector(I)I
    .locals 1
    .parameter "sectorIndex"

    .prologue
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public getSectorCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x20

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x28

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_3
        0x400 -> :sswitch_0
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSize()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    return v0
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
    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    return v0
.end method

.method public increment(II)V
    .locals 3
    .parameter "blockIndex"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, cmd:Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, -0x3f

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    return v0
.end method

.method public readBlock(I)[B
    .locals 4
    .parameter "blockIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v1, 0x2

    new-array v0, v1, [B

    const/16 v1, 0x30

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .local v0, cmd:[B
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

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

.method public restore(I)V
    .locals 4
    .parameter "blockIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v1, 0x2

    new-array v0, v1, [B

    const/16 v1, -0x3e

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .local v0, cmd:[B
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public sectorToBlock(I)I
    .locals 1
    .parameter "sectorIndex"

    .prologue
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x4

    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x80

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
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public transfer(I)V
    .locals 4
    .parameter "blockIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v1, 0x2

    new-array v0, v1, [B

    const/16 v1, -0x50

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .local v0, cmd:[B
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public writeBlock(I[B)V
    .locals 4
    .parameter "blockIndex"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    array-length v1, p2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "must write 16-bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .local v0, cmd:[B
    const/16 v1, -0x60

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method
