.class Lcom/motorola/blur/setup/NewBlurPasswordActivity$2;
.super Lcom/motorola/blur/setup/PasswordEmptyWatcher;
.source "NewBlurPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/NewBlurPasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/NewBlurPasswordActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/NewBlurPasswordActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/setup/NewBlurPasswordActivity;

    invoke-direct {p0, p2}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onEmpty(Landroid/widget/TextView;)V
    .locals 2
    .parameter "edit"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;->onEmpty(Landroid/widget/TextView;)V

    .line 97
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/setup/NewBlurPasswordActivity;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mRepeatPwdFilled:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->access$202(Lcom/motorola/blur/setup/NewBlurPasswordActivity;Z)Z

    .line 98
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/setup/NewBlurPasswordActivity;

    #calls: Lcom/motorola/blur/setup/NewBlurPasswordActivity;->setEnabled()V
    invoke-static {v0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->access$100(Lcom/motorola/blur/setup/NewBlurPasswordActivity;)V

    .line 99
    return-void
.end method

.method public onNotEmpty(Landroid/widget/TextView;)V
    .locals 2
    .parameter "edit"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;->onNotEmpty(Landroid/widget/TextView;)V

    .line 104
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/setup/NewBlurPasswordActivity;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mRepeatPwdFilled:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->access$202(Lcom/motorola/blur/setup/NewBlurPasswordActivity;Z)Z

    .line 105
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity$2;->this$0:Lcom/motorola/blur/setup/NewBlurPasswordActivity;

    #calls: Lcom/motorola/blur/setup/NewBlurPasswordActivity;->setEnabled()V
    invoke-static {v0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->access$100(Lcom/motorola/blur/setup/NewBlurPasswordActivity;)V

    .line 106
    return-void
.end method
