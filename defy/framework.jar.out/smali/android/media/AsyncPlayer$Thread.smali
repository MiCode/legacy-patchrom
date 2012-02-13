.class final Landroid/media/AsyncPlayer$Thread;
.super Ljava/lang/Thread;
.source "AsyncPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AsyncPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Thread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AsyncPlayer;


# direct methods
.method constructor <init>(Landroid/media/AsyncPlayer;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #getter for: Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    :goto_0
    const/4 v1, 0x0

    .local v1, cmd:Landroid/media/AsyncPlayer$Command;
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #getter for: Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #getter for: Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/media/AsyncPlayer$Command;

    move-object v1, v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v4, v1, Landroid/media/AsyncPlayer$Command;->code:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #getter for: Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v5, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #getter for: Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v5}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    const/4 v6, 0x0

    #setter for: Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;
    invoke-static {v5, v6}, Landroid/media/AsyncPlayer;->access$402(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Thread;)Landroid/media/AsyncPlayer$Thread;

    iget-object v5, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #calls: Landroid/media/AsyncPlayer;->releaseWakeLock()V
    invoke-static {v5}, Landroid/media/AsyncPlayer;->access$500(Landroid/media/AsyncPlayer;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :pswitch_0
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #calls: Landroid/media/AsyncPlayer;->startSound(Landroid/media/AsyncPlayer$Command;)V
    invoke-static {v4, v1}, Landroid/media/AsyncPlayer;->access$200(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #getter for: Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$300(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Landroid/media/AsyncPlayer$Command;->requestTime:J

    sub-long v2, v4, v6

    .local v2, delay:J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #getter for: Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification stop delayed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "msecs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #getter for: Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$300(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #getter for: Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$300(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #setter for: Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4, v8}, Landroid/media/AsyncPlayer;->access$302(Landroid/media/AsyncPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto :goto_1

    .end local v2           #delay:J
    :cond_1
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    #getter for: Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "STOP command without a player"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    :try_start_3
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
