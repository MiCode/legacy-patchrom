.class Lcom/motorola/blur/setup/ServiceCredentialsActivity$5;
.super Ljava/lang/Object;
.source "ServiceCredentialsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$pwdEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$5;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$5;->val$pwdEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$5;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->access$500(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$5;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->access$500(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$5;->val$pwdEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/blur/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 418
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 422
    return-void
.end method
