.class Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;
.super Landroid/os/Handler;
.source "UnverifiedBlurNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/UnverifiedBlurNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 76
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v2, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    #getter for: Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v2}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->access$100(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/blur/setup/SetupProgressDialog;->nextProgressPoint()V

    .line 79
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnknownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 80
    .local v0, errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/motorola/blur/service/blur/devicesetup/ConfirmationEmailWS$Response;

    if-eqz v2, :cond_0

    .line 81
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/blur/service/blur/devicesetup/ConfirmationEmailWS$Response;

    .line 82
    .local v1, response:Lcom/motorola/blur/service/blur/devicesetup/ConfirmationEmailWS$Response;
    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/devicesetup/ConfirmationEmailWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    .line 84
    .end local v1           #response:Lcom/motorola/blur/service/blur/devicesetup/ConfirmationEmailWS$Response;
    :cond_0
    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v0, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    #calls: Lcom/motorola/blur/settings/UnverifiedBlurNotification;->showEmailSentConfirmation()V
    invoke-static {v2}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->access$200(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V

    .line 86
    iget-object v2, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    #calls: Lcom/motorola/blur/settings/UnverifiedBlurNotification;->dismissProgressDialog()V
    invoke-static {v2}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->access$300(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V

    .line 87
    iget-object v2, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    #calls: Lcom/motorola/blur/settings/UnverifiedBlurNotification;->unregisterReceiver()V
    invoke-static {v2}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->access$400(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    iget-object v3, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    iget-object v4, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    invoke-static {v4, v0}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/blur/settings/UnverifiedBlurNotification;->showError(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->access$500(Lcom/motorola/blur/settings/UnverifiedBlurNotification;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v0           #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    #getter for: Lcom/motorola/blur/settings/UnverifiedBlurNotification;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v2}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->access$100(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/blur/setup/SetupProgressDialog;->goToProgressPoint(I)V

    .line 96
    iget-object v2, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$2;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    #calls: Lcom/motorola/blur/settings/UnverifiedBlurNotification;->resendEmail()V
    invoke-static {v2}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->access$600(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
