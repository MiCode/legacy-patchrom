.class public Landroid/net/http/HttpsConnection;
.super Landroid/net/http/Connection;
.source "HttpsConnection.java"


# static fields
.field private static mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private mAborted:Z

.field private mProxyHost:Lorg/apache/http/HttpHost;

.field private mSuspendLock:Ljava/lang/Object;

.field private mSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Landroid/net/http/HttpsConnection;->initializeEngine(Ljava/io/File;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .locals 2
    .parameter "context"
    .parameter "host"
    .parameter "proxy"
    .parameter "requestFeeder"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p4}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    iput-object p3, p0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    return-void
.end method

.method private static declared-synchronized getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    const-class v0, Landroid/net/http/HttpsConnection;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initializeEngine(Ljava/io/File;)V
    .locals 7
    .parameter "sessionDir"

    .prologue
    const/4 v0, 0x0

    .local v0, cache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;
    if-eqz p0, :cond_0

    :try_start_0
    const-string v4, "HttpsConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caching SSL sessions in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    move-result-object v0

    :cond_0
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-direct {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;-><init>()V

    .local v2, sslContext:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Landroid/net/http/HttpsConnection$1;

    invoke-direct {v5}, Landroid/net/http/HttpsConnection$1;-><init>()V

    aput-object v5, v3, v4

    .local v3, trustManagers:[Ljavax/net/ssl/TrustManager;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->setPersistentCache(Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V

    const-class v4, Landroid/net/http/HttpsConnection;

    monitor-enter v4
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    sput-object v5, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2           #sslContext:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
    .end local v3           #trustManagers:[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/security/KeyManagementException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .end local v1           #e:Ljava/security/KeyManagementException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method closeConnection()V
    .locals 2

    .prologue
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "https"

    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .locals 33
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v24, 0x0

    .local v24, sslSock:Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    if-eqz v28, :cond_f

    const/16 v18, 0x0

    .local v18, proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    const/16 v21, 0x0

    .local v21, proxySock:Ljava/net/Socket;
    :try_start_0
    new-instance v22, Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v29

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v21           #proxySock:Ljava/net/Socket;
    .local v22, proxySock:Ljava/net/Socket;
    const v28, 0xea60

    :try_start_1
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v19, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct/range {v19 .. v19}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .local v19, proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    :try_start_2
    new-instance v17, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v17, params:Lorg/apache/http/params/HttpParams;
    const/16 v28, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    const/16 v26, 0x0

    .local v26, statusLine:Lorg/apache/http/StatusLine;
    const/16 v25, 0x0

    .local v25, statusCode:I
    new-instance v14, Landroid/net/http/Headers;

    invoke-direct {v14}, Landroid/net/http/Headers;-><init>()V

    .local v14, headers:Landroid/net/http/Headers;
    :try_start_3
    new-instance v20, Lorg/apache/http/message/BasicHttpRequest;

    const-string v28, "CONNECT"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v20, proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/message/BasicHttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .local v5, arr$:[Lorg/apache/http/Header;
    move-object v0, v5

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    aget-object v12, v5, v15

    .local v12, h:Lorg/apache/http/Header;
    invoke-interface {v12}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .local v13, headerName:Ljava/lang/String;
    const-string v28, "proxy"

    move-object v0, v13

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_0

    const-string v28, "keep-alive"

    move-object v0, v13

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    const-string v28, "host"

    move-object v0, v13

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    const-string v28, "user-agent"

    move-object v0, v13

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    :cond_0
    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_3
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v12           #h:Lorg/apache/http/Header;
    .end local v13           #headerName:Ljava/lang/String;
    .end local v14           #headers:Landroid/net/http/Headers;
    .end local v15           #i$:I
    .end local v16           #len$:I
    .end local v17           #params:Lorg/apache/http/params/HttpParams;
    .end local v19           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v20           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v22           #proxySock:Ljava/net/Socket;
    .end local v25           #statusCode:I
    .end local v26           #statusLine:Lorg/apache/http/StatusLine;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21       #proxySock:Ljava/net/Socket;
    :catch_0
    move-exception v28

    move-object/from16 v8, v28

    .local v8, e:Ljava/io/IOException;
    :goto_1
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    :cond_2
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .local v10, errorMessage:Ljava/lang/String;
    if-nez v10, :cond_3

    const-string v10, "failed to establish a connection to the proxy"

    :cond_3
    new-instance v28, Ljava/io/IOException;

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v21           #proxySock:Ljava/net/Socket;
    .restart local v5       #arr$:[Lorg/apache/http/Header;
    .restart local v14       #headers:Landroid/net/http/Headers;
    .restart local v15       #i$:I
    .restart local v16       #len$:I
    .restart local v17       #params:Lorg/apache/http/params/HttpParams;
    .restart local v19       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v20       #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .restart local v22       #proxySock:Ljava/net/Socket;
    .restart local v25       #statusCode:I
    .restart local v26       #statusLine:Lorg/apache/http/StatusLine;
    :cond_4
    :try_start_4
    invoke-virtual/range {v19 .. v20}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    invoke-virtual/range {v19 .. v19}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    :cond_5
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_4
    .catch Lorg/apache/http/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v25

    const/16 v28, 0xc8

    move/from16 v0, v25

    move/from16 v1, v28

    if-lt v0, v1, :cond_5

    const/16 v28, 0xc8

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    :try_start_5
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v30

    const/16 v31, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v25

    .end local v25           #statusCode:I
    move-object/from16 v0, v25

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v24, v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v14           #headers:Landroid/net/http/Headers;
    .end local v15           #i$:I
    .end local v16           #len$:I
    .end local v17           #params:Lorg/apache/http/params/HttpParams;
    .end local v19           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v20           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v22           #proxySock:Ljava/net/Socket;
    .end local v26           #statusLine:Lorg/apache/http/StatusLine;
    :goto_2
    invoke-static {}, Landroid/net/http/CertificateChainValidator;->getInstance()Landroid/net/http/CertificateChainValidator;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/CertificateChainValidator;->doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v9

    .local v9, error:Landroid/net/http/SslError;
    if-eqz v9, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    const/16 v29, 0x1

    :try_start_6
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    monitor-exit v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->handleSslErrorRequest(Landroid/net/http/SslError;)Z

    move-result v6

    .local v6, canHandle:Z
    if-nez v6, :cond_12

    new-instance v28, Ljava/io/IOException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "failed to handle "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .end local v6           #canHandle:Z
    .end local v9           #error:Landroid/net/http/SslError;
    .restart local v14       #headers:Landroid/net/http/Headers;
    .restart local v17       #params:Lorg/apache/http/params/HttpParams;
    .restart local v19       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v22       #proxySock:Ljava/net/Socket;
    .restart local v25       #statusCode:I
    .restart local v26       #statusLine:Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v28

    move-object/from16 v8, v28

    .local v8, e:Lorg/apache/http/ParseException;
    invoke-virtual {v8}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_6

    const-string v10, "failed to send a CONNECT request"

    :cond_6
    new-instance v28, Ljava/io/IOException;

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .end local v8           #e:Lorg/apache/http/ParseException;
    .end local v10           #errorMessage:Ljava/lang/String;
    :catch_2
    move-exception v28

    move-object/from16 v8, v28

    .local v8, e:Lorg/apache/http/HttpException;
    invoke-virtual {v8}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_7

    const-string v10, "failed to send a CONNECT request"

    :cond_7
    new-instance v28, Ljava/io/IOException;

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .end local v8           #e:Lorg/apache/http/HttpException;
    .end local v10           #errorMessage:Ljava/lang/String;
    :catch_3
    move-exception v28

    move-object/from16 v8, v28

    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_8

    const-string v10, "failed to send a CONNECT request"

    :cond_8
    new-instance v28, Ljava/io/IOException;

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v25           #statusCode:I
    .restart local v5       #arr$:[Lorg/apache/http/Header;
    .restart local v15       #i$:I
    .restart local v16       #len$:I
    .restart local v20       #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    :catch_4
    move-exception v28

    move-object/from16 v8, v28

    .restart local v8       #e:Ljava/io/IOException;
    if-eqz v24, :cond_9

    throw v24

    :cond_9
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_a

    const-string v10, "failed to create an SSL socket"

    :cond_a
    new-instance v28, Ljava/io/IOException;

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v25       #statusCode:I
    :cond_b
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v27

    .local v27, version:Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v29

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v30

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v25

    move-object/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    const/16 v28, 0x190

    move/from16 v0, v25

    move/from16 v1, v28

    if-lt v0, v1, :cond_e

    const/16 v28, 0x1fb

    move/from16 v0, v25

    move/from16 v1, v28

    if-gt v0, v1, :cond_e

    const/16 v28, 0x191

    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_e

    const/16 v28, 0x197

    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_e

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v23

    .local v23, reasonPhrase:Ljava/lang/String;
    if-eqz v23, :cond_c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/net/http/Request;->getReasonPhraseString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v23

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x1040468

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    aput-object v23, v30, v31

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, errorMsg:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v28, v0

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v30

    invoke-interface/range {v28 .. v30}, Landroid/net/http/EventHandler;->data([BI)V

    .end local v11           #errorMsg:Ljava/lang/String;
    .end local v23           #reasonPhrase:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/net/http/EventHandler;->endData()V

    invoke-virtual/range {v19 .. v19}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    const/16 v28, 0x0

    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v14           #headers:Landroid/net/http/Headers;
    .end local v15           #i$:I
    .end local v16           #len$:I
    .end local v17           #params:Lorg/apache/http/params/HttpParams;
    .end local v19           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v20           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v22           #proxySock:Ljava/net/Socket;
    .end local v25           #statusCode:I
    .end local v26           #statusLine:Lorg/apache/http/StatusLine;
    .end local v27           #version:Lorg/apache/http/ProtocolVersion;
    :goto_3
    return-object v28

    :cond_f
    :try_start_7
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v24, v0

    const v28, 0xea60

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    new-instance v28, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v30

    invoke-direct/range {v28 .. v30}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v28

    move-object/from16 v8, v28

    .restart local v8       #e:Ljava/io/IOException;
    if-eqz v24, :cond_10

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/SSLSocket;->close()V

    :cond_10
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_11

    const-string v10, "failed to create an SSL socket"

    :cond_11
    new-instance v28, Ljava/io/IOException;

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v9       #error:Landroid/net/http/SslError;
    :catchall_0
    move-exception v29

    :try_start_8
    monitor-exit v28
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v29

    .restart local v6       #canHandle:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v29, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v29, :cond_13

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    const-wide/32 v30, 0x927c0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/Object;->wait(J)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v29, v0

    if-eqz v29, :cond_13

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mAborted:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6

    :cond_13
    :goto_4
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mAborted:Z

    move/from16 v29, v0

    if-eqz v29, :cond_14

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/SSLSocket;->close()V

    new-instance v29, Landroid/net/http/SSLConnectionClosedByUserException;

    const-string v30, "connection closed by the user"

    invoke-direct/range {v29 .. v30}, Landroid/net/http/SSLConnectionClosedByUserException;-><init>(Ljava/lang/String;)V

    throw v29

    :catchall_1
    move-exception v29

    monitor-exit v28
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v29

    :cond_14
    :try_start_c
    monitor-exit v28
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v6           #canHandle:Z
    :cond_15
    new-instance v7, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v7}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .local v7, conn:Landroid/net/http/AndroidHttpClientConnection;
    new-instance v17, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v17, params:Lorg/apache/http/params/BasicHttpParams;
    const-string v28, "http.socket.buffer-size"

    const/16 v29, 0x2000

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-object v0, v7

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v28, v7

    goto/16 :goto_3

    .end local v7           #conn:Landroid/net/http/AndroidHttpClientConnection;
    .end local v17           #params:Lorg/apache/http/params/BasicHttpParams;
    .restart local v6       #canHandle:Z
    :catch_6
    move-exception v29

    goto :goto_4

    .end local v6           #canHandle:Z
    .end local v9           #error:Landroid/net/http/SslError;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v22       #proxySock:Ljava/net/Socket;
    :catch_7
    move-exception v28

    move-object/from16 v8, v28

    move-object/from16 v21, v22

    .end local v22           #proxySock:Ljava/net/Socket;
    .restart local v21       #proxySock:Ljava/net/Socket;
    goto/16 :goto_1

    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v21           #proxySock:Ljava/net/Socket;
    .restart local v19       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v22       #proxySock:Ljava/net/Socket;
    :catch_8
    move-exception v28

    move-object/from16 v8, v28

    move-object/from16 v21, v22

    .end local v22           #proxySock:Ljava/net/Socket;
    .restart local v21       #proxySock:Ljava/net/Socket;
    move-object/from16 v18, v19

    .end local v19           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    goto/16 :goto_1
.end method

.method restartConnection(Z)V
    .locals 3
    .parameter "proceed"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    iput-object p1, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
