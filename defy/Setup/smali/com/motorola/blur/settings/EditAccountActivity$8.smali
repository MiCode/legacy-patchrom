.class Lcom/motorola/blur/settings/EditAccountActivity$8;
.super Ljava/lang/Object;
.source "EditAccountActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditAccountActivity;->populateASFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditAccountActivity;

.field final synthetic val$emailRetentionSpinner:Landroid/widget/Spinner;

.field final synthetic val$spinnerCaptionText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;Landroid/widget/Spinner;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 933
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$8;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iput-object p2, p0, Lcom/motorola/blur/settings/EditAccountActivity$8;->val$emailRetentionSpinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/motorola/blur/settings/EditAccountActivity$8;->val$spinnerCaptionText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 937
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 938
    .local v0, newVis:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity$8;->val$emailRetentionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 939
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity$8;->val$spinnerCaptionText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 940
    return-void

    .line 937
    .end local v0           #newVis:I
    :cond_0
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0
.end method
