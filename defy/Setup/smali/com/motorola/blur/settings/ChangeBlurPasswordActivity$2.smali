.class Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;
.super Landroid/os/Handler;
.source "ChangeBlurPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 73
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v2}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->access$100(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/blur/setup/SetupProgressDialog;->nextProgressPoint()V

    .line 76
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnknownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 77
    .local v0, errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;

    if-eqz v2, :cond_0

    .line 78
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;

    .line 79
    .local v1, response:Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;
    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    .line 81
    .end local v1           #response:Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;
    :cond_0
    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v0, v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    #calls: Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->dismissProgressDialog()V
    invoke-static {v2}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->access$200(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V

    .line 83
    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    #calls: Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->unregisterReceiver()V
    invoke-static {v2}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->access$300(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V

    .line 84
    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    const-class v5, Lcom/motorola/blur/settings/ChangeBlurPswdConfirmation;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    invoke-virtual {v2}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->finish()V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    iget-object v3, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    iget-object v4, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    invoke-static {v4, v0}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->showError(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->access$400(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v0           #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v2}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->access$100(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/blur/setup/SetupProgressDialog;->goToProgressPoint(I)V

    .line 96
    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    #calls: Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->requestChangePassword()V
    invoke-static {v2}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->access$500(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
