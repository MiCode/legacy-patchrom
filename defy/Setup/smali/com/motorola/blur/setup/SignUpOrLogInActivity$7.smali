.class final Lcom/motorola/blur/setup/SignUpOrLogInActivity$7;
.super Ljava/lang/Object;
.source "SignUpOrLogInActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/SignUpOrLogInActivity;->showDeleteMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continueIntent:Landroid/content/Intent;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$7;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$7;->val$continueIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 328
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 329
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$7;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$7;->val$continueIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 330
    return-void
.end method
