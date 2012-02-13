.class Lcom/motorola/blur/settings/EditAccountActivity$7;
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
    .line 869
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$7;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 872
    if-nez p2, :cond_0

    .line 873
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity$7;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->showWarning(Landroid/widget/CompoundButton;)V
    invoke-static {v0, p1}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1500(Lcom/motorola/blur/settings/EditAccountActivity;Landroid/widget/CompoundButton;)V

    .line 875
    :cond_0
    return-void
.end method
