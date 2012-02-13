.class Lcom/motorola/blur/settings/EditAccountActivity$5;
.super Ljava/lang/Object;
.source "EditAccountActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditAccountActivity;->populateYahooFields()V
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
    .line 815
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$5;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 820
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$5;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    check-cast v0, Lcom/motorola/blur/settings/YahooAccountSettings;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/YahooAccountSettings;->getInitialActivatedVal(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity$5;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0102

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity$5;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    const v2, 0x7f0c0103

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 826
    :cond_0
    return-void
.end method
