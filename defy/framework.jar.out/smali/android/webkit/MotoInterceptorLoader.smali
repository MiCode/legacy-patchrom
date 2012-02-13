.class Landroid/webkit/MotoInterceptorLoader;
.super Landroid/webkit/StreamLoader;
.source "MotoInterceptorLoader.java"


# instance fields
.field private mData:Landroid/webkit/MotoInterceptorData;


# direct methods
.method constructor <init>(Landroid/webkit/LoadListener;Landroid/webkit/MotoInterceptorData;)V
    .locals 0
    .parameter "loadListener"
    .parameter "data"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    iput-object p2, p0, Landroid/webkit/MotoInterceptorLoader;->mData:Landroid/webkit/MotoInterceptorData;

    return-void
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .locals 6
    .parameter "headers"

    .prologue
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v4, 0x64

    invoke-direct {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    iget-object v4, p0, Landroid/webkit/MotoInterceptorLoader;->mData:Landroid/webkit/MotoInterceptorData;

    invoke-virtual {v4}, Landroid/webkit/MotoInterceptorData;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    .local v3, responseHeadersIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, keyValue:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/net/http/Headers;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_0

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v2           #keyValue:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Landroid/webkit/MotoInterceptorLoader;->mData:Landroid/webkit/MotoInterceptorData;

    invoke-virtual {v0}, Landroid/webkit/MotoInterceptorData;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    iget-object v0, p0, Landroid/webkit/MotoInterceptorLoader;->mData:Landroid/webkit/MotoInterceptorData;

    invoke-virtual {v0}, Landroid/webkit/MotoInterceptorData;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/StreamLoader;->mContentLength:J

    iget-object v0, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    iget-object v1, p0, Landroid/webkit/MotoInterceptorLoader;->mData:Landroid/webkit/MotoInterceptorData;

    invoke-virtual {v1}, Landroid/webkit/MotoInterceptorData;->getStatusCode()I

    move-result v1

    const-string v2, "OK"

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V

    return v3
.end method
