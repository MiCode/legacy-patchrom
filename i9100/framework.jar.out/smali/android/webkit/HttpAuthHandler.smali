.class public Landroid/webkit/HttpAuthHandler;
.super Landroid/os/Handler;
.source "HttpAuthHandler.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AUTH_CANCEL:I = 0xc8

.field private static final AUTH_PROCEED:I = 0x64

.field private static final LOGTAG:Ljava/lang/String; = "network"


# instance fields
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

.field private mNetwork:Landroid/webkit/Network;

.field mPassword:Ljava/lang/String;

.field mRequestInFlight:Z

.field mRequestInFlightLock:Ljava/lang/Object;

.field mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/HttpAuthHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/webkit/Network;)V
    .locals 1
    .parameter "network"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/HttpAuthHandler;->mRequestInFlightLock:Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Landroid/webkit/HttpAuthHandler;->mNetwork:Landroid/webkit/Network;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    .line 73
    return-void
.end method

.method private handleResponseForSynchronousRequest(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "username"
    .parameter "password"

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, loader:Landroid/webkit/LoadListener;
    iget-object v3, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 113
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v1, v0

    .line 114
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iput-object p1, p0, Landroid/webkit/HttpAuthHandler;->mUsername:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Landroid/webkit/HttpAuthHandler;->mPassword:Ljava/lang/String;

    .line 118
    const/4 v2, 0x1

    .line 120
    :goto_0
    return v2

    .line 114
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 120
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static onReceivedCredentials(Landroid/webkit/LoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "loader"
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    .line 278
    .local v0, proxy:Landroid/webkit/CallbackProxy;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/CallbackProxy;->onReceivedHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private processNextLoader()V
    .locals 7

    .prologue
    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, loader:Landroid/webkit/LoadListener;
    iget-object v6, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v6

    .line 252
    :try_start_0
    iget-object v5, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v2, v0

    .line 253
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    if-eqz v2, :cond_1

    .line 255
    iget-object v5, p0, Landroid/webkit/HttpAuthHandler;->mRequestInFlightLock:Ljava/lang/Object;

    monitor-enter v5

    .line 256
    :try_start_1
    sget-boolean v6, Landroid/webkit/HttpAuthHandler;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Landroid/webkit/HttpAuthHandler;->mRequestInFlight:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 258
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 253
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 257
    :cond_0
    const/4 v6, 0x1

    :try_start_3
    iput-boolean v6, p0, Landroid/webkit/HttpAuthHandler;->mRequestInFlight:Z

    .line 258
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v3

    .line 262
    .local v3, proxy:Landroid/webkit/CallbackProxy;
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->proxyAuthenticate()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/webkit/HttpAuthHandler;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v5}, Landroid/webkit/Network;->getProxyHostname()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 265
    .local v1, hostname:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->realm()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, realm:Ljava/lang/String;
    invoke-virtual {v3, p0, v1, v4}, Landroid/webkit/CallbackProxy;->onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v1           #hostname:Ljava/lang/String;
    .end local v3           #proxy:Landroid/webkit/CallbackProxy;
    .end local v4           #realm:Ljava/lang/String;
    :cond_1
    return-void

    .line 262
    .restart local v3       #proxy:Landroid/webkit/CallbackProxy;
    :cond_2
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_0
.end method

.method private signalRequestComplete()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/webkit/HttpAuthHandler;->mRequestInFlightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-boolean v1, Landroid/webkit/HttpAuthHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/HttpAuthHandler;->mRequestInFlight:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 126
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Landroid/webkit/HttpAuthHandler;->mRequestInFlight:Z

    .line 127
    iget-object v1, p0, Landroid/webkit/HttpAuthHandler;->mRequestInFlightLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 128
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    return-void
.end method

.method private waitForRequestToComplete()V
    .locals 4

    .prologue
    .line 235
    iget-object v1, p0, Landroid/webkit/HttpAuthHandler;->mRequestInFlightLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Landroid/webkit/HttpAuthHandler;->mRequestInFlight:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 238
    :try_start_1
    iget-object v2, p0, Landroid/webkit/HttpAuthHandler;->mRequestInFlightLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 240
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v2, "network"

    const-string v3, "Interrupted while waiting for request to complete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0, v0}, Landroid/webkit/HttpAuthHandler;->handleResponseForSynchronousRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;->signalRequestComplete()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/webkit/HttpAuthHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HttpAuthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;->signalRequestComplete()V

    goto :goto_0
.end method

.method handleAuthRequest(Landroid/webkit/LoadListener;)V
    .locals 4
    .parameter "loader"

    .prologue
    const/4 v3, 0x1

    .line 193
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;->waitForRequestToComplete()V

    .line 200
    iget-object v1, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 202
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;->processNextLoader()V

    .line 205
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;->waitForRequestToComplete()V

    .line 207
    iget-object v1, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 208
    :try_start_1
    sget-boolean v2, Landroid/webkit/HttpAuthHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 210
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 202
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 209
    :cond_0
    :try_start_3
    iget-object v2, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 210
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    iget-object v1, p0, Landroid/webkit/HttpAuthHandler;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/HttpAuthHandler;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/webkit/LoadListener;->handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    const/4 v0, 0x0

    .line 220
    .local v0, processNext:Z
    iget-object v1, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 221
    :try_start_4
    iget-object v2, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 222
    iget-object v2, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v0, v3

    .line 224
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 226
    if-eqz v0, :cond_1

    .line 227
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;->processNextLoader()V

    goto :goto_0

    .line 222
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 224
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, loader:Landroid/webkit/LoadListener;
    iget-object v5, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v5

    .line 80
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v1, v0

    .line 81
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    sget-boolean v4, Landroid/webkit/HttpAuthHandler;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 81
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 84
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 97
    :goto_0
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;->processNextLoader()V

    .line 98
    return-void

    .line 86
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, username:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, password:Ljava/lang/String;
    invoke-virtual {v1, v3, v2}, Landroid/webkit/LoadListener;->handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v2           #password:Ljava/lang/String;
    .end local v3           #username:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {v1, v6, v6}, Landroid/webkit/LoadListener;->handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/webkit/HttpAuthHandler;->handleResponseForSynchronousRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;->signalRequestComplete()V

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HttpAuthHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v0}, Landroid/webkit/HttpAuthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;->signalRequestComplete()V

    goto :goto_0
.end method

.method public useHttpAuthUsernamePassword()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, loader:Landroid/webkit/LoadListener;
    iget-object v3, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 173
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v1, v0

    .line 174
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->authCredentialsInvalid()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 179
    :goto_0
    return v2

    .line 174
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    move v2, v4

    .line 176
    goto :goto_0

    :cond_1
    move v2, v4

    .line 179
    goto :goto_0
.end method
