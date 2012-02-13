.class Lcom/motorola/blur/setup/ServiceChooserActivity$11;
.super Ljava/lang/Object;
.source "ServiceChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ServiceChooserActivity;->showDeleteAccountDialog(Ljava/lang/String;Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

.field final synthetic val$account:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceChooserActivity;Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$11;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$11;->val$account:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1144
    new-instance v0, Lcom/motorola/blur/setup/AccountRemover;

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$11;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$11;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/setup/AccountRemover;-><init>(Landroid/content/Context;Lcom/motorola/blur/setup/AccountRemovalListener;)V

    .line 1146
    .local v0, accountRemover:Lcom/motorola/blur/setup/AccountRemover;
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$11;->val$account:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/AccountRemover;->remove(J)V

    .line 1147
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$11;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$11;->val$account:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    #setter for: Lcom/motorola/blur/setup/ServiceChooserActivity;->mDeletedAccount:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
    invoke-static {v1, v2}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$1002(Lcom/motorola/blur/setup/ServiceChooserActivity;Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;)Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    .line 1148
    return-void
.end method
