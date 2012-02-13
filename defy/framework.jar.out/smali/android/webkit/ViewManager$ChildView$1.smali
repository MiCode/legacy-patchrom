.class Landroid/webkit/ViewManager$ChildView$1;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/ViewManager$ChildView;


# direct methods
.method constructor <init>(Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/ViewManager$ChildView$1;->this$1:Landroid/webkit/ViewManager$ChildView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView$1;->this$1:Landroid/webkit/ViewManager$ChildView;

    iget-object v0, v0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    iget-object v1, p0, Landroid/webkit/ViewManager$ChildView$1;->this$1:Landroid/webkit/ViewManager$ChildView;

    #calls: Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V
    invoke-static {v0, v1}, Landroid/webkit/ViewManager;->access$000(Landroid/webkit/ViewManager;Landroid/webkit/ViewManager$ChildView;)V

    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView$1;->this$1:Landroid/webkit/ViewManager$ChildView;

    iget-object v0, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView$1;->this$1:Landroid/webkit/ViewManager$ChildView;

    #calls: Landroid/webkit/ViewManager$ChildView;->attachViewOnUIThread()V
    invoke-static {v0}, Landroid/webkit/ViewManager$ChildView;->access$100(Landroid/webkit/ViewManager$ChildView;)V

    :cond_0
    return-void
.end method
