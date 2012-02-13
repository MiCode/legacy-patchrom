.class Lcom/motorola/blur/setup/ServiceChooserActivity$5;
.super Ljava/lang/Object;
.source "ServiceChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 302
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$5;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 305
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$5;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceChooserActivity;->mBlurAccountNumber:I
    invoke-static {v2}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$600(Lcom/motorola/blur/setup/ServiceChooserActivity;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 306
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$5;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #calls: Lcom/motorola/blur/setup/ServiceChooserActivity;->showServiceInfoDialog(I)V
    invoke-static {v1, v2}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$700(Lcom/motorola/blur/setup/ServiceChooserActivity;I)V

    .line 307
    const/4 v1, 0x1

    .line 309
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
