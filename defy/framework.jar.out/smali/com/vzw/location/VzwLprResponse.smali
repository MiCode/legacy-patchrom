.class public Lcom/vzw/location/VzwLprResponse;
.super Ljava/lang/Object;
.source "VzwLprResponse.java"


# instance fields
.field authorization:B

.field correlationId:B

.field length:S

.field messageType:B

.field out_message:Ljava/nio/ByteBuffer;

.field pdeIP:I

.field pdePort:S

.field positionIncluded:B

.field positioningStatusIndicator:B

.field timestamp:[B

.field version:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->version:B

    iput-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->messageType:B

    iput-short v0, p0, Lcom/vzw/location/VzwLprResponse;->length:S

    iput-byte v0, p0, Lcom/vzw/location/VzwLprResponse;->correlationId:B

    iput-byte v0, p0, Lcom/vzw/location/VzwLprResponse;->positioningStatusIndicator:B

    iput-byte v0, p0, Lcom/vzw/location/VzwLprResponse;->authorization:B

    iput v0, p0, Lcom/vzw/location/VzwLprResponse;->pdeIP:I

    iput-short v0, p0, Lcom/vzw/location/VzwLprResponse;->pdePort:S

    iput-byte v0, p0, Lcom/vzw/location/VzwLprResponse;->positionIncluded:B

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vzw/location/VzwLprResponse;->timestamp:[B

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwLprResponse;->out_message:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public decode([B)V
    .locals 4
    .parameter "mesg"

    .prologue
    const/4 v3, 0x5

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->version:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->messageType:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/vzw/location/VzwLprResponse;->length:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->correlationId:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->positioningStatusIndicator:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->authorization:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/vzw/location/VzwLprResponse;->pdeIP:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/vzw/location/VzwLprResponse;->pdePort:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->positionIncluded:B

    new-array v1, v3, [B

    iput-object v1, p0, Lcom/vzw/location/VzwLprResponse;->timestamp:[B

    iget-object v1, p0, Lcom/vzw/location/VzwLprResponse;->timestamp:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public encode()[B
    .locals 4

    .prologue
    const/16 v0, 0x13

    iput-short v0, p0, Lcom/vzw/location/VzwLprResponse;->length:S

    iget-object v0, p0, Lcom/vzw/location/VzwLprResponse;->out_message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->version:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprResponse;->out_message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->messageType:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprResponse;->out_message:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/vzw/location/VzwLprResponse;->length:S

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprResponse;->out_message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->correlationId:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprResponse;->out_message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->positioningStatusIndicator:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprResponse;->out_message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->authorization:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprResponse;->out_message:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/vzw/location/VzwLprResponse;->pdeIP:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprResponse;->out_message:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/vzw/location/VzwLprResponse;->pdePort:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprResponse;->out_message:Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/vzw/location/VzwLprResponse;->positionIncluded:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprResponse;->out_message:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/vzw/location/VzwLprResponse;->timestamp:[B

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/vzw/location/VzwLprResponse;->out_message:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getAuthorization()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/vzw/location/VzwLprResponse;->authorization:B

    return v0
.end method

.method public getCorrelationId()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/vzw/location/VzwLprResponse;->correlationId:B

    return v0
.end method

.method public getLength()S
    .locals 1

    .prologue
    iget-short v0, p0, Lcom/vzw/location/VzwLprResponse;->length:S

    return v0
.end method

.method public getMessageType()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/vzw/location/VzwLprResponse;->messageType:B

    return v0
.end method

.method public getPdeIP()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwLprResponse;->pdeIP:I

    return v0
.end method

.method public getPdePort()S
    .locals 1

    .prologue
    iget-short v0, p0, Lcom/vzw/location/VzwLprResponse;->pdePort:S

    return v0
.end method

.method public getPositionIncluded()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/vzw/location/VzwLprResponse;->positionIncluded:B

    return v0
.end method

.method public getPositioningStatusIndicator()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/vzw/location/VzwLprResponse;->positioningStatusIndicator:B

    return v0
.end method

.method public getTimestamp()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLprResponse;->timestamp:[B

    return-object v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/vzw/location/VzwLprResponse;->version:B

    return v0
.end method

.method public setAuthorization(B)V
    .locals 0
    .parameter "authorization"

    .prologue
    iput-byte p1, p0, Lcom/vzw/location/VzwLprResponse;->authorization:B

    return-void
.end method

.method public setCorrelationId(B)V
    .locals 0
    .parameter "correlationId"

    .prologue
    iput-byte p1, p0, Lcom/vzw/location/VzwLprResponse;->correlationId:B

    return-void
.end method

.method public setPdeIP(I)V
    .locals 0
    .parameter "pdeIP"

    .prologue
    iput p1, p0, Lcom/vzw/location/VzwLprResponse;->pdeIP:I

    return-void
.end method

.method public setPdePort(S)V
    .locals 0
    .parameter "pdePort"

    .prologue
    iput-short p1, p0, Lcom/vzw/location/VzwLprResponse;->pdePort:S

    return-void
.end method

.method public setPositionIncluded(B)V
    .locals 0
    .parameter "positionIncluded"

    .prologue
    iput-byte p1, p0, Lcom/vzw/location/VzwLprResponse;->positionIncluded:B

    return-void
.end method

.method public setPositioningStatusIndicator(B)V
    .locals 0
    .parameter "positioningStatusIndicator"

    .prologue
    iput-byte p1, p0, Lcom/vzw/location/VzwLprResponse;->positioningStatusIndicator:B

    return-void
.end method

.method public setTimestamp([B)V
    .locals 0
    .parameter "timestamp"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwLprResponse;->timestamp:[B

    return-void
.end method
