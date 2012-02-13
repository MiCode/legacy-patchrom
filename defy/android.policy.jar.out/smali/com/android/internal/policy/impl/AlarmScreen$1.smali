.class Lcom/android/internal/policy/impl/AlarmScreen$1;
.super Landroid/os/Handler;
.source "AlarmScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/AlarmScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AlarmScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #calls: Lcom/android/internal/policy/impl/AlarmScreen;->snooze()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$000(Lcom/android/internal/policy/impl/AlarmScreen;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #calls: Lcom/android/internal/policy/impl/AlarmScreen;->gotoShutdown()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$100(Lcom/android/internal/policy/impl/AlarmScreen;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/android/internal/policy/impl/AlarmScreen;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$200(Lcom/android/internal/policy/impl/AlarmScreen;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AlarmScreen;->access$300(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AlarmScreen;->access$300(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AlarmScreen;->access$300(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/AlarmScreen;->access$302(Lcom/android/internal/policy/impl/AlarmScreen;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #calls: Lcom/android/internal/policy/impl/AlarmScreen;->gotoPowerCycle()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$400(Lcom/android/internal/policy/impl/AlarmScreen;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    #calls: Lcom/android/internal/policy/impl/AlarmScreen;->showProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/AlarmScreen;->access$500(Lcom/android/internal/policy/impl/AlarmScreen;Z)V

    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #calls: Lcom/android/internal/policy/impl/AlarmScreen;->handleAutoSnooze()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$600(Lcom/android/internal/policy/impl/AlarmScreen;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
