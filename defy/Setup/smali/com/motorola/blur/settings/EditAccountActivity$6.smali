.class Lcom/motorola/blur/settings/EditAccountActivity$6;
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


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 860
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$6;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 862
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity$6;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 863
    .local v0, check:Landroid/widget/CheckBox;
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 864
    return-void
.end method
