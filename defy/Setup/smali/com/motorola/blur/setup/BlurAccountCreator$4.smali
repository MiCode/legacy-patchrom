.class Lcom/motorola/blur/setup/BlurAccountCreator$4;
.super Landroid/os/Handler;
.source "BlurAccountCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/BlurAccountCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BlurAccountCreator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const v9, 0x7f0c0094

    const/4 v8, 0x1

    const-string v11, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    const-string v10, "SilentRegActionTemplyFailed"

    .line 459
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 579
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "SilentRegActionTemplyFailed"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$300(Lcom/motorola/blur/setup/BlurAccountCreator;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v6, v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 582
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    const v7, 0x7f0c00f9

    #calls: Lcom/motorola/blur/setup/BlurAccountCreator;->endProgressUI(I)V
    invoke-static {v6, v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$700(Lcom/motorola/blur/setup/BlurAccountCreator;I)V

    .line 585
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 461
    :pswitch_2
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mReceivedDB:Z
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$200(Lcom/motorola/blur/setup/BlurAccountCreator;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 462
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #setter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mReceivedDB:Z
    invoke-static {v6, v8}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$202(Lcom/motorola/blur/setup/BlurAccountCreator;Z)Z

    .line 463
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-virtual {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->nextProgressPoint()V

    .line 464
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-virtual {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->updatePasswords()V

    .line 466
    :cond_1
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-virtual {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->finishSetup()V

    goto :goto_0

    .line 475
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/blur/service/blur/WSResponse;

    .line 476
    .local v3, resp:Lcom/motorola/blur/service/blur/WSResponse;
    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v6

    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v6, v7, :cond_2

    .line 477
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-virtual {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->nextProgressPoint()V

    .line 478
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$300(Lcom/motorola/blur/setup/BlurAccountCreator;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mEmail:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$400(Lcom/motorola/blur/setup/BlurAccountCreator;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->verifyNewBlurEmail(Landroid/content/Context;Ljava/lang/String;)Z

    .line 485
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #calls: Lcom/motorola/blur/setup/BlurAccountCreator;->requestSettings()V
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$500(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    goto :goto_0

    .line 487
    :cond_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;

    if-eqz v6, :cond_3

    .line 488
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;

    .line 489
    .local v5, sessionResp:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-virtual {v5}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->getCapInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v7

    #setter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v6, v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$602(Lcom/motorola/blur/setup/BlurAccountCreator;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 495
    .end local v5           #sessionResp:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;
    :goto_1
    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v6

    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidCredsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v6, v7, :cond_4

    .line 496
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    const v7, 0x7f0c00f5

    #calls: Lcom/motorola/blur/setup/BlurAccountCreator;->endProgressUI(I)V
    invoke-static {v6, v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$700(Lcom/motorola/blur/setup/BlurAccountCreator;I)V

    goto :goto_0

    .line 491
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;

    .line 492
    .local v0, accountResp:Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->getCapInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v7

    #setter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v6, v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$602(Lcom/motorola/blur/setup/BlurAccountCreator;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    goto :goto_1

    .line 499
    .end local v0           #accountResp:Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;
    :cond_4
    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v6

    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AlreadyInitializedError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v6, v7, :cond_5

    .line 500
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #calls: Lcom/motorola/blur/setup/BlurAccountCreator;->requestSettings()V
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$500(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    goto/16 :goto_0

    .line 502
    :cond_5
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$600(Lcom/motorola/blur/setup/BlurAccountCreator;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v6

    if-nez v6, :cond_6

    .line 506
    new-instance v2, Landroid/content/Intent;

    const-string v6, "SilentRegActionTemplyFailed"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$300(Lcom/motorola/blur/setup/BlurAccountCreator;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v6, v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 510
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    iget-object v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$300(Lcom/motorola/blur/setup/BlurAccountCreator;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v7

    #calls: Lcom/motorola/blur/setup/BlurAccountCreator;->endProgressUI(I)V
    invoke-static {v6, v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$700(Lcom/motorola/blur/setup/BlurAccountCreator;I)V

    goto/16 :goto_0

    .line 527
    .end local v3           #resp:Lcom/motorola/blur/service/blur/WSResponse;
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;

    if-eqz v6, :cond_0

    .line 528
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;

    .line 529
    .local v1, forgotPassResp:Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;
    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v6

    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v6, v7, :cond_7

    .line 530
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    const v7, 0x7f0c0095

    #calls: Lcom/motorola/blur/setup/BlurAccountCreator;->endProgressUI(I)V
    invoke-static {v6, v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$700(Lcom/motorola/blur/setup/BlurAccountCreator;I)V

    goto/16 :goto_0

    .line 532
    :cond_7
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    iget-object v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$300(Lcom/motorola/blur/setup/BlurAccountCreator;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v7

    #calls: Lcom/motorola/blur/setup/BlurAccountCreator;->endProgressUI(I)V
    invoke-static {v6, v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$700(Lcom/motorola/blur/setup/BlurAccountCreator;I)V

    goto/16 :goto_0

    .line 538
    .end local v1           #forgotPassResp:Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;
    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;

    if-eqz v6, :cond_0

    .line 539
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    #setter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;
    invoke-static {v6, v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$802(Lcom/motorola/blur/setup/BlurAccountCreator;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 540
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;

    .line 541
    .local v4, response:Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;
    invoke-virtual {v4}, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v6

    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v6, v7, :cond_9

    .line 542
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-virtual {v4}, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;->getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v7

    #setter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v6, v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$602(Lcom/motorola/blur/setup/BlurAccountCreator;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 543
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$600(Lcom/motorola/blur/setup/BlurAccountCreator;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v6

    if-nez v6, :cond_8

    .line 550
    :cond_8
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mListener:Lcom/motorola/blur/setup/BlurAccountCreationListener;
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$900(Lcom/motorola/blur/setup/BlurAccountCreator;)Lcom/motorola/blur/setup/BlurAccountCreationListener;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$600(Lcom/motorola/blur/setup/BlurAccountCreator;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v7

    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Lcom/motorola/blur/setup/BlurAccountCreationListener;->onCaptchaRecieved(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;I)V

    .line 554
    :goto_2
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-virtual {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->finishIfAvailable()V

    goto/16 :goto_0

    .line 552
    :cond_9
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mListener:Lcom/motorola/blur/setup/BlurAccountCreationListener;
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$900(Lcom/motorola/blur/setup/BlurAccountCreator;)Lcom/motorola/blur/setup/BlurAccountCreationListener;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$600(Lcom/motorola/blur/setup/BlurAccountCreator;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$300(Lcom/motorola/blur/setup/BlurAccountCreator;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4}, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/motorola/blur/setup/BlurAccountCreationListener;->onCaptchaRecieved(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;I)V

    goto :goto_2

    .line 559
    .end local v4           #response:Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;
    :pswitch_6
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$800(Lcom/motorola/blur/setup/BlurAccountCreator;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 560
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mCaptchaRequest:Z
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$1000(Lcom/motorola/blur/setup/BlurAccountCreator;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 561
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mListener:Lcom/motorola/blur/setup/BlurAccountCreationListener;
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$900(Lcom/motorola/blur/setup/BlurAccountCreator;)Lcom/motorola/blur/setup/BlurAccountCreationListener;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$600(Lcom/motorola/blur/setup/BlurAccountCreator;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v7

    invoke-interface {v6, v7, v9}, Lcom/motorola/blur/setup/BlurAccountCreationListener;->onCaptchaRecieved(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;I)V

    .line 562
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-virtual {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->finishIfAvailable()V

    goto/16 :goto_0

    .line 564
    :cond_a
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #calls: Lcom/motorola/blur/setup/BlurAccountCreator;->endProgressUI(I)V
    invoke-static {v6, v9}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$700(Lcom/motorola/blur/setup/BlurAccountCreator;I)V

    goto/16 :goto_0

    .line 570
    :pswitch_7
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/motorola/blur/setup/BlurAccountCreator;->finishProgressUI(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 574
    :pswitch_8
    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #calls: Lcom/motorola/blur/setup/BlurAccountCreator;->showRetryDialog()V
    invoke-static {v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$1100(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    goto/16 :goto_0

    .line 459
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
