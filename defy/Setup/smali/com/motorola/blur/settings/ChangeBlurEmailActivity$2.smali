.class Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;
.super Landroid/os/Handler;
.source "ChangeBlurEmailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/ChangeBlurEmailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 79
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v4}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->access$100(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/blur/setup/SetupProgressDialog;->nextProgressPoint()V

    .line 82
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnknownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 83
    .local v0, errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;

    if-eqz v4, :cond_0

    .line 84
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;

    .line 85
    .local v2, response:Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;
    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    .line 87
    .end local v2           #response:Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;
    :cond_0
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v0, v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    iget-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mNewEmail:Ljava/lang/String;
    invoke-static {v5}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->access$200(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->verifyNewBlurEmail(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 92
    .local v3, verified:Z
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    const-class v5, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "motoblurIdVerified"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    const-string v4, "motoblurId"

    iget-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mNewEmail:Ljava/lang/String;
    invoke-static {v5}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->access$200(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    #calls: Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->dismissProgressDialog()V
    invoke-static {v4}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->access$300(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V

    .line 99
    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    #calls: Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->unregisterReceiver()V
    invoke-static {v4}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->access$400(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V

    .line 100
    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    invoke-virtual {v4, v1}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    invoke-virtual {v4}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->finish()V

    goto :goto_0

    .line 103
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #verified:Z
    :cond_1
    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    iget-object v5, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    iget-object v6, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    invoke-static {v6, v0}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->showError(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->access$500(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0           #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :pswitch_1
    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v4}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->access$100(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/motorola/blur/setup/SetupProgressDialog;->goToProgressPoint(I)V

    .line 110
    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    #calls: Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->requestChangeEmail()V
    invoke-static {v4}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->access$600(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
