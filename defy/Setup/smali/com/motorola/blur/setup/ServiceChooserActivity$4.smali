.class Lcom/motorola/blur/setup/ServiceChooserActivity$4;
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
    .line 288
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$4;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 290
    if-eqz p1, :cond_1

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 292
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$4;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/setup/ServiceChooserActivity;->handleClick(I)V

    .line 299
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const-string v1, "SetupSCAChooser"

    const-string v2, "Clicked on an invalid item"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
