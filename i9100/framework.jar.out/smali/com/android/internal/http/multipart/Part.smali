.class public abstract Lcom/android/internal/http/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field protected static final BOUNDARY:Ljava/lang/String; = "----------------314159265358979323846"

.field protected static final BOUNDARY_BYTES:[B = null

.field protected static final CHARSET:Ljava/lang/String; = "; charset="

.field protected static final CHARSET_BYTES:[B = null

.field protected static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition: form-data; name="

.field protected static final CONTENT_DISPOSITION_BYTES:[B = null

.field protected static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B = null

.field protected static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: "

.field protected static final CONTENT_TYPE_BYTES:[B = null

.field protected static final CRLF:Ljava/lang/String; = "\r\n"

.field protected static final CRLF_BYTES:[B = null

.field private static final DEFAULT_BOUNDARY_BYTES:[B = null

.field protected static final EXTRA:Ljava/lang/String; = "--"

.field protected static final EXTRA_BYTES:[B = null

.field private static final LOG:Lorg/apache/commons/logging/Log; = null

.field protected static final QUOTE:Ljava/lang/String; = "\""

.field protected static final QUOTE_BYTES:[B


# instance fields
.field private boundaryBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/internal/http/multipart/Part;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    .line 67
    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->BOUNDARY_BYTES:[B

    .line 73
    sget-object v0, Lcom/android/internal/http/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lcom/android/internal/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 79
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    .line 85
    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->QUOTE_BYTES:[B

    .line 92
    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    .line 99
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    .line 106
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    .line 113
    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CHARSET_BYTES:[B

    .line 120
    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "----------------314159265358979323846"

    return-object v0
.end method

.method public static getLengthOfParts([Lcom/android/internal/http/multipart/Part;)J
    .locals 2
    .parameter "parts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    sget-object v0, Lcom/android/internal/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, v0}, Lcom/android/internal/http/multipart/Part;->getLengthOfParts([Lcom/android/internal/http/multipart/Part;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLengthOfParts([Lcom/android/internal/http/multipart/Part;[B)J
    .locals 7
    .parameter "parts"
    .parameter "partBoundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    sget-object v5, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "getLengthOfParts(Parts[])"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 420
    if-nez p0, :cond_0

    .line 421
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parts may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 423
    :cond_0
    const-wide/16 v3, 0x0

    .line 424
    .local v3, total:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_2

    .line 426
    aget-object v5, p0, v0

    invoke-virtual {v5, p1}, Lcom/android/internal/http/multipart/Part;->setPartBoundary([B)V

    .line 427
    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/http/multipart/Part;->length()J

    move-result-wide v1

    .line 428
    .local v1, l:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 429
    const-wide/16 v5, -0x1

    .line 437
    .end local v1           #l:J
    :goto_1
    return-wide v5

    .line 431
    .restart local v1       #l:J
    :cond_1
    add-long/2addr v3, v1

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    .end local v1           #l:J
    :cond_2
    sget-object v5, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 434
    array-length v5, p1

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 435
    sget-object v5, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 436
    sget-object v5, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v5, v3

    .line 437
    goto :goto_1
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;)V
    .locals 1
    .parameter "out"
    .parameter "parts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    sget-object v0, Lcom/android/internal/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, p1, v0}, Lcom/android/internal/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V

    .line 361
    return-void
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V
    .locals 3
    .parameter "out"
    .parameter "parts"
    .parameter "partBoundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 378
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parts may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    .line 381
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "partBoundary may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 385
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lcom/android/internal/http/multipart/Part;->setPartBoundary([B)V

    .line 386
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/http/multipart/Part;->send(Ljava/io/OutputStream;)V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_3
    sget-object v1, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 389
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 390
    sget-object v1, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 391
    sget-object v1, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 392
    return-void
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/http/multipart/Part;->boundaryBytes:[B

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/android/internal/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/http/multipart/Part;->boundaryBytes:[B

    goto :goto_0
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    sget-object v1, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter length()"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->lengthOfData()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 328
    const-wide/16 v1, -0x1

    .line 337
    :goto_0
    return-wide v1

    .line 330
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 331
    .local v0, overhead:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 334
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 336
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 337
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->lengthOfData()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0
.end method

.method protected abstract lengthOfData()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter send(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 314
    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    sget-object v2, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter sendContentTypeHeader(OutputStream out)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, contentType:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 233
    sget-object v2, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 234
    sget-object v2, Lcom/android/internal/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 235
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, charSet:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 238
    sget-object v2, Lcom/android/internal/http/multipart/Part;->CHARSET_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 239
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 242
    .end local v0           #charSet:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 218
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 219
    sget-object v0, Lcom/android/internal/http/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 221
    sget-object v0, Lcom/android/internal/http/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 222
    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendEnd(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 294
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 295
    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendEndOfHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 268
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 269
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 270
    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendStart(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 205
    sget-object v0, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getPartBoundary()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 207
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 208
    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    sget-object v1, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter sendTransferEncodingHeader(OutputStream out)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, transferEncoding:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 255
    sget-object v1, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 256
    sget-object v1, Lcom/android/internal/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 257
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 259
    :cond_0
    return-void
.end method

.method setPartBoundary([B)V
    .locals 0
    .parameter "boundaryBytes"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/internal/http/multipart/Part;->boundaryBytes:[B

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
