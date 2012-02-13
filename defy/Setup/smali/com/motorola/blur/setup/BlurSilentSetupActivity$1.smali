.class Lcom/motorola/blur/setup/BlurSilentSetupActivity$1;
.super Landroid/os/Handler;
.source "BlurSilentSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/BlurSilentSetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BlurSilentSetupActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BlurSilentSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity$1;->this$0:Lcom/motorola/blur/setup/BlurSilentSetupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 55
    const/4 v0, 0x0

    const-string v1, "received Message..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity$1;->this$0:Lcom/motorola/blur/setup/BlurSilentSetupActivity;

    const-string v1, "MOTOBLUR Silent Setup Success!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity$1;->this$0:Lcom/motorola/blur/setup/BlurSilentSetupActivity;

    const-string v1, "MOTOBLUR Silent Setup Failed!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
