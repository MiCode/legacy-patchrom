.class public Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# instance fields
.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:I

.field mQuitAllowed:Z

.field private mQuiting:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 99
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeInit()V

    .line 100
    return-void
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method private native nativePollOnce(II)V
.end method

.method private native nativeWake(I)V
.end method


# virtual methods
.method public final addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit p0

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final enqueueMessage(Landroid/os/Message;J)Z
    .locals 9
    .parameter "msg"
    .parameter "when"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 186
    iget-wide v4, p1, Landroid/os/Message;->when:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_0

    .line 187
    new-instance v4, Landroid/util/AndroidRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    :cond_0
    iget-object v4, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v4, :cond_1

    .line 191
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Main thread not allowed to quit"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_1
    monitor-enter p0

    .line 195
    :try_start_0
    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v4, :cond_2

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    const/4 v4, 0x0

    monitor-exit p0

    .line 225
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_0
    return v4

    .line 200
    :cond_2
    iget-object v4, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v4, :cond_3

    .line 201
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/os/MessageQueue;->mQuiting:Z

    .line 204
    :cond_3
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 206
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 207
    .local v2, p:Landroid/os/Message;
    if-eqz v2, :cond_4

    cmp-long v4, p2, v7

    if-eqz v4, :cond_4

    iget-wide v4, v2, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-gez v4, :cond_6

    .line 208
    :cond_4
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 209
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 210
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 221
    .local v1, needWake:Z
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-eqz v1, :cond_5

    .line 223
    iget v4, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v4}, Landroid/os/MessageQueue;->nativeWake(I)V

    :cond_5
    move v4, v6

    .line 225
    goto :goto_0

    .line 212
    .end local v1           #needWake:Z
    :cond_6
    const/4 v3, 0x0

    .line 213
    .local v3, prev:Landroid/os/Message;
    :goto_2
    if-eqz v2, :cond_7

    :try_start_1
    iget-wide v4, v2, Landroid/os/Message;->when:J

    cmp-long v4, v4, p2

    if-gtz v4, :cond_7

    .line 214
    move-object v3, v2

    .line 215
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 217
    :cond_7
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v4, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 218
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 219
    const/4 v1, 0x0

    .restart local v1       #needWake:Z
    goto :goto_1

    .line 221
    .end local v1           #needWake:Z
    .end local v2           #p:Landroid/os/Message;
    .end local v3           #prev:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final next()Landroid/os/Message;
    .locals 15

    .prologue
    .line 112
    const/4 v7, -0x1

    .line 113
    .local v7, pendingIdleHandlerCount:I
    const/4 v4, 0x0

    .line 116
    .local v4, nextPollTimeoutMillis:I
    :goto_0
    if-eqz v4, :cond_0

    .line 117
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 119
    :cond_0
    iget v11, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v11, v4}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    .line 121
    monitor-enter p0

    .line 123
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 124
    .local v5, now:J
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 125
    .local v3, msg:Landroid/os/Message;
    if-eqz v3, :cond_3

    .line 126
    iget-wide v9, v3, Landroid/os/Message;->when:J

    .line 127
    .local v9, when:J
    cmp-long v11, v5, v9

    if-ltz v11, :cond_1

    .line 128
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 129
    iget-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v11, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 130
    const/4 v11, 0x0

    iput-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 132
    monitor-exit p0

    return-object v3

    .line 134
    :cond_1
    sub-long v11, v9, v5

    const-wide/32 v13, 0x7fffffff

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v4, v11

    .line 141
    .end local v9           #when:J
    :goto_1
    if-gez v7, :cond_2

    .line 142
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 144
    :cond_2
    if-nez v7, :cond_4

    .line 146
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 147
    monitor-exit p0

    goto :goto_0

    .line 154
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #now:J
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 137
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v5       #now:J
    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    .line 150
    :cond_4
    :try_start_1
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v11, :cond_5

    .line 151
    const/4 v11, 0x4

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 153
    :cond_5
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v12, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v0, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 154
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v7, :cond_7

    .line 159
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v1, v11, v0

    .line 160
    .local v1, idler:Landroid/os/MessageQueue$IdleHandler;
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v12, 0x0

    aput-object v12, v11, v0

    .line 162
    const/4 v2, 0x0

    .line 164
    .local v2, keep:Z
    :try_start_2
    invoke-interface {v1}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 169
    :goto_3
    if-nez v2, :cond_6

    .line 170
    monitor-enter p0

    .line 171
    :try_start_3
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    :catch_0
    move-exception v8

    .line 166
    .local v8, t:Ljava/lang/Throwable;
    const-string v11, "MessageQueue"

    const-string v12, "IdleHandler threw exception"

    invoke-static {v11, v12, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 172
    .end local v8           #t:Ljava/lang/Throwable;
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 177
    .end local v1           #idler:Landroid/os/MessageQueue$IdleHandler;
    .end local v2           #keep:Z
    :cond_7
    const/4 v7, 0x0

    .line 181
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method final removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "object"

    .prologue
    .line 301
    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 306
    .local v2, p:Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_1

    .line 307
    :cond_0
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 308
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 309
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 310
    move-object v2, v0

    .line 311
    goto :goto_0

    .line 314
    .end local v0           #n:Landroid/os/Message;
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 315
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 316
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_3

    .line 317
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_3

    .line 318
    :cond_2
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 319
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 320
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 326
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 324
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_3
    move-object v2, v0

    .line 325
    goto :goto_1

    .line 326
    .end local v0           #n:Landroid/os/Message;
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    return-void
.end method

.method public final removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    monitor-exit p0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "r"
    .parameter "object"

    .prologue
    .line 267
    if-nez p2, :cond_0

    .line 298
    :goto_0
    return-void

    .line 271
    :cond_0
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 276
    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    .line 277
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 278
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 279
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 280
    move-object v2, v0

    .line 281
    goto :goto_1

    .line 284
    .end local v0           #n:Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 285
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 286
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 287
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    .line 289
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 290
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 291
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 297
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 295
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 296
    goto :goto_2

    .line 297
    .end local v0           #n:Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final removeMessages(Landroid/os/Handler;ILjava/lang/Object;Z)Z
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "object"
    .parameter "doRemove"

    .prologue
    const/4 v5, 0x1

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 232
    .local v3, p:Landroid/os/Message;
    const/4 v0, 0x0

    .line 236
    .local v0, found:Z
    :goto_0
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v4, p1, :cond_3

    iget v4, v3, Landroid/os/Message;->what:I

    if-ne v4, p2, :cond_3

    if-eqz p3, :cond_0

    iget-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v4, p3, :cond_3

    .line 237
    :cond_0
    if-nez p4, :cond_1

    monitor-exit p0

    move v4, v5

    .line 262
    :goto_1
    return v4

    .line 238
    :cond_1
    const/4 v0, 0x1

    .line 239
    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 240
    .local v1, n:Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 241
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 242
    move-object v3, v1

    .line 243
    goto :goto_0

    .line 252
    :cond_2
    const/4 v0, 0x1

    .line 253
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 254
    .local v2, nn:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 255
    iput-object v2, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 246
    .end local v1           #n:Landroid/os/Message;
    .end local v2           #nn:Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v3, :cond_6

    .line 247
    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 248
    .restart local v1       #n:Landroid/os/Message;
    if-eqz v1, :cond_5

    .line 249
    iget-object v4, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v4, p1, :cond_5

    iget v4, v1, Landroid/os/Message;->what:I

    if-ne v4, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v4, p3, :cond_5

    .line 251
    :cond_4
    if-nez p4, :cond_2

    monitor-exit p0

    move v4, v5

    goto :goto_1

    .line 259
    :cond_5
    move-object v3, v1

    .line 260
    goto :goto_2

    .line 262
    .end local v1           #n:Landroid/os/Message;
    :cond_6
    monitor-exit p0

    move v4, v0

    goto :goto_1

    .line 263
    .end local v0           #found:Z
    .end local v3           #p:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
