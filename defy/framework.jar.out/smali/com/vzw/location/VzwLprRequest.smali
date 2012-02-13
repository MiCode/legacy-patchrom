.class public Lcom/vzw/location/VzwLprRequest;
.super Ljava/lang/Object;
.source "VzwLprRequest.java"


# static fields
.field public static final LPR_APP_TYPE_INDICATOR_ANDROID:B = 0x6t


# instance fields
.field appClientId:I

.field appTypeIndicator:B

.field baseId:S

.field baseLat:[B

.field baseLong:[B

.field brewAppId:I

.field clientPassword:[B

.field correlationId:B

.field duration:I

.field lbsClient:B

.field lbsClientRelease:[B

.field length:S

.field message:Ljava/nio/ByteBuffer;

.field messageType:B

.field msIdMdn:[B

.field msIdMdnRecHdr:B

.field msIdMin:[B

.field msIdMinRecHdr:B

.field msOs:B

.field msPositioningCapability:B

.field msType:[B

.field nId:S

.field pQoS:B

.field sId:S

.field timestamp:[B

.field version:B

.field wapJavaAppId:[B

.field wapJavaAppIdRecHdr:S


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lcom/vzw/location/VzwLprRequest;->version:B

    iput-byte v0, p0, Lcom/vzw/location/VzwLprRequest;->messageType:B

    iput-short v1, p0, Lcom/vzw/location/VzwLprRequest;->length:S

    iput-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->msPositioningCapability:B

    iput-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->appTypeIndicator:B

    iput-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->pQoS:B

    iput v1, p0, Lcom/vzw/location/VzwLprRequest;->duration:I

    iput-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->correlationId:B

    iput-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->msIdMinRecHdr:B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->msIdMin:[B

    iput-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdnRecHdr:B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdn:[B

    iput-short v1, p0, Lcom/vzw/location/VzwLprRequest;->sId:S

    iput-short v1, p0, Lcom/vzw/location/VzwLprRequest;->nId:S

    iput-short v1, p0, Lcom/vzw/location/VzwLprRequest;->baseId:S

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->baseLat:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->baseLong:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->timestamp:[B

    iput v1, p0, Lcom/vzw/location/VzwLprRequest;->appClientId:I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->clientPassword:[B

    iput v1, p0, Lcom/vzw/location/VzwLprRequest;->brewAppId:I

    iput-short v1, p0, Lcom/vzw/location/VzwLprRequest;->wapJavaAppIdRecHdr:S

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->wapJavaAppId:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->msType:[B

    iput-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->msOs:B

    iput-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->lbsClient:B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->lbsClientRelease:[B

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public decode([B)V
    .locals 7
    .parameter "mesg"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->version:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->messageType:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, p0, Lcom/vzw/location/VzwLprRequest;->length:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->msPositioningCapability:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->appTypeIndicator:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->pQoS:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/VzwLprRequest;->duration:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->correlationId:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->msIdMinRecHdr:B

    iget-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->msIdMinRecHdr:B

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/vzw/location/VzwLprRequest;->msIdMin:[B

    iget-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->msIdMinRecHdr:B

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->msIdMin:[B

    iget-byte v3, p0, Lcom/vzw/location/VzwLprRequest;->msIdMinRecHdr:B

    invoke-virtual {v0, v2, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdnRecHdr:B

    iget-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdnRecHdr:B

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdn:[B

    iget-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->msIdMinRecHdr:B

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdn:[B

    iget-byte v3, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdnRecHdr:B

    invoke-virtual {v0, v2, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, p0, Lcom/vzw/location/VzwLprRequest;->sId:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, p0, Lcom/vzw/location/VzwLprRequest;->nId:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, p0, Lcom/vzw/location/VzwLprRequest;->baseId:S

    new-array v2, v5, [B

    iput-object v2, p0, Lcom/vzw/location/VzwLprRequest;->baseLat:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->baseLat:[B

    invoke-virtual {v0, v2, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-array v2, v5, [B

    iput-object v2, p0, Lcom/vzw/location/VzwLprRequest;->baseLong:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->baseLong:[B

    invoke-virtual {v0, v2, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-array v2, v6, [B

    iput-object v2, p0, Lcom/vzw/location/VzwLprRequest;->timestamp:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->timestamp:[B

    invoke-virtual {v0, v2, v4, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/VzwLprRequest;->appClientId:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .local v1, len:B
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/vzw/location/VzwLprRequest;->clientPassword:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->clientPassword:[B

    invoke-virtual {v0, v2, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/VzwLprRequest;->brewAppId:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, p0, Lcom/vzw/location/VzwLprRequest;->wapJavaAppIdRecHdr:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/vzw/location/VzwLprRequest;->msType:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->msType:[B

    invoke-virtual {v0, v2, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->msOs:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/vzw/location/VzwLprRequest;->lbsClient:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/vzw/location/VzwLprRequest;->lbsClientRelease:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->lbsClientRelease:[B

    invoke-virtual {v0, v2, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public encode()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->msIdMin:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2e

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdn:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->clientPassword:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->wapJavaAppId:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->msType:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->lbsClientRelease:[B

    array-length v1, v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/vzw/location/VzwLprRequest;->length:S

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->version:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->messageType:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/vzw/location/VzwLprRequest;->length:S

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->msPositioningCapability:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->appTypeIndicator:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->pQoS:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/vzw/location/VzwLprRequest;->duration:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->correlationId:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->msIdMinRecHdr:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->msIdMin:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->msIdMin:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdnRecHdr:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdn:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdn:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/vzw/location/VzwLprRequest;->sId:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/vzw/location/VzwLprRequest;->nId:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/vzw/location/VzwLprRequest;->baseId:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->baseLat:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->baseLat:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->baseLong:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->baseLong:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->timestamp:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->timestamp:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/vzw/location/VzwLprRequest;->appClientId:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->clientPassword:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->clientPassword:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->clientPassword:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/vzw/location/VzwLprRequest;->brewAppId:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/vzw/location/VzwLprRequest;->wapJavaAppIdRecHdr:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->msType:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->msType:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->msType:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->msOs:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprRequest;->lbsClient:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->lbsClientRelease:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/vzw/location/VzwLprRequest;->lbsClientRelease:[B

    iget-object v2, p0, Lcom/vzw/location/VzwLprRequest;->lbsClientRelease:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getAppClientId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLprRequest;->appClientId:I

    return v0
.end method

.method public getAppTypeIndicator()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/vzw/location/VzwLprRequest;->appTypeIndicator:B

    return v0
.end method

.method public getBaseId()S
    .locals 1

    .prologue
    iget-short v0, p0, Lcom/vzw/location/VzwLprRequest;->baseId:S

    return v0
.end method

.method public getBaseLat()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->baseLat:[B

    return-object v0
.end method

.method public getBaseLong()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->baseLong:[B

    return-object v0
.end method

.method public getClientPassword()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->clientPassword:[B

    return-object v0
.end method

.method public getCorrelationId()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/vzw/location/VzwLprRequest;->correlationId:B

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLprRequest;->duration:I

    return v0
.end method

.method public getLbsClient()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/vzw/location/VzwLprRequest;->lbsClient:B

    return v0
.end method

.method public getLbsClientRelease()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->lbsClientRelease:[B

    return-object v0
.end method

.method public getLength()S
    .locals 1

    .prologue
    iget-short v0, p0, Lcom/vzw/location/VzwLprRequest;->length:S

    return v0
.end method

.method public getMessageType()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/vzw/location/VzwLprRequest;->messageType:B

    return v0
.end method

.method public getMsIdMdn()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdn:[B

    return-object v0
.end method

.method public getMsIdMin()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->msIdMin:[B

    return-object v0
.end method

.method public getMsOs()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/vzw/location/VzwLprRequest;->msOs:B

    return v0
.end method

.method public getMsType()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->msType:[B

    return-object v0
.end method

.method public getNId()S
    .locals 1

    .prologue
    iget-short v0, p0, Lcom/vzw/location/VzwLprRequest;->nId:S

    return v0
.end method

.method public getSId()S
    .locals 1

    .prologue
    iget-short v0, p0, Lcom/vzw/location/VzwLprRequest;->sId:S

    return v0
.end method

.method public getTimestamp()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->timestamp:[B

    return-object v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/vzw/location/VzwLprRequest;->version:B

    return v0
.end method

.method public setAppClientId(I)V
    .locals 0
    .parameter "appClientId"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLprRequest;->appClientId:I

    return-void
.end method

.method public setAppTypeIndicator(B)V
    .locals 0
    .parameter "appTypeIndicator"

    .prologue
    iput-byte p1, p0, Lcom/vzw/location/VzwLprRequest;->appTypeIndicator:B

    return-void
.end method

.method public setBaseId(S)V
    .locals 0
    .parameter "baseId"

    .prologue
    iput-short p1, p0, Lcom/vzw/location/VzwLprRequest;->baseId:S

    return-void
.end method

.method public setBaseLat(I)V
    .locals 3
    .parameter "baseLat"

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->baseLat:[B

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->baseLat:[B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->baseLat:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->baseLat:[B

    const/4 v1, 0x2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public setBaseLong(I)V
    .locals 3
    .parameter "baseLong"

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->baseLong:[B

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->baseLong:[B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->baseLong:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/vzw/location/VzwLprRequest;->baseLong:[B

    const/4 v1, 0x2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public setClientPassword([B)V
    .locals 0
    .parameter "clientPassword"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwLprRequest;->clientPassword:[B

    return-void
.end method

.method public setCorrelationId(B)V
    .locals 0
    .parameter "correlationId"

    .prologue
    iput-byte p1, p0, Lcom/vzw/location/VzwLprRequest;->correlationId:B

    return-void
.end method

.method public setDuration(II)V
    .locals 1
    .parameter "numberOfFixes"
    .parameter "timeBetweenFixes"

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwLprRequest;->duration:I

    :goto_0
    return-void

    :cond_0
    mul-int v0, p1, p2

    iput v0, p0, Lcom/vzw/location/VzwLprRequest;->duration:I

    goto :goto_0
.end method

.method public setLbsClient(B)V
    .locals 0
    .parameter "lbsClient"

    .prologue
    iput-byte p1, p0, Lcom/vzw/location/VzwLprRequest;->lbsClient:B

    return-void
.end method

.method public setLbsClientRelease(Ljava/lang/String;)V
    .locals 1
    .parameter "lbsClientRelease"

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->lbsClientRelease:[B

    return-void
.end method

.method public setMsIdMdn([B)Z
    .locals 2
    .parameter "msIdMdn"

    .prologue
    array-length v0, p1

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x60

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdnRecHdr:B

    iput-object p1, p0, Lcom/vzw/location/VzwLprRequest;->msIdMdn:[B

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMsIdMin([B)Z
    .locals 2
    .parameter "msIdMin"

    .prologue
    array-length v0, p1

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x50

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/vzw/location/VzwLprRequest;->msIdMinRecHdr:B

    iput-object p1, p0, Lcom/vzw/location/VzwLprRequest;->msIdMin:[B

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMsOs(B)V
    .locals 0
    .parameter "msOs"

    .prologue
    iput-byte p1, p0, Lcom/vzw/location/VzwLprRequest;->msOs:B

    return-void
.end method

.method public setMsType(Ljava/lang/String;)V
    .locals 1
    .parameter "msType"

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLprRequest;->msType:[B

    return-void
.end method

.method public setNId(S)V
    .locals 0
    .parameter "id"

    .prologue
    iput-short p1, p0, Lcom/vzw/location/VzwLprRequest;->nId:S

    return-void
.end method

.method public setSId(S)V
    .locals 0
    .parameter "id"

    .prologue
    iput-short p1, p0, Lcom/vzw/location/VzwLprRequest;->sId:S

    return-void
.end method
