.class Lcom/motorola/blur/settings/ChangeBlurIdConfirmation$1;
.super Ljava/lang/Object;
.source "ChangeBlurIdConfirmation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation$1;->this$0:Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation$1;->this$0:Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;->setResult(I)V

    .line 55
    iget-object v0, p0, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation$1;->this$0:Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;

    invoke-virtual {v0}, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;->finish()V

    .line 56
    return-void
.end method
