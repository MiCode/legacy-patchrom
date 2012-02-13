.class Landroid/webkit/DataLoader;
.super Landroid/webkit/StreamLoader;
.source "DataLoader.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V
    .locals 6
    .parameter "dataUrl"
    .parameter "loadListener"

    .prologue
    invoke-direct {p0, p2}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    const-string v4, "data:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, url:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, data:[B
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, commaIndex:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, contentType:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/webkit/LoadListener;->parseContentTypeHeader(Ljava/lang/String;)V

    const-string v4, "base64"

    invoke-virtual {p2}, Landroid/webkit/LoadListener;->transferEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Base64;->decode([B)[B

    move-result-object v2

    .end local v1           #contentType:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v4, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    array-length v4, v2

    int-to-long v4, v4

    iput-wide v4, p0, Landroid/webkit/StreamLoader;->mContentLength:J

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .locals 0
    .parameter "h"

    .prologue
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/16 v1, 0xc8

    const-string v2, "OK"

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    const v3, 0x1040114

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
