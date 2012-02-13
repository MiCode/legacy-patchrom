.class Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;
.super Landroid/os/Handler;
.source "CreateBackgroundBlurAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, "SetupCBBAS"

    .line 130
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 160
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 162
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-static {v2}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v1

    .line 134
    .local v1, provisioned:Z
    if-ne v1, v5, :cond_0

    .line 135
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->stopAutoTrackService()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$500()I

    move-result v2

    if-ge v2, v7, :cond_2

    .line 138
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBusyOnDuty:Z
    invoke-static {v2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$400(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    iget-object v2, v2, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v3, "requestState"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v5, v2, :cond_1

    .line 139
    const-string v2, "SetupCBBAS"

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$500()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v8, v2}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    #setter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBusyOnDuty:Z
    invoke-static {v2, v5}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$402(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;Z)Z

    .line 141
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    #setter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mSignFrom:I
    invoke-static {v2, v7}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$602(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;I)I

    .line 142
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->startSignUpWithRandomId()V

    goto :goto_0

    .line 144
    :cond_1
    const-string v2, "SetupCBBAS"

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "busy: no retry at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$500()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v8, v2}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$508()I

    goto :goto_0

    .line 150
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "SilentRegActionTemplyFailed"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    const-string v3, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v2, v0, v3}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->stopAutoTrackService()V

    goto/16 :goto_0

    .line 157
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #provisioned:Z
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$3;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->startSignUpWithRandomId()V

    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
