.class Landroid/webkit/ViewManager$3;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/ViewManager;->postReadyToDrawAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/ViewManager;


# direct methods
.method constructor <init>(Landroid/webkit/ViewManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/ViewManager$3;->this$0:Landroid/webkit/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/webkit/ViewManager$3;->this$0:Landroid/webkit/ViewManager;

    const/4 v3, 0x1

    #setter for: Landroid/webkit/ViewManager;->mReadyToDraw:Z
    invoke-static {v2, v3}, Landroid/webkit/ViewManager;->access$402(Landroid/webkit/ViewManager;Z)Z

    iget-object v2, p0, Landroid/webkit/ViewManager$3;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/webkit/ViewManager;->access$300(Landroid/webkit/ViewManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v2, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_0
    return-void
.end method
