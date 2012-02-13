.class Lcom/motorola/blur/settings/EditAccountActivity$16;
.super Ljava/lang/Object;
.source "EditAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditAccountActivity;->dismissProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$16;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$16;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v0}, Lcom/motorola/blur/settings/EditAccountActivity;->access$700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$16;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v0}, Lcom/motorola/blur/settings/EditAccountActivity;->access$700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$16;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v0}, Lcom/motorola/blur/settings/EditAccountActivity;->access$700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->hide()V

    .line 1581
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$16;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v0}, Lcom/motorola/blur/settings/EditAccountActivity;->access$700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->dismiss()V

    .line 1582
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$16;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->access$702(Lcom/motorola/blur/settings/EditAccountActivity;Lcom/motorola/blur/setup/SetupProgressDialog;)Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 1584
    :cond_0
    return-void
.end method
