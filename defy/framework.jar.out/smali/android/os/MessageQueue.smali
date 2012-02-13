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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeInit()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/MessageQueue;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->nativeWake(I)I

    move-result v0

    return v0
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method private native nativePollOnce(II)V
.end method

.method private native nativeWake(I)I
.end method


# virtual methods
.method public final addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final enqueueMessage(Landroid/os/Message;J)Z
    .locals 12
    .parameter "msg"
    .parameter "when"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    iget-wide v7, p1, Landroid/os/Message;->when:J

    cmp-long v7, v7, v10

    if-eqz v7, :cond_0

    new-instance v7, Landroid/util/AndroidRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " This message is already in use."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v7, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v7, :cond_1

    iget-boolean v7, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Main thread not allowed to quit"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v7, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v7, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sending message to a Handler on a dead thread"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/RuntimeException;
    const-string v7, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    monitor-exit p0

    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_0
    return v7

    :cond_2
    iget-object v7, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v7, :cond_3

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/os/MessageQueue;->mQuiting:Z

    :cond_3
    iput-wide p2, p1, Landroid/os/Message;->when:J

    iget-object v4, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v4, p:Landroid/os/Message;
    if-eqz v4, :cond_4

    cmp-long v7, p2, v10

    if-eqz v7, :cond_4

    iget-wide v7, v4, Landroid/os/Message;->when:J

    cmp-long v7, p2, v7

    if-gez v7, :cond_6

    :cond_4
    iput-object v4, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .local v3, needWake:Z
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    iget v7, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v7}, Landroid/os/MessageQueue;->nativeWake(I)I

    move-result v7

    if-nez v7, :cond_5

    iget v2, p0, Landroid/os/MessageQueue;->mPtr:I

    .local v2, nativePtr:I
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, looper:Landroid/os/Looper;
    if-eqz v1, :cond_8

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v7

    new-instance v8, Landroid/os/MessageQueue$1;

    invoke-direct {v8, p0, v2}, Landroid/os/MessageQueue$1;-><init>(Landroid/os/MessageQueue;I)V

    invoke-virtual {v7, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .end local v1           #looper:Landroid/os/Looper;
    .end local v2           #nativePtr:I
    :cond_5
    :goto_2
    move v7, v9

    goto :goto_0

    .end local v3           #needWake:Z
    :cond_6
    const/4 v5, 0x0

    .local v5, prev:Landroid/os/Message;
    :goto_3
    if-eqz v4, :cond_7

    :try_start_1
    iget-wide v7, v4, Landroid/os/Message;->when:J

    cmp-long v7, v7, p2

    if-gtz v7, :cond_7

    move-object v5, v4

    iget-object v4, v4, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_3

    :cond_7
    iget-object v7, v5, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v7, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, v5, Landroid/os/Message;->next:Landroid/os/Message;

    const/4 v3, 0x0

    .restart local v3       #needWake:Z
    goto :goto_1

    .end local v3           #needWake:Z
    .end local v4           #p:Landroid/os/Message;
    .end local v5           #prev:Landroid/os/Message;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .restart local v1       #looper:Landroid/os/Looper;
    .restart local v2       #nativePtr:I
    .restart local v3       #needWake:Z
    .restart local v4       #p:Landroid/os/Message;
    :cond_8
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Landroid/os/MessageQueue$2;

    invoke-direct {v7, p0, v2}, Landroid/os/MessageQueue$2;-><init>(Landroid/os/MessageQueue;I)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v6, t:Ljava/lang/Thread;
    invoke-virtual {v6, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final next()Landroid/os/Message;
    .locals 15

    .prologue
    const/4 v7, -0x1

    .local v7, pendingIdleHandlerCount:I
    const/4 v4, 0x0

    .local v4, nextPollTimeoutMillis:I
    :goto_0
    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    :cond_0
    iget v11, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v11, v4}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .local v5, now:J
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v3, msg:Landroid/os/Message;
    if-eqz v3, :cond_3

    iget-wide v9, v3, Landroid/os/Message;->when:J

    .local v9, when:J
    cmp-long v11, v5, v9

    if-ltz v11, :cond_1

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    iget-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v11, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const/4 v11, 0x0

    iput-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    monitor-exit p0

    return-object v3

    :cond_1
    sub-long v11, v9, v5

    const-wide/32 v13, 0x7fffffff

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v4, v11

    .end local v9           #when:J
    :goto_1
    if-gez v7, :cond_2

    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_2
    if-nez v7, :cond_4

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    monitor-exit p0

    goto :goto_0

    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #now:J
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .restart local v3       #msg:Landroid/os/Message;
    .restart local v5       #now:J
    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v11, :cond_5

    const/4 v11, 0x4

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    :cond_5
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v12, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v0, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v7, :cond_7

    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v1, v11, v0

    .local v1, idler:Landroid/os/MessageQueue$IdleHandler;
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v12, 0x0

    aput-object v12, v11, v0

    const/4 v2, 0x0

    .local v2, keep:Z
    :try_start_2
    invoke-interface {v1}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    :goto_3
    if-nez v2, :cond_6

    monitor-enter p0

    :try_start_3
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v8

    .local v8, t:Ljava/lang/Throwable;
    const-string v11, "MessageQueue"

    const-string v12, "IdleHandler threw exception"

    invoke-static {v11, v12, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v8           #t:Ljava/lang/Throwable;
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .end local v1           #idler:Landroid/os/MessageQueue$IdleHandler;
    .end local v2           #keep:Z
    :cond_7
    const/4 v7, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method final removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "object"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v2, p:Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_1

    :cond_0
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    move-object v2, v0

    goto :goto_0

    .end local v0           #n:Landroid/os/Message;
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_3

    :cond_2
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_3
    move-object v2, v0

    goto :goto_1

    .end local v0           #n:Landroid/os/Message;
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

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
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

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

    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    move-object v2, v0

    goto :goto_1

    .end local v0           #n:Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_4
    move-object v2, v0

    goto :goto_2

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

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v3, p:Landroid/os/Message;
    const/4 v0, 0x0

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

    :cond_0
    if-nez p4, :cond_1

    monitor-exit p0

    move v4, v5

    :goto_1
    return v4

    :cond_1
    const/4 v0, 0x1

    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .local v1, n:Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    move-object v3, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .local v2, nn:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    iput-object v2, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .end local v1           #n:Landroid/os/Message;
    .end local v2           #nn:Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v3, :cond_6

    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .restart local v1       #n:Landroid/os/Message;
    if-eqz v1, :cond_5

    iget-object v4, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v4, p1, :cond_5

    iget v4, v1, Landroid/os/Message;->what:I

    if-ne v4, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v4, p3, :cond_5

    :cond_4
    if-nez p4, :cond_2

    monitor-exit p0

    move v4, v5

    goto :goto_1

    :cond_5
    move-object v3, v1

    goto :goto_2

    .end local v1           #n:Landroid/os/Message;
    :cond_6
    monitor-exit p0

    move v4, v0

    goto :goto_1

    .end local v0           #found:Z
    .end local v3           #p:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
