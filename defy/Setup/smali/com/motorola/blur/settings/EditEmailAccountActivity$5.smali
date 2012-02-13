.class Lcom/motorola/blur/settings/EditEmailAccountActivity$5;
.super Ljava/lang/Object;
.source "EditEmailAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditEmailAccountActivity;->showWarning(Landroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

.field final synthetic val$button:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditEmailAccountActivity;Landroid/widget/CompoundButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$5;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    iput-object p2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$5;->val$button:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$5;->val$button:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1237
    return-void
.end method
