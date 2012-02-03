.class Landroid/net/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "content-length"

.field private static final HOST_HEADER:Ljava/lang/String; = "Host"

.field private static requestContentProcessor:Lorg/apache/http/protocol/RequestContent;


# instance fields
.field bLoggingEnableCIQ:Z

.field private mBodyLength:I

.field private mBodyProvider:Ljava/io/InputStream;

.field volatile mCancelled:Z

.field private final mClientResource:Ljava/lang/Object;

.field private mConnection:Landroid/net/http/Connection;

.field mEventHandler:Landroid/net/http/EventHandler;

.field mFailCount:I

.field mHost:Lorg/apache/http/HttpHost;

.field mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

.field private mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

.field private mLoadingPaused:Z

.field mPath:Ljava/lang/String;

.field mProxyHost:Lorg/apache/http/HttpHost;

.field private mReceivedBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    sput-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V
    .locals 2
    .parameter "method"
    .parameter "host"
    .parameter "proxyHost"
    .parameter "path"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .parameter "eventHandler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpHost;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/EventHandler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p8, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v1, p0, Landroid/net/http/Request;->mCancelled:Z

    .line 86
    iput v1, p0, Landroid/net/http/Request;->mFailCount:I

    .line 90
    iput v1, p0, Landroid/net/http/Request;->mReceivedBytes:I

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    .line 108
    iput-boolean v1, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 132
    iput-object p7, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    .line 133
    iput-object p2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    .line 134
    iput-object p3, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 135
    iput-object p4, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    .line 136
    iput-object p5, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    .line 137
    iput p6, p0, Landroid/net/http/Request;->mBodyLength:I

    .line 139
    if-nez p5, :cond_1

    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .line 151
    :cond_0
    :goto_0
    const-string v0, "Host"

    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p8}, Landroid/net/http/Request;->addHeaders(Ljava/util/Map;)V

    .line 162
    return-void

    .line 142
    :cond_1
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .line 147
    if-eqz p5, :cond_0

    .line 148
    invoke-direct {p0, p5, p6}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    goto :goto_0
.end method

.method private static canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z
    .locals 3
    .parameter "request"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 614
    const-string v0, "HEAD"

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 617
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x130

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private setBodyProvider(Ljava/io/InputStream;I)V
    .locals 3
    .parameter "bodyProvider"
    .parameter "bodyLength"

    .prologue
    .line 631
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bodyProvider must support mark()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_0
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 638
    iget-object p0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .end local p0
    check-cast p0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v1, p2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 640
    return-void
.end method


# virtual methods
.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    const-string v0, "Null http header name"

    .line 196
    .local v0, damage:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 197
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v0           #damage:Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 200
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null or empty value for header \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .restart local v0       #damage:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 202
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    .end local v0           #damage:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method addHeaders(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 222
    :cond_0
    return-void

    .line 217
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 510
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    .line 514
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v0}, Landroid/net/http/Connection;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_0
    monitor-exit p0

    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method complete()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_0
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 595
    monitor-exit v0

    .line 596
    return-void

    .line 595
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method error(II)V
    .locals 2
    .parameter "errorId"
    .parameter "resourceId"

    .prologue
    .line 659
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    iget-object v1, v1, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    .line 663
    return-void
.end method

.method public getActiveProfile()B
    .locals 3

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, activeProfile:B
    const-string/jumbo v2, "net.connectivity.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, profile:Ljava/lang/String;
    const-string v2, "CDMA0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 467
    const/4 v0, 0x0

    .line 475
    :goto_0
    return v0

    .line 469
    :cond_0
    const-string v2, "CDMA1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 470
    const/4 v0, 0x1

    goto :goto_0

    .line 473
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getEventHandler()Landroid/net/http/EventHandler;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    return-object v0
.end method

.method getHostPort()Ljava/lang/String;
    .locals 3

    .prologue
    .line 520
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, myScheme:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    .line 524
    .local v0, myPort:I
    const/16 v2, 0x50

    if-eq v0, v2, :cond_0

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x1bb

    if-eq v0, v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 526
    :cond_1
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    .line 528
    :goto_0
    return-object v2

    :cond_2
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getNetworkMode()B
    .locals 3

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, mode:B
    const-string v2, "gsm.network.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, networkMode:Ljava/lang/String;
    const-string v2, "CDMA - 1xRTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 482
    const/4 v0, 0x2

    .line 493
    :goto_0
    return v0

    .line 484
    :cond_0
    const-string v2, "CDMA - EvDo rev. 0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 485
    const/4 v0, 0x3

    goto :goto_0

    .line 487
    :cond_1
    const-string v2, "CDMA - EvDo rev. A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 488
    const/4 v0, 0x7

    goto :goto_0

    .line 491
    :cond_2
    const/4 v0, 0x6

    goto :goto_0
.end method

.method getUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    :cond_0
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    .line 537
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleSslErrorResponse(Z)V
    .locals 2
    .parameter "proceed"

    .prologue
    .line 648
    iget-object p0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    .end local p0
    check-cast p0, Landroid/net/http/HttpsConnection;

    move-object v0, p0

    check-cast v0, Landroid/net/http/HttpsConnection;

    move-object v1, v0

    .line 649
    .local v1, connection:Landroid/net/http/HttpsConnection;
    if-eqz v1, :cond_0

    .line 650
    invoke-virtual {v1, p1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    .line 652
    :cond_0
    return-void
.end method

.method readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    .locals 25
    .parameter "httpClientConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Request;->mCancelled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 461
    :goto_0
    return-void

    .line 321
    :cond_0
    const/16 v18, 0x0

    .line 322
    .local v18, statusLine:Lorg/apache/http/StatusLine;
    const/4 v10, 0x0

    .line 323
    .local v10, hasBody:Z
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    .line 324
    const/16 v17, 0x0

    .line 326
    .local v17, statusCode:I
    new-instance v11, Landroid/net/http/Headers;

    invoke-direct {v11}, Landroid/net/http/Headers;-><init>()V

    .line 328
    .local v11, header:Landroid/net/http/Headers;
    :cond_1
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v18

    .line 329
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 330
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    .line 335
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v20

    .line 336
    .local v20, v:Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v22

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v23

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    move-object/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    .line 339
    const/4 v9, 0x0

    .line 340
    .local v9, entity:Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/net/http/Request;->canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z

    move-result v10

    .line 342
    if-eqz v10, :cond_2

    .line 343
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->receiveResponseEntity(Landroid/net/http/Headers;)Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 347
    :cond_2
    const-string v21, "bytes"

    invoke-virtual {v11}, Landroid/net/http/Headers;->getAcceptRanges()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    .line 350
    .local v19, supportPartialContent:Z
    if-eqz v9, :cond_5

    .line 351
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 354
    .local v12, is:Ljava/io/InputStream;
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v6

    .line 355
    .local v6, contentEncoding:Lorg/apache/http/Header;
    const/4 v15, 0x0

    .line 356
    .local v15, nis:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 357
    .local v5, buf:[B
    const/4 v7, 0x0

    .line 359
    .local v7, count:I
    if-eqz v6, :cond_6

    :try_start_0
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    const-string v22, "gzip"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 361
    new-instance v16, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v15           #nis:Ljava/io/InputStream;
    .local v16, nis:Ljava/io/InputStream;
    move-object/from16 v15, v16

    .line 368
    .end local v16           #nis:Ljava/io/InputStream;
    .restart local v15       #nis:Ljava/io/InputStream;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/http/Connection;->getBuf()[B

    move-result-object v5

    .line 369
    const/4 v13, 0x0

    .line 370
    .local v13, len:I
    move-object v0, v5

    array-length v0, v0

    move/from16 v21, v0

    div-int/lit8 v14, v21, 0x2

    .line 371
    .local v14, lowWater:I
    :cond_3
    :goto_2
    const/16 v21, -0x1

    move v0, v13

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 372
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 373
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Request;->mLoadingPaused:Z

    move/from16 v21, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v21, :cond_7

    .line 379
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 380
    :catch_0
    move-exception v8

    .line 381
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Interrupted exception whilst network thread paused at WebCore\'s request. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 386
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v21

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 400
    .end local v13           #len:I
    .end local v14           #lowWater:I
    :catch_1
    move-exception v21

    move-object/from16 v8, v21

    .line 404
    .local v8, e:Ljava/io/EOFException;
    if-lez v7, :cond_4

    .line 406
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 421
    :cond_4
    if-eqz v15, :cond_5

    .line 422
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 426
    .end local v5           #buf:[B
    .end local v6           #contentEncoding:Lorg/apache/http/Header;
    .end local v7           #count:I
    .end local v8           #e:Ljava/io/EOFException;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v15           #nis:Ljava/io/InputStream;
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    move-object/from16 v21, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v22

    invoke-virtual {v11}, Landroid/net/http/Headers;->getConnectionType()I

    move-result v23

    move-object/from16 v0, v21

    move-object v1, v9

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/Connection;->setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/net/http/EventHandler;->endData()V

    .line 429
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Request;->complete()V

    goto/16 :goto_0

    .line 363
    .restart local v5       #buf:[B
    .restart local v6       #contentEncoding:Lorg/apache/http/Header;
    .restart local v7       #count:I
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v15       #nis:Ljava/io/InputStream;
    :cond_6
    move-object v15, v12

    goto/16 :goto_1

    .line 386
    .restart local v13       #len:I
    .restart local v14       #lowWater:I
    :cond_7
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 388
    :try_start_7
    move-object v0, v5

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v7

    move-object v0, v15

    move-object v1, v5

    move v2, v7

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    .line 390
    const/16 v21, -0x1

    move v0, v13

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 391
    add-int/2addr v7, v13

    .line 392
    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/http/Request;->mReceivedBytes:I

    move/from16 v21, v0

    add-int v21, v21, v13

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/http/Request;->mReceivedBytes:I

    .line 394
    :cond_8
    const/16 v21, -0x1

    move v0, v13

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    if-lt v7, v14, :cond_3

    .line 396
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 397
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 421
    :cond_a
    if-eqz v15, :cond_5

    .line 422
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 409
    .end local v13           #len:I
    .end local v14           #lowWater:I
    :catch_2
    move-exception v21

    move-object/from16 v8, v21

    .line 411
    .local v8, e:Ljava/io/IOException;
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    const/16 v21, 0xce

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 413
    :cond_b
    if-eqz v19, :cond_c

    if-lez v7, :cond_c

    .line 416
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/net/http/EventHandler;->data([BI)V

    .line 418
    :cond_c
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 421
    .end local v8           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v21

    if-eqz v15, :cond_d

    .line 422
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_d
    throw v21

    .line 421
    .restart local v8       #e:Ljava/io/IOException;
    :cond_e
    if-eqz v15, :cond_5

    .line 422
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    goto/16 :goto_4
.end method

.method reset()V
    .locals 4

    .prologue
    .line 554
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 558
    :try_start_0
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    iget v1, p0, Landroid/net/http/Request;->mBodyLength:I

    invoke-direct {p0, v0, v1}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    .line 567
    :cond_0
    iget v0, p0, Landroid/net/http/Request;->mReceivedBytes:I

    if-lez v0, :cond_1

    .line 569
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/http/Request;->mFailCount:I

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** Request.reset() to range:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/http/Request;->mReceivedBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/http/Request;->mReceivedBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_1
    return-void

    .line 559
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    .locals 3
    .parameter "httpClientConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 309
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 244
    .restart local p0
    :cond_1
    sget-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    iget-object v2, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/RequestContent;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 246
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 247
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 248
    iget-object p0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .end local p0
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-virtual {p1, p0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    goto :goto_0
.end method

.method setConnection(Landroid/net/http/Connection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 180
    iput-object p1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    .line 181
    return-void
.end method

.method declared-synchronized setLoadingPaused(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 171
    iget-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method waitUntilComplete()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 590
    return-void

    .line 589
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 587
    :catch_0
    move-exception v1

    goto :goto_0
.end method
