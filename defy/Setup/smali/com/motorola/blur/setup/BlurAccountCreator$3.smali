.class Lcom/motorola/blur/setup/BlurAccountCreator$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 404
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x2

    const-string v5, "com.motorola.blur.service.ws.key.responsedata"

    const-string v3, "clientsettings/blur"

    .line 407
    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$100(Lcom/motorola/blur/setup/BlurAccountCreator;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 408
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 435
    :cond_0
    :goto_0
    const-string v2, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    const-string v2, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$100(Lcom/motorola/blur/setup/BlurAccountCreator;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 440
    return-void

    .line 414
    :cond_2
    const-string v2, "com.motorola.blur.service.blur.devicesetup.newaccount.resp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 416
    :cond_3
    const-string v2, "com.motorola.blur.service.blur.devicesetup.resetpassword.resp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 417
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 418
    :cond_4
    const-string v2, "com.motorola.blur.service.blur.devicesetup.newsession.resp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 419
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 420
    :cond_5
    const-string v2, "com.motorola.blur.service.blur.Actions.SYNC_HANDLER_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "clientsettings/blur"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 421
    const-string v2, "com.motorola.blur.service.blur.Extra.PARTIAL_DATA_ONLY"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 422
    iput v4, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 424
    :cond_6
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 426
    :cond_7
    const-string v2, "com.motorola.blur.service.blur.Actions.SYNC_HANDLER_FAILED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "clientsettings/blur"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 427
    iput v4, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 428
    :cond_8
    const-string v2, "com.motorola.blur.service.blur.devicesetup.subscriptions.resp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 429
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    goto/16 :goto_0

    .line 430
    :cond_9
    const-string v2, "com.motorola.blur.service.blur.Actions.SERVICES_DIED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 431
    const/4 v2, -0x1

    iput v2, v1, Landroid/os/Message;->what:I

    goto/16 :goto_0

    .line 432
    :cond_a
    const-string v2, "com.motorola.blur.service.blur.devicesetup.getcaptcha.resp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    goto/16 :goto_0
.end method
