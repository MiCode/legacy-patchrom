.class Landroid/os/CountDownTimer$1;
.super Landroid/os/Handler;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Landroid/os/CountDownTimer;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const-wide/16 v11, 0x0

    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #getter for: Landroid/os/CountDownTimer;->mStopTimeInFuture:J
    invoke-static {v7}, Landroid/os/CountDownTimer;->access$000(Landroid/os/CountDownTimer;)J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v4, v7, v9

    .local v4, millisLeft:J
    cmp-long v7, v4, v11

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v7}, Landroid/os/CountDownTimer;->onFinish()V

    :goto_0
    monitor-exit v6

    return-void

    :cond_0
    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #getter for: Landroid/os/CountDownTimer;->mCountdownInterval:J
    invoke-static {v7}, Landroid/os/CountDownTimer;->access$100(Landroid/os/CountDownTimer;)J

    move-result-wide v7

    cmp-long v7, v4, v7

    if-gez v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7, v4, v5}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v4           #millisLeft:J
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v4       #millisLeft:J
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, lastTickStart:J
    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v7, v4, v5}, Landroid/os/CountDownTimer;->onTick(J)V

    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #getter for: Landroid/os/CountDownTimer;->mCountdownInterval:J
    invoke-static {v7}, Landroid/os/CountDownTimer;->access$100(Landroid/os/CountDownTimer;)J

    move-result-wide v7

    add-long/2addr v7, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v0, v7, v9

    .local v0, delay:J
    :goto_1
    cmp-long v7, v0, v11

    if-gez v7, :cond_2

    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #getter for: Landroid/os/CountDownTimer;->mCountdownInterval:J
    invoke-static {v7}, Landroid/os/CountDownTimer;->access$100(Landroid/os/CountDownTimer;)J

    move-result-wide v7

    add-long/2addr v0, v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7, v0, v1}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
