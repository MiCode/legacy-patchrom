.class Lcom/motorola/blur/setup/AccountAuthActivity$2;
.super Ljava/lang/Object;
.source "AccountAuthActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
.method constructor <init>(Lcom/motorola/blur/setup/AccountAuthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountAuthActivity$2;->this$0:Lcom/motorola/blur/setup/AccountAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity$2;->this$0:Lcom/motorola/blur/setup/AccountAuthActivity;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/blur/setup/AccountAuthActivity;->mEmailFilled:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/AccountAuthActivity;->access$102(Lcom/motorola/blur/setup/AccountAuthActivity;Z)Z

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity$2;->this$0:Lcom/motorola/blur/setup/AccountAuthActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/AccountAuthActivity;->setEnabled()V

    .line 154
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountAuthActivity$2;->this$0:Lcom/motorola/blur/setup/AccountAuthActivity;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/blur/setup/AccountAuthActivity;->mEmailFilled:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/AccountAuthActivity;->access$102(Lcom/motorola/blur/setup/AccountAuthActivity;Z)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 157
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 160
    return-void
.end method
