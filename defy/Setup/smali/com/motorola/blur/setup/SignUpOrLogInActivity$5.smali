.class Lcom/motorola/blur/setup/SignUpOrLogInActivity$5;
.super Ljava/lang/Object;
.source "SignUpOrLogInActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/SignUpOrLogInActivity;->dismissDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$5;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$5;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$900(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$5;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$900(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 311
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$5;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$900(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 312
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$5;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$902(Lcom/motorola/blur/setup/SignUpOrLogInActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 314
    :cond_0
    return-void
.end method
