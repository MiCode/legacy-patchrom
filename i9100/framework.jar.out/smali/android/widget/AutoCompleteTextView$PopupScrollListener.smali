.class Landroid/widget/AutoCompleteTextView$PopupScrollListener;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 1482
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$PopupScrollListener;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1485
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Landroid/widget/AutoCompleteTextView;->mlastMoveTime:J
    invoke-static {v0, v1, v2}, Landroid/widget/AutoCompleteTextView;->access$1302(Landroid/widget/AutoCompleteTextView;J)J

    .line 1487
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1490
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->access$1200(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->access$1400(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1493
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupScrollListener;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->access$1400(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1495
    :cond_0
    return-void
.end method
