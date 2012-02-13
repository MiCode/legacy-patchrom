.class Lcom/motorola/blur/setup/ServiceCredentialsActivity$4;
.super Lcom/motorola/blur/setup/PasswordEmptyWatcher;
.source "ServiceCredentialsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ServiceCredentialsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

.field final synthetic val$usrEdit:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;Landroid/widget/TextView;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$4;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    iput-object p3, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$4;->val$usrEdit:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, p2}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onEmpty(Landroid/widget/TextView;)V
    .locals 2
    .parameter "edit"

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;->onEmpty(Landroid/widget/TextView;)V

    .line 395
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$4;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->access$500(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    return-void
.end method

.method public onNotEmpty(Landroid/widget/TextView;)V
    .locals 2
    .parameter "edit"

    .prologue
    .line 400
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;->onNotEmpty(Landroid/widget/TextView;)V

    .line 402
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$4;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->access$500(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$4;->val$usrEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/blur/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 403
    return-void

    .line 402
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
