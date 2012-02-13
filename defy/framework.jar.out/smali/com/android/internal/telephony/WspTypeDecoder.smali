.class public Lcom/android/internal/telephony/WspTypeDecoder;
.super Ljava/lang/Object;
.source "WspTypeDecoder.java"


# static fields
.field public static final CONTENT_MIME_TYPE_B_DRM_RIGHTS_WBXML:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field public static final CONTENT_MIME_TYPE_B_DRM_RIGHTS_XML:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field public static final CONTENT_MIME_TYPE_B_MMS:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final CONTENT_MIME_TYPE_B_PUSH_CO:Ljava/lang/String; = "application/vnd.wap.coc"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SI:Ljava/lang/String; = "application/vnd.wap.sic"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SL:Ljava/lang/String; = "application/vnd.wap.slc"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SYNCML_DATA_SYNC:Ljava/lang/String; = "application/vnd.syncml.ds.notification"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SYNCML_DM:Ljava/lang/String; = "application/vnd.syncml.notification"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SYNCML_DM_WBXML:Ljava/lang/String; = "application/vnd.syncml.dm+wbxml"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SYNCML_DM_XML:Ljava/lang/String; = "application/vnd.syncml.dm+xml"

.field public static final CONTENT_MIME_TYPE_B_SUPL_INIT:Ljava/lang/String; = "application/vnd.omaloc-supl-init"

.field public static final CONTENT_MIME_TYPE_B_VND_DOCOMO_PF:Ljava/lang/String; = "application/vnd.docomo.pf"

.field public static final CONTENT_TYPE_B_DRM_RIGHTS_WBXML:I = 0x4b

.field public static final CONTENT_TYPE_B_DRM_RIGHTS_XML:I = 0x4a

.field public static final CONTENT_TYPE_B_MMS:I = 0x3e

.field public static final CONTENT_TYPE_B_PUSH_CO:I = 0x32

.field public static final CONTENT_TYPE_B_PUSH_SI:I = 0x2e

.field public static final CONTENT_TYPE_B_PUSH_SL:I = 0x30

.field public static final CONTENT_TYPE_B_PUSH_SYNCML_DATA_SYNC:I = 0x4e

.field public static final CONTENT_TYPE_B_PUSH_SYNCML_DM:I = 0x44

.field public static final CONTENT_TYPE_B_PUSH_SYNCML_DM_WBXML:I = 0x42

.field public static final CONTENT_TYPE_B_PUSH_SYNCML_DM_XML:I = 0x43

.field public static final CONTENT_TYPE_B_SUPL_INIT:I = 0x312

.field public static final CONTENT_TYPE_B_VND_DOCOMO_PF:I = 0x310

.field public static final PARAMETER_ID_X_WAP_APPLICATION_ID:I = 0x2f

.field public static final PDU_TYPE_CONFIRMED_PUSH:I = 0x7

.field public static final PDU_TYPE_PUSH:I = 0x6

.field private static final WAP_PDU_LENGTH_QUOTE:I = 0x1f

.field private static final WAP_PDU_SHORT_LENGTH_MAX:I = 0x1e


# instance fields
.field dataLength:I

.field stringValue:Ljava/lang/String;

.field unsigned32bit:J

.field wspData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "pdu"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    return-void
.end method


# virtual methods
.method public decodeConstrainedEncoding(I)Z
    .locals 2
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeContentLength(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentLocation(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentType(I)Z
    .locals 5
    .parameter "startIndex"

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeValueLength(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeConstrainedEncoding(I)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    .local v2, mediaPrefixLength:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v0

    .local v0, mediaFieldLength:J
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v3

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v3, v4

    goto :goto_0

    :cond_1
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v3

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public decodeExtensionMedia(I)Z
    .locals 7
    .parameter "startIndex"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    move v0, p1

    .local v0, index:I
    iput v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    array-length v1, v3

    .local v1, length:I
    if-ge v0, v1, :cond_0

    move v2, v6

    .local v2, rtrn:Z
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #rtrn:Z
    :cond_0
    move v2, v4

    goto :goto_0

    .restart local v2       #rtrn:Z
    :cond_1
    sub-int v3, v0, p1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, p1, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    return v2
.end method

.method public decodeIntegerValue(I)Z
    .locals 2
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeLongInteger(I)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeLongInteger(I)Z
    .locals 6
    .parameter "startIndex"

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v2, v2, p1

    and-int/lit16 v1, v2, 0xff

    .local v1, lengthMultiOctet:I
    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-gt v0, v1, :cond_1

    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int v5, p1, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public decodeShortInteger(I)Z
    .locals 3
    .parameter "startIndex"

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x7f

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    move v0, v2

    goto :goto_0
.end method

.method public decodeTextString(I)Z
    .locals 7
    .parameter "startIndex"

    .prologue
    const/4 v6, 0x1

    move v0, p1

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, p1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    :goto_1
    return v6

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    sub-int/2addr v3, v6

    invoke-direct {v1, v2, p1, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    goto :goto_1
.end method

.method public decodeUintvarInteger(I)Z
    .locals 6
    .parameter "startIndex"

    .prologue
    const/4 v5, 0x7

    move v0, p1

    .local v0, index:I
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    sub-int v1, v0, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    iget-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    shl-long/2addr v1, v5

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    shl-long/2addr v1, v5

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public decodeValueLength(I)Z
    .locals 3
    .parameter "startIndex"

    .prologue
    const/16 v1, 0x1f

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    goto :goto_1
.end method

.method public decodeXWapApplicationId(I)Z
    .locals 2
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeXWapContentURI(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeXWapInitiatorURI(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public getDecodedDataLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    return v0
.end method

.method public getValue32()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    return-wide v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    return-object v0
.end method
