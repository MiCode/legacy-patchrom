.class Lcom/motorola/CameraF/MultishotPostView$1;
.super Ljava/lang/Object;
.source "MultishotPostView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/MultishotPostView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/MultishotPostView;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/MultishotPostView;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/motorola/CameraF/MultishotPostView$1;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launching single select activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostView$1;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    #setter for: Lcom/motorola/CameraF/MultishotPostView;->mPosition:I
    invoke-static {v1, p3}, Lcom/motorola/CameraF/MultishotPostView;->access$102(Lcom/motorola/CameraF/MultishotPostView;I)I

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.motorola.CameraF.selectedImage"

    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostView$1;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/CameraF/MultishotPostView;->access$200(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostView$1;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    const-class v2, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostView$1;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    invoke-virtual {v1, v0, p3}, Lcom/motorola/CameraF/MultishotPostView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    return-void
.end method
