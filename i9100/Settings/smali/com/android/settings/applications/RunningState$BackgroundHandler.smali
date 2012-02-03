.class final Lcom/android/settings/applications/RunningState$BackgroundHandler;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    .line 131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 136
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean v2, v2, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-nez v2, :cond_0

    .line 140
    monitor-exit v1

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, cmd:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    #calls: Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    invoke-static {v1, v2, v3}, Lcom/android/settings/applications/RunningState;->access$000(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 145
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 147
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 148
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 144
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
