.class Lcom/motorola/blur/setup/NewBlurEmailActivity$1;
.super Ljava/lang/Object;
.source "NewBlurEmailActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/NewBlurEmailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/NewBlurEmailActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/NewBlurEmailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity$1;->this$0:Lcom/motorola/blur/setup/NewBlurEmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity$1;->this$0:Lcom/motorola/blur/setup/NewBlurEmailActivity;

    #getter for: Lcom/motorola/blur/setup/NewBlurEmailActivity;->mNextButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->access$000(Lcom/motorola/blur/setup/NewBlurEmailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity$1;->this$0:Lcom/motorola/blur/setup/NewBlurEmailActivity;

    #getter for: Lcom/motorola/blur/setup/NewBlurEmailActivity;->mNextButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->access$000(Lcom/motorola/blur/setup/NewBlurEmailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 79
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 82
    return-void
.end method
