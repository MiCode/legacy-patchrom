.class Lcom/motorola/blur/settings/EditAccountActivity$9;
.super Ljava/lang/Object;
.source "EditAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditAccountActivity;->showWarning(Landroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditAccountActivity;

.field final synthetic val$button:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;Landroid/widget/CompoundButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 955
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$9;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iput-object p2, p0, Lcom/motorola/blur/settings/EditAccountActivity$9;->val$button:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 958
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$9;->val$button:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 959
    return-void
.end method
