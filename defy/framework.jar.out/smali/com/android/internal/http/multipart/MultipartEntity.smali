.class public Lcom/android/internal/http/multipart/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# static fields
.field public static final MULTIPART_BOUNDARY:Ljava/lang/String; = "http.method.multipart.boundary"

.field private static MULTIPART_CHARS:[B = null

.field private static final MULTIPART_FORM_CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private contentConsumed:Z

.field private multipartBoundary:[B

.field private params:Lorg/apache/http/params/HttpParams;

.field protected parts:[Lcom/android/internal/http/multipart/Part;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/internal/http/multipart/MultipartEntity;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/MultipartEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/MultipartEntity;->MULTIPART_CHARS:[B

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/http/multipart/Part;)V
    .locals 2
    .parameter "parts"

    .prologue
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->contentConsumed:Z

    const-string v0, "multipart/form-data"

    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/MultipartEntity;->setContentType(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/http/multipart/Part;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .parameter "parts"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->contentConsumed:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    iput-object p2, p0, Lcom/android/internal/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method private static generateMultipartBoundary()[B
    .locals 5

    .prologue
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .local v2, rand:Ljava/util/Random;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-array v0, v3, [B

    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/http/multipart/MultipartEntity;->MULTIPART_CHARS:[B

    sget-object v4, Lcom/android/internal/http/multipart/MultipartEntity;->MULTIPART_CHARS:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/MultipartEntity;->isRepeatable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/http/multipart/MultipartEntity;->contentConsumed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content has been consumed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/http/multipart/MultipartEntity;->contentConsumed:Z

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    iget-object v3, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    invoke-static {v1, v2, v3}, Lcom/android/internal/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, bais:Ljava/io/ByteArrayInputStream;
    return-object v0
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    invoke-virtual {p0}, Lcom/android/internal/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/http/multipart/Part;->getLengthOfParts([Lcom/android/internal/http/multipart/Part;[B)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/http/multipart/MultipartEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "An exception occurred while getting the length of the parts"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/internal/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getMultipartBoundary()[B
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, temp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.method.multipart.boundary"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #temp:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #temp:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    .end local v0           #temp:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    return-object v1

    .restart local v0       #temp:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/internal/http/multipart/MultipartEntity;->generateMultipartBoundary()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/http/multipart/Part;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    invoke-virtual {p0}, Lcom/android/internal/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V

    return-void
.end method
