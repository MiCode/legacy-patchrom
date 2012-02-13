.class Lcom/motorola/blur/settings/EditAccountActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "EditAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/EditAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$3;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 569
    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity$3;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 570
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 573
    const-string v3, "com.motorola.blur.service.blur.devicesetup.updatepasswordprovidercredentials.resp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 575
    iput v4, v2, Landroid/os/Message;->what:I

    .line 588
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity$3;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_1
    return-void

    .line 576
    :cond_1
    const-string v3, "com.motorola.blur.service.blur.devicesetup.newpassword.resp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 577
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    goto :goto_0

    .line 578
    :cond_2
    const-string v3, "com.motorola.blur.service.blur.devicesetup.providercredentials.resp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 579
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    goto :goto_0

    .line 580
    :cond_3
    const-string v3, "com.motorola.blur.service.blur.oauth.getoauthurl.resp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 581
    const/4 v3, 0x7

    iput v3, v2, Landroid/os/Message;->what:I

    .line 582
    invoke-static {p2}, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;->getOAuthUrlResp(Landroid/content/Intent;)Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 583
    :cond_4
    const-string v3, "com.motorola.blur.service.blur.oauth.invokecallbackurl.resp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    const/16 v3, 0x8

    iput v3, v2, Landroid/os/Message;->what:I

    .line 585
    invoke-static {p2}, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;->getInvokeCallbackUrlResp(Landroid/content/Intent;)Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 589
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 590
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Error receiving broadcast Intent!!"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
