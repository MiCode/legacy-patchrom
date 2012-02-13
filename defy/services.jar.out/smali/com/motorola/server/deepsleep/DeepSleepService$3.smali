.class Lcom/motorola/server/deepsleep/DeepSleepService$3;
.super Landroid/os/Handler;
.source "DeepSleepService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/deepsleep/DeepSleepService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/deepsleep/DeepSleepService;


# direct methods
.method constructor <init>(Lcom/motorola/server/deepsleep/DeepSleepService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x6

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "DeepSleepService"

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #getter for: Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$000(Lcom/motorola/server/deepsleep/DeepSleepService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, am:Landroid/app/AlarmManager;
    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #getter for: Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$000(Lcom/motorola/server/deepsleep/DeepSleepService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .local v4, pm:Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #getter for: Lcom/motorola/server/deepsleep/DeepSleepService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$000(Lcom/motorola/server/deepsleep/DeepSleepService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .local v1, audioManager:Landroid/media/AudioManager;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "DeepSleepService"

    const-string v5, "DISABLE_MEDIA_CMD try to stop media"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #calls: Lcom/motorola/server/deepsleep/DeepSleepService;->stopMediaPlayer(I)V
    invoke-static {v5, v8}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$100(Lcom/motorola/server/deepsleep/DeepSleepService;I)V

    const-wide/16 v5, 0x14

    invoke-virtual {p0, v11, v5, v6}, Lcom/motorola/server/deepsleep/DeepSleepService$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const-string v5, "DeepSleepService"

    const-string v5, "DISABLE_MEDIA_INTENT can stop media --> gotoDeepSleepMode"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #calls: Lcom/motorola/server/deepsleep/DeepSleepService;->setDeepSleepModeMain(Z)V
    invoke-static {v5, v8}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$200(Lcom/motorola/server/deepsleep/DeepSleepService;Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "DeepSleepService"

    const-string v5, "DISABLE_MEDIA_ALERT try to stop media"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #calls: Lcom/motorola/server/deepsleep/DeepSleepService;->stopMediaPlayer(I)V
    invoke-static {v5, v11}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$100(Lcom/motorola/server/deepsleep/DeepSleepService;I)V

    goto :goto_0

    :cond_1
    const-string v5, "DeepSleepService"

    const-string v5, "DISABLE_MEDIA_CMD can stop media --> gotoDeepSleep"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #calls: Lcom/motorola/server/deepsleep/DeepSleepService;->setDeepSleepModeMain(Z)V
    invoke-static {v5, v8}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$200(Lcom/motorola/server/deepsleep/DeepSleepService;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #calls: Lcom/motorola/server/deepsleep/DeepSleepService;->checkWakeLocks()Z
    invoke-static {v5}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$300(Lcom/motorola/server/deepsleep/DeepSleepService;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #getter for: Lcom/motorola/server/deepsleep/DeepSleepService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$400(Lcom/motorola/server/deepsleep/DeepSleepService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    invoke-virtual {v5, v9}, Lcom/motorola/server/deepsleep/DeepSleepService;->enableDeepSleepMode(Z)V

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #calls: Lcom/motorola/server/deepsleep/DeepSleepService;->showWakelockDialog()V
    invoke-static {v5}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$500(Lcom/motorola/server/deepsleep/DeepSleepService;)V

    goto :goto_0

    :cond_2
    const-string v5, "DeepSleepService"

    const-string v5, " AlarmManager do deepsleep"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Landroid/app/AlarmManager;->updateAlarmsForDeepSleep(Z)V

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #getter for: Lcom/motorola/server/deepsleep/DeepSleepService;->mPlugType:I
    invoke-static {v5}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$600(Lcom/motorola/server/deepsleep/DeepSleepService;)I

    move-result v5

    if-ne v5, v8, :cond_3

    const-string v5, "DeepSleepService"

    const-string v5, "go into charge only mode"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #calls: Lcom/motorola/server/deepsleep/DeepSleepService;->showChargeOnlyMode()V
    invoke-static {v5}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$700(Lcom/motorola/server/deepsleep/DeepSleepService;)V

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #setter for: Lcom/motorola/server/deepsleep/DeepSleepService;->mShowChargeOnlyMode:Z
    invoke-static {v5, v8}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$802(Lcom/motorola/server/deepsleep/DeepSleepService;Z)Z

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #getter for: Lcom/motorola/server/deepsleep/DeepSleepService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$400(Lcom/motorola/server/deepsleep/DeepSleepService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #setter for: Lcom/motorola/server/deepsleep/DeepSleepService;->mDeepSleepMode:Z
    invoke-static {v5, v8}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$902(Lcom/motorola/server/deepsleep/DeepSleepService;Z)Z

    goto/16 :goto_0

    :cond_3
    const-string v5, "DeepSleepService"

    const-string v5, " PowerManager do deepsleep"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #getter for: Lcom/motorola/server/deepsleep/DeepSleepService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$400(Lcom/motorola/server/deepsleep/DeepSleepService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/PowerManager;->goToDeepSleep(ZJ)V

    goto :goto_1

    :pswitch_4
    const-string v5, "DeepSleepService"

    const-string v5, " AlarmManager go out of deepsleep"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v9}, Landroid/app/AlarmManager;->updateAlarmsForDeepSleep(Z)V

    const-string v5, "DeepSleepService"

    const-string v5, " PowerManager go out of deepsleep"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/PowerManager;->goToDeepSleep(ZJ)V

    iget-object v5, p0, Lcom/motorola/server/deepsleep/DeepSleepService$3;->this$0:Lcom/motorola/server/deepsleep/DeepSleepService;

    #setter for: Lcom/motorola/server/deepsleep/DeepSleepService;->mDeepSleepMode:Z
    invoke-static {v5, v9}, Lcom/motorola/server/deepsleep/DeepSleepService;->access$902(Lcom/motorola/server/deepsleep/DeepSleepService;Z)Z

    goto/16 :goto_0

    :pswitch_5
    const-string v5, "DeepSleepService"

    const-string v5, "Enable EventDispatching"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .local v3, mWm:Landroid/view/IWindowManager;
    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v3, v5}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/SecurityException;
    const-string v5, "DeepSleepService"

    const-string v5, "SecurityException from setEventDispatching"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "DeepSleepService"

    const-string v5, "RemoteException from setEventDispatching"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
