.class abstract Landroid/webkit/StreamLoader;
.super Ljava/lang/Object;
.source "StreamLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_DATA:I = 0x66

.field private static final MSG_END:I = 0x67

.field private static final MSG_HEADERS:I = 0x65

.field private static final MSG_STATUS:I = 0x64


# instance fields
.field protected mContentLength:J

.field protected final mContext:Landroid/content/Context;

.field private mData:[B

.field protected mDataStream:Ljava/io/InputStream;

.field private mHandler:Landroid/os/Handler;

.field protected final mLoadListener:Landroid/webkit/LoadListener;


# direct methods
.method constructor <init>(Landroid/webkit/LoadListener;)V
    .locals 1
    .parameter "loadlistener"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    .line 71
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/StreamLoader;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private closeStreamAndSendEndData()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Landroid/webkit/LoadListener;->endData()V

    .line 203
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendData()Z
    .locals 5

    .prologue
    .line 177
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 179
    :try_start_0
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mDataStream:Ljava/io/InputStream;

    iget-object v3, p0, Landroid/webkit/StreamLoader;->mData:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 180
    .local v0, amount:I
    if-lez v0, :cond_0

    .line 181
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/StreamLoader;->mData:[B

    invoke-virtual {v2, v3, v0}, Landroid/webkit/LoadListener;->data([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    const/4 v2, 0x0

    .line 188
    .end local v0           #amount:I
    :goto_0
    return v2

    .line 184
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 185
    .local v1, ex:Ljava/io/IOException;
    iget-object v2, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/16 v3, -0xd

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 188
    .end local v1           #ex:Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private sendHeaders()V
    .locals 5

    .prologue
    .line 161
    new-instance v0, Landroid/net/http/Headers;

    invoke-direct {v0}, Landroid/net/http/Headers;-><init>()V

    .line 162
    .local v0, headers:Landroid/net/http/Headers;
    iget-wide v1, p0, Landroid/webkit/StreamLoader;->mContentLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 163
    iget-wide v1, p0, Landroid/webkit/StreamLoader;->mContentLength:J

    invoke-virtual {v0, v1, v2}, Landroid/net/http/Headers;->setContentLength(J)V

    .line 165
    :cond_0
    invoke-virtual {p0, v0}, Landroid/webkit/StreamLoader;->buildHeaders(Landroid/net/http/Headers;)V

    .line 166
    iget-object v1, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v0}, Landroid/webkit/LoadListener;->headers(Landroid/net/http/Headers;)V

    .line 167
    return-void
.end method


# virtual methods
.method protected abstract buildHeaders(Landroid/net/http/Headers;)V
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v1, 0x66

    const/4 v2, 0x1

    .line 121
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->closeStreamAndSendEndData()V

    move v0, v2

    .line 154
    :goto_0
    return v0

    .line 128
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :pswitch_0
    invoke-virtual {p0}, Landroid/webkit/StreamLoader;->setupStreamAndSendStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/webkit/StreamLoader;->mData:[B

    .line 134
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    move v0, v2

    .line 154
    goto :goto_0

    .line 138
    :pswitch_1
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->sendHeaders()V

    .line 139
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 142
    :pswitch_2
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->sendData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 145
    :cond_3
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 149
    :pswitch_3
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->closeStreamAndSendEndData()V

    goto :goto_1

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final load()V
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/os/Handler;

    .line 102
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 108
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/StreamLoader;->setupStreamAndSendStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/webkit/StreamLoader;->mData:[B

    .line 112
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->sendHeaders()V

    .line 113
    :cond_3
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->sendData()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    :cond_4
    invoke-direct {p0}, Landroid/webkit/StreamLoader;->closeStreamAndSendEndData()V

    .line 115
    iget-object v0, p0, Landroid/webkit/StreamLoader;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Landroid/webkit/LoadListener;->loadSynchronousMessages()V

    goto :goto_0
.end method

.method protected abstract setupStreamAndSendStatus()Z
.end method
