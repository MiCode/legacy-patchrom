.class Lcom/motorola/blur/setup/ServiceCredentialsActivity$3;
.super Ljava/lang/Object;
.source "ServiceCredentialsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
.method constructor <init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$3;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$3;->val$usrEdit:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 370
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$3;->val$usrEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$3;->val$usrEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    .line 373
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
