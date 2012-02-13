.class Lcom/motorola/blur/settings/EditAccountActivity$4;
.super Ljava/lang/Object;
.source "EditAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditAccountActivity;->populateFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditAccountActivity;

.field final synthetic val$passwordEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 765
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$4;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iput-object p2, p0, Lcom/motorola/blur/settings/EditAccountActivity$4;->val$passwordEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$4;->val$passwordEdit:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 768
    return-void

    .line 767
    :cond_0
    const-string v1, "********"

    goto :goto_0
.end method
