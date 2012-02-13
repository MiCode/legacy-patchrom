.class Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;
.super Landroid/os/Handler;
.source "CreateBackgroundBlurAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 44
    iget-object v4, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$000(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    monitor-enter v4

    .line 45
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mQASilentLoginReqd:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$100(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$200(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 49
    :cond_0
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiverRegistered:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$300(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 50
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    iget-object v6, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$000(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    #setter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mReceiverRegistered:Ljava/lang/Boolean;
    invoke-static {v5, v6}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$302(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 54
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 132
    :goto_0
    monitor-exit v4

    .line 133
    :goto_1
    return-void

    .line 59
    :pswitch_0
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mQASilentLoginReqd:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$100(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$200(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    const/4 v6, -0x1

    #calls: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->finishBackgroundBlurAccountActivity(I)V
    invoke-static {v5, v6}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$400(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;I)V

    .line 62
    monitor-exit v4

    goto :goto_1

    .line 132
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 65
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    const-string v6, "DeviceSetup"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 67
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v5, "BlurServiceSlientRegistrationSystemUpdateRequest"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    .local v0, bSystemUpdateCase:Z
    if-nez v0, :cond_3

    .line 72
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    const-class v6, Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 90
    :goto_2
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-virtual {v5, v1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->setResult(I)V

    .line 92
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-virtual {v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->finish()V

    goto :goto_0

    .line 76
    :cond_3
    const/4 v3, 0x0

    .line 77
    .local v3, tosAccepted:Z
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-virtual {v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tos_accepted"

    invoke-static {v5, v6}, Lcom/motorola/blur/provider/DeviceSetup$AppSettings;->getAppSettings(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 80
    if-nez v3, :cond_4

    .line 82
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    const-class v6, Lcom/motorola/blur/setup/TosActivity;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    .line 86
    :cond_4
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.deviceinfo.CheckUpdate"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 99
    .end local v0           #bSystemUpdateCase:Z
    .end local v2           #settings:Landroid/content/SharedPreferences;
    .end local v3           #tosAccepted:Z
    :pswitch_1
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mQASilentLoginReqd:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$100(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 100
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    const/4 v6, 0x0

    #calls: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->finishBackgroundBlurAccountActivity(I)V
    invoke-static {v5, v6}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$400(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;I)V

    .line 101
    monitor-exit v4

    goto/16 :goto_1

    .line 104
    :cond_5
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    const-class v6, Lcom/motorola/blur/setup/AccountCreationTimeout;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-virtual {v5, v1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->setResult(I)V

    .line 109
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-virtual {v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->finish()V

    goto/16 :goto_0

    .line 116
    :pswitch_2
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->mQASilentLoginReqd:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$100(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 117
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    #calls: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->startAutoSignUpService()V
    invoke-static {v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->access$500(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;)V

    .line 118
    monitor-exit v4

    goto/16 :goto_1

    .line 121
    :cond_6
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    const-class v6, Lcom/motorola/blur/setup/ConnectionFailed;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 124
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-virtual {v5, v1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->setResult(I)V

    .line 126
    iget-object v5, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-virtual {v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
