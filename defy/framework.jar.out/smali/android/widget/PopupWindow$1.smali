.class Landroid/widget/PopupWindow$1;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .local v6, anchor:Landroid/view/View;
    if-eqz v6, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$100(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$100(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .local v7, p:Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mAnchorXoff:I
    invoke-static {v2}, Landroid/widget/PopupWindow;->access$200(Landroid/widget/PopupWindow;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mAnchorYoff:I
    invoke-static {v4}, Landroid/widget/PopupWindow;->access$300(Landroid/widget/PopupWindow;)I

    move-result v4

    #calls: Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    invoke-static {v1, v6, v7, v2, v4}, Landroid/widget/PopupWindow;->access$400(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    #calls: Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V
    invoke-static {v0, v1}, Landroid/widget/PopupWindow;->access$500(Landroid/widget/PopupWindow;Z)V

    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .end local v7           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
