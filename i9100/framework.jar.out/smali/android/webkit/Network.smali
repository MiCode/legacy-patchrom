.class Landroid/webkit/Network;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "network"

.field private static sNetwork:Landroid/webkit/Network;

.field private static sPlatformNotificationEnableRefCount:I

.field private static sPlatformNotifications:Z


# instance fields
.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

.field private mProxyPassword:Ljava/lang/String;

.field private mProxyUsername:Ljava/lang/String;

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mSslErrorHandler:Landroid/webkit/SslErrorHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewCoreThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 139
    :cond_0
    new-instance v0, Landroid/webkit/SslErrorHandler;

    invoke-direct {v0}, Landroid/webkit/SslErrorHandler;-><init>()V

    iput-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 140
    new-instance v0, Landroid/webkit/HttpAuthHandler;

    invoke-direct {v0, p0}, Landroid/webkit/HttpAuthHandler;-><init>(Landroid/webkit/Network;)V

    iput-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    .line 142
    new-instance v0, Landroid/net/http/RequestQueue;

    invoke-direct {v0, p1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 143
    return-void
.end method

.method public static disablePlatformNotifications()V
    .locals 2

    .prologue
    .line 121
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->disablePlatformNotifications()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_0
.end method

.method public static enablePlatformNotifications()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 107
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-ne v0, v1, :cond_0

    .line 108
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->enablePlatformNotifications()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    sput-boolean v1, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/Network;
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    const-class v0, Landroid/webkit/Network;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Landroid/webkit/Network;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/Network;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    .line 91
    sget-boolean v1, Landroid/webkit/Network;->sPlatformNotifications:Z

    if-eqz v1, :cond_0

    .line 95
    sget v1, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    .line 96
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 99
    :cond_0
    sget-object v1, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z
    .locals 1
    .parameter "loader"
    .parameter "error"

    .prologue
    .line 313
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 314
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/SslErrorHandler;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v0

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearUserSslPrefTable()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->clear()V

    .line 297
    return-void
.end method

.method public getProxyHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleAuthRequest(Landroid/webkit/LoadListener;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 326
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 327
    :cond_0
    if-eqz p1, :cond_1

    .line 328
    iget-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/HttpAuthHandler;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    .line 330
    :cond_1
    return-void
.end method

.method public handleSslErrorRequest(Landroid/webkit/LoadListener;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 305
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 306
    :cond_0
    if-eqz p1, :cond_1

    .line 307
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandler;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    .line 309
    :cond_1
    return-void
.end method

.method public isValidProxySet()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v1}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z
    .locals 9
    .parameter "method"
    .parameter
    .parameter "postData"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Landroid/webkit/LoadListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 159
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 201
    :goto_0
    return v2

    .line 168
    :cond_0
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v3

    .line 170
    goto :goto_0

    .line 175
    :cond_2
    const/4 v6, 0x0

    .line 176
    .local v6, bodyProvider:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 177
    .local v7, bodyLength:I
    if-eqz p3, :cond_3

    .line 178
    array-length v7, p3

    .line 179
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6           #bodyProvider:Ljava/io/InputStream;
    invoke-direct {v6, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 182
    .restart local v6       #bodyProvider:Ljava/io/InputStream;
    :cond_3
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 183
    .local v0, q:Landroid/net/http/RequestQueue;
    const/4 v8, 0x0

    .line 184
    .local v8, handle:Landroid/net/http/RequestHandle;
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 185
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    .line 187
    invoke-virtual {p4, v8}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    .line 188
    invoke-virtual {v8}, Landroid/net/http/RequestHandle;->processRequest()V

    .line 189
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->loadSynchronousMessages()V

    .line 201
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 191
    :cond_4
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    .line 198
    invoke-virtual {p4, v8}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "inState"

    .prologue
    .line 285
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_0

    .line 286
    const-string/jumbo v0, "network"

    const-string v1, "Network.restoreState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandler;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "outState"

    .prologue
    .line 271
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_0

    .line 272
    const-string/jumbo v0, "network"

    const-string v1, "Network.saveState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandler;->saveState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setProxyPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "proxyPassword"

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 261
    :cond_0
    iput-object p1, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "proxyUsername"

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 241
    :cond_0
    iput-object p1, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTiming()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->startTiming()V

    .line 335
    return-void
.end method

.method public stopTiming()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->stopTiming()V

    .line 339
    return-void
.end method
