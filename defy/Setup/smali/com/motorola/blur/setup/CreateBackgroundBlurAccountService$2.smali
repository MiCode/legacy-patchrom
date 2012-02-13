.class Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 102
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v5, "android.intent.extra.TEXT"

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.blur.setup.captcha.input"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "captcha.result"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    iget-object v1, v1, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v2, "requestState"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    iget-object v1, v1, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.TEXT"

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    iget-object v1, v1, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBundle:Landroid/os/Bundle;

    const-string v2, "CaptchaToken"

    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mCaptchaToken:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$100(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    #getter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$200(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    #calls: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->showNotification()V
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$300(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)V

    .line 117
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    #setter for: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->mBusyOnDuty:Z
    invoke-static {v1, v3}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->access$402(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;Z)Z

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SilentRegActionTemplyFailed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, result:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$2;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    const-string v2, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
