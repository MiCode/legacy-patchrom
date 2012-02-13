.class Lcom/motorola/blur/setup/AccountSuccessActivity$1;
.super Landroid/os/Handler;
.source "AccountSuccessActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/AccountSuccessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/AccountSuccessActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/AccountSuccessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountSuccessActivity$1;->this$0:Lcom/motorola/blur/setup/AccountSuccessActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 77
    const-string v0, "SetupASA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oops, forgot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountSuccessActivity$1;->this$0:Lcom/motorola/blur/setup/AccountSuccessActivity;

    new-instance v1, Lcom/motorola/blur/setup/AccountSuccessActivity$1$1;

    invoke-direct {v1, p0}, Lcom/motorola/blur/setup/AccountSuccessActivity$1$1;-><init>(Lcom/motorola/blur/setup/AccountSuccessActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/AccountSuccessActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
