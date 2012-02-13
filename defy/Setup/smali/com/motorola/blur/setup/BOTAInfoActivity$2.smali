.class Lcom/motorola/blur/setup/BOTAInfoActivity$2;
.super Landroid/os/Handler;
.source "BOTAInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/BOTAInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BOTAInfoActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BOTAInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/motorola/blur/setup/BOTAInfoActivity$2;->this$0:Lcom/motorola/blur/setup/BOTAInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/setup/BOTAInfoActivity$2;->this$0:Lcom/motorola/blur/setup/BOTAInfoActivity;

    #getter for: Lcom/motorola/blur/setup/BOTAInfoActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/motorola/blur/setup/BOTAInfoActivity;->access$100(Lcom/motorola/blur/setup/BOTAInfoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 59
    iget-object v0, p0, Lcom/motorola/blur/setup/BOTAInfoActivity$2;->this$0:Lcom/motorola/blur/setup/BOTAInfoActivity;

    #getter for: Lcom/motorola/blur/setup/BOTAInfoActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/motorola/blur/setup/BOTAInfoActivity;->access$100(Lcom/motorola/blur/setup/BOTAInfoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
