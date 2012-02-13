.class Lcom/motorola/blur/setup/NewBlurPasswordActivity$1;
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
    .line 77
    iput-object p1, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity$1;->this$0:Lcom/motorola/blur/setup/NewBlurPasswordActivity;

    invoke-direct {p0, p2}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onEmpty(Landroid/widget/TextView;)V
    .locals 2
    .parameter "edit"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;->onEmpty(Landroid/widget/TextView;)V

    .line 81
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity$1;->this$0:Lcom/motorola/blur/setup/NewBlurPasswordActivity;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mPwdFilled:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->access$002(Lcom/motorola/blur/setup/NewBlurPasswordActivity;Z)Z

    .line 82
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity$1;->this$0:Lcom/motorola/blur/setup/NewBlurPasswordActivity;

    #calls: Lcom/motorola/blur/setup/NewBlurPasswordActivity;->setEnabled()V
    invoke-static {v0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->access$100(Lcom/motorola/blur/setup/NewBlurPasswordActivity;)V

    .line 83
    return-void
.end method

.method public onNotEmpty(Landroid/widget/TextView;)V
    .locals 2
    .parameter "edit"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;->onNotEmpty(Landroid/widget/TextView;)V

    .line 87
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity$1;->this$0:Lcom/motorola/blur/setup/NewBlurPasswordActivity;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/blur/setup/NewBlurPasswordActivity;->mPwdFilled:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->access$002(Lcom/motorola/blur/setup/NewBlurPasswordActivity;Z)Z

    .line 88
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurPasswordActivity$1;->this$0:Lcom/motorola/blur/setup/NewBlurPasswordActivity;

    #calls: Lcom/motorola/blur/setup/NewBlurPasswordActivity;->setEnabled()V
    invoke-static {v0}, Lcom/motorola/blur/setup/NewBlurPasswordActivity;->access$100(Lcom/motorola/blur/setup/NewBlurPasswordActivity;)V

    .line 89
    return-void
.end method
