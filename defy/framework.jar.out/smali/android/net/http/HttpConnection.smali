.class Landroid/net/http/HttpConnection;
.super Landroid/net/http/Connection;
.source "HttpConnection.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .locals 0
    .parameter "context"
    .parameter "host"
    .parameter "requestFeeder"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    return-void
.end method


# virtual methods
.method closeConnection()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
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
    const-string v0, "http"

    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .locals 6
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    move-result-object v1

    .local v1, eventHandler:Landroid/net/http/EventHandler;
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    iget-object v4, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-interface {v1, v4}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    new-instance v0, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v0}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .local v0, conn:Landroid/net/http/AndroidHttpClientConnection;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v2, params:Lorg/apache/http/params/BasicHttpParams;
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .local v3, sock:Ljava/net/Socket;
    const-string v4, "http.socket.buffer-size"

    const/16 v5, 0x2000

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v0, v3, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method restartConnection(Z)V
    .locals 0
    .parameter "abort"

    .prologue
    return-void
.end method
