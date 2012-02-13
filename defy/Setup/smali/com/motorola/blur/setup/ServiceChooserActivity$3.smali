.class Lcom/motorola/blur/setup/ServiceChooserActivity$3;
.super Ljava/lang/Object;
.source "ServiceChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ServiceChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$3;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 279
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 284
    .local v0, id:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$3;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-virtual {v1, v0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->handleClick(I)V

    .line 285
    return-void

    .line 282
    .end local v0           #id:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #id:I
    goto :goto_0
.end method
