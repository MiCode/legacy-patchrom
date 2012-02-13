.class Lcom/motorola/blur/setup/AccountAuthActivity$1;
.super Lcom/motorola/blur/setup/PasswordEmptyWatcher;
.source "AccountAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/AccountAuthActivity;->initVisuals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/AccountAuthActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/AccountAuthActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountAuthActivity$1;->this$0:Lcom/motorola/blur/setup/AccountAuthActivity;

    invoke-direct {p0, p2}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onEmpty(Landroid/widget/TextView;)V
    .locals 2
    .parameter "edit"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;->onEmpty(Landroid/widget/TextView;)V

    .line 131
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity$1;->this$0:Lcom/motorola/blur/setup/AccountAuthActivity;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/blur/setup/AccountAuthActivity;->mPwdFilled:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/AccountAuthActivity;->access$002(Lcom/motorola/blur/setup/AccountAuthActivity;Z)Z

    .line 132
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity$1;->this$0:Lcom/motorola/blur/setup/AccountAuthActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/AccountAuthActivity;->setEnabled()V

    .line 133
    return-void
.end method

.method public onNotEmpty(Landroid/widget/TextView;)V
    .locals 2
    .parameter "edit"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;->onNotEmpty(Landroid/widget/TextView;)V

    .line 137
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity$1;->this$0:Lcom/motorola/blur/setup/AccountAuthActivity;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/blur/setup/AccountAuthActivity;->mPwdFilled:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/AccountAuthActivity;->access$002(Lcom/motorola/blur/setup/AccountAuthActivity;Z)Z

    .line 138
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity$1;->this$0:Lcom/motorola/blur/setup/AccountAuthActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/AccountAuthActivity;->setEnabled()V

    .line 139
    return-void
.end method
