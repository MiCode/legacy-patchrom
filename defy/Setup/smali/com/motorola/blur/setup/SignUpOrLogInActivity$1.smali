.class Lcom/motorola/blur/setup/SignUpOrLogInActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SignUpOrLogInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/SignUpOrLogInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$1;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$1;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$000(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 65
    .local v2, msg:Landroid/os/Message;
    const-string v3, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 99
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$1;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$000(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    return-void

    .line 68
    :cond_1
    const-string v3, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE_RESPONSE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$1;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    const/4 v4, 0x1

    #setter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mRecievedBOTAResponse:Z
    invoke-static {v3, v4}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$102(Lcom/motorola/blur/setup/SignUpOrLogInActivity;Z)Z

    .line 72
    iget-object v3, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$1;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$200(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Ljava/util/Timer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 73
    iget-object v3, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$1;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$200(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 76
    :cond_2
    invoke-static {p2}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;->errorFromIntent(Landroid/content/Intent;)Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    move-result-object v1

    .line 83
    .local v1, errorCode:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;
    sget-object v3, Lcom/motorola/blur/setup/SignUpOrLogInActivity$8;->$SwitchMap$com$motorola$blur$service$blur$upgrade$UpgradeUtilConstants$Error:[I

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 95
    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 97
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v1           #errorCode:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 87
    .restart local v1       #errorCode:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;
    :pswitch_0
    const/4 v3, 0x3

    :try_start_1
    iput v3, v2, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
