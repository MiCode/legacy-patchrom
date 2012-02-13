.class public Landroid/os/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Handler$1;,
        Landroid/os/Handler$MessengerImpl;,
        Landroid/os/Handler$Callback;
    }
.end annotation


# static fields
.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field private static final TAG:Ljava/lang/String; = "Handler"


# instance fields
.field final mCallback:Landroid/os/Handler$Callback;

.field final mLooper:Landroid/os/Looper;

.field mMessenger:Landroid/os/IMessenger;

.field final mQueue:Landroid/os/MessageQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    iput-object p1, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    iget-object v0, p1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 1
    .parameter "looper"
    .parameter "callback"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    iget-object v0, p1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    iput-object p2, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    return-void
.end method

.method private final getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1
    .parameter "r"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "r"
    .parameter "token"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final handleCallback(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/os/Handler;->handleCallback(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public final dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "looper uninitialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final getIMessenger()Landroid/os/IMessenger;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    monitor-exit v0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Handler$MessengerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/os/Handler$MessengerImpl;-><init>(Landroid/os/Handler;Landroid/os/Handler$1;)V

    iput-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    iget-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    return-void
.end method

.method public final hasMessages(I)Z
    .locals 3
    .parameter "what"

    .prologue
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public final hasMessages(ILjava/lang/Object;)Z
    .locals 2
    .parameter "what"
    .parameter "object"

    .prologue
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .prologue
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 3
    .parameter "r"

    .prologue
    invoke-direct {p0, p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "r"

    .prologue
    invoke-direct {p0, p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "r"
    .parameter "uptimeMillis"

    .prologue
    invoke-direct {p0, p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1
    .parameter "r"
    .parameter "token"
    .parameter "uptimeMillis"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    invoke-direct {p0, p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .parameter "r"
    .parameter "token"

    .prologue
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1
    .parameter "token"

    .prologue
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1}, Landroid/os/MessageQueue;->removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMessages(I)V
    .locals 3
    .parameter "what"

    .prologue
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;Z)Z

    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "object"

    .prologue
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;Z)Z

    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .locals 2
    .parameter "what"

    .prologue
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 2
    .parameter "what"
    .parameter "uptimeMillis"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 2
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .local v2, sent:Z
    iget-object v1, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .local v1, queue:Landroid/os/MessageQueue;
    if-eqz v1, :cond_0

    iput-object p0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/MessageQueue;->enqueueMessage(Landroid/os/Message;J)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sendMessageAtTime() called with no mQueue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "Looper"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 5
    .parameter "msg"
    .parameter "uptimeMillis"

    .prologue
    const/4 v2, 0x0

    .local v2, sent:Z
    iget-object v1, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .local v1, queue:Landroid/os/MessageQueue;
    if-eqz v1, :cond_0

    iput-object p0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/MessageQueue;->enqueueMessage(Landroid/os/Message;J)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sendMessageAtTime() called with no mQueue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "Looper"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 2
    .parameter "msg"
    .parameter "delayMillis"

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
