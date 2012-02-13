.class Lcom/motorola/blur/settings/ChangeBlurEmailActivity$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 58
    iput-object p1, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$1;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$1;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->access$000(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 63
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    const-string v2, "com.motorola.blur.service.blur.devicesetup.newemail.resp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 71
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$1;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->access$000(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 72
    return-void

    .line 68
    :cond_1
    const-string v2, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0
.end method
