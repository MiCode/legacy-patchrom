.class public Landroid/webkit/SslErrorHandler;
.super Landroid/os/Handler;
.source "SslErrorHandler.java"


# static fields
.field private static final HANDLE_RESPONSE:I = 0x64

.field private static final LOGTAG:Ljava/lang/String; = "network"


# instance fields
.field private final mLoadListener:Landroid/webkit/LoadListener;

.field private mLoaderQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/LoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginHandler:Landroid/webkit/SslErrorHandler;

.field private mSslPrefTable:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslErrorHandler;->mLoaderQueue:Ljava/util/LinkedList;

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    .line 84
    iput-object v1, p0, Landroid/webkit/SslErrorHandler;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    .line 85
    iput-object v1, p0, Landroid/webkit/SslErrorHandler;->mLoadListener:Landroid/webkit/LoadListener;

    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/webkit/SslErrorHandler;Landroid/webkit/LoadListener;)V
    .locals 0
    .parameter "origin"
    .parameter "listener"

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/webkit/SslErrorHandler;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    .line 93
    iput-object p2, p0, Landroid/webkit/SslErrorHandler;->mLoadListener:Landroid/webkit/LoadListener;

    .line 94
    return-void
.end method

.method private declared-synchronized processNextLoader()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/webkit/SslErrorHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/LoadListener;

    .line 187
    .local v1, loader:Landroid/webkit/LoadListener;
    if-eqz v1, :cond_3

    .line 189
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Landroid/webkit/SslErrorHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    .line 217
    :goto_0
    monitor-exit p0

    return v3

    .line 196
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->sslError()Landroid/net/http/SslError;

    move-result-object v0

    .line 198
    .local v0, error:Landroid/net/http/SslError;
    sget-boolean v3, Landroid/webkit/DebugFlags;->SSL_ERROR_HANDLER:Z

    if-eqz v3, :cond_1

    .line 199
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 205
    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/webkit/SslErrorHandler;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    iget-object v3, p0, Landroid/webkit/SslErrorHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move v3, v4

    .line 207
    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v2

    .line 213
    .local v2, proxy:Landroid/webkit/CallbackProxy;
    new-instance v3, Landroid/webkit/SslErrorHandler;

    invoke-direct {v3, p0, v1}, Landroid/webkit/SslErrorHandler;-><init>(Landroid/webkit/SslErrorHandler;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2, v3, v0}, Landroid/webkit/CallbackProxy;->onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .end local v0           #error:Landroid/net/http/SslError;
    .end local v2           #proxy:Landroid/webkit/CallbackProxy;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 186
    .end local v1           #loader:Landroid/webkit/LoadListener;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-object v0, p0, Landroid/webkit/SslErrorHandler;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    iget-object v1, p0, Landroid/webkit/SslErrorHandler;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    const/16 v2, 0x64

    iget-object v3, p0, Landroid/webkit/SslErrorHandler;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/webkit/SslErrorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/SslErrorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    return-void
.end method

.method declared-synchronized checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z
    .locals 5
    .parameter "loader"
    .parameter "error"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 156
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, host:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    .line 159
    .local v1, primary:I
    sget-boolean v2, Landroid/webkit/DebugFlags;->SSL_ERROR_HANDLER:Z

    if-eqz v2, :cond_0

    .line 160
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 163
    :cond_0
    iget-object v2, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    iget-object v2, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 165
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/webkit/SslErrorHandler;->handleSslErrorResponse(Landroid/webkit/LoadListener;Landroid/net/http/SslError;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 169
    :goto_1
    monitor-exit p0

    return v2

    :cond_1
    move v2, v4

    .line 160
    goto :goto_0

    :cond_2
    move v2, v4

    .line 169
    goto :goto_1

    .line 156
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #primary:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized clear()V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fastProcessQueuedSslErrors()V
    .locals 1

    .prologue
    .line 177
    :cond_0
    invoke-direct {p0}, Landroid/webkit/SslErrorHandler;->processNextLoader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 63
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/LoadListener;

    .line 66
    .local v0, loader:Landroid/webkit/LoadListener;
    monitor-enter p0

    .line 67
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/LoadListener;->sslError()Landroid/net/http/SslError;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/SslErrorHandler;->handleSslErrorResponse(Landroid/webkit/LoadListener;Landroid/net/http/SslError;Z)V

    .line 69
    iget-object v1, p0, Landroid/webkit/SslErrorHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->fastProcessQueuedSslErrors()V

    .line 71
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 67
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized handleSslErrorRequest(Landroid/webkit/LoadListener;)V
    .locals 3
    .parameter "loader"

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Landroid/webkit/DebugFlags;->SSL_ERROR_HANDLER:Z

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "network"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SslErrorHandler.handleSslErrorRequest(): url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Landroid/webkit/SslErrorHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Landroid/webkit/SslErrorHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 145
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->fastProcessQueuedSslErrors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_1
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleSslErrorResponse(Landroid/webkit/LoadListener;Landroid/net/http/SslError;Z)V
    .locals 6
    .parameter "loader"
    .parameter "error"
    .parameter "proceed"

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Landroid/webkit/DebugFlags;->SSL_ERROR_HANDLER:Z

    if-eqz v3, :cond_0

    .line 245
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 246
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 249
    :cond_0
    sget-boolean v3, Landroid/webkit/DebugFlags;->SSL_ERROR_HANDLER:Z

    if-eqz v3, :cond_1

    .line 250
    const-string/jumbo v3, "network"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SslErrorHandler.handleSslErrorResponse(): proceed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 256
    if-eqz p3, :cond_4

    .line 258
    invoke-virtual {p2}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    .line 259
    .local v2, primary:I
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, host:Ljava/lang/String;
    sget-boolean v3, Landroid/webkit/DebugFlags;->SSL_ERROR_HANDLER:Z

    if-eqz v3, :cond_2

    .line 262
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 264
    :cond_2
    iget-object v3, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 265
    .local v0, hasKey:Z
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-le v2, v3, :cond_4

    .line 267
    :cond_3
    iget-object v3, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    .end local v0           #hasKey:Z
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #primary:I
    :cond_4
    invoke-virtual {p1, p3}, Landroid/webkit/LoadListener;->handleSslErrorResponse(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_5
    monitor-exit p0

    return-void

    .line 262
    .restart local v1       #host:Ljava/lang/String;
    .restart local v2       #primary:I
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 244
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #primary:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public proceed()V
    .locals 6

    .prologue
    .line 224
    iget-object v0, p0, Landroid/webkit/SslErrorHandler;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    iget-object v1, p0, Landroid/webkit/SslErrorHandler;->mOriginHandler:Landroid/webkit/SslErrorHandler;

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/webkit/SslErrorHandler;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/SslErrorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/SslErrorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    return-void
.end method

.method declared-synchronized restoreState(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "inState"

    .prologue
    const-string/jumbo v1, "ssl-error-handler"

    .line 115
    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 116
    .local v0, success:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    const-string/jumbo v1, "ssl-error-handler"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    const-string/jumbo v1, "ssl-error-handler"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return v0

    .line 115
    .end local v0           #success:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .restart local v0       #success:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized saveState(Landroid/os/Bundle;)Z
    .locals 3
    .parameter "outState"

    .prologue
    .line 101
    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 102
    .local v0, success:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    const-string/jumbo v1, "ssl-error-handler"

    iget-object v2, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return v0

    .line 101
    .end local v0           #success:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .restart local v0       #success:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
