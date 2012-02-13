.class Landroid/widget/AbsListView$CheckForKeyLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v3, v4

    .local v1, index:I
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_2

    const/4 v0, 0x0

    .local v0, handled:Z
    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-wide v5, v5, Landroid/widget/AdapterView;->mSelectedRowId:J

    #calls: Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v3, v2, v4, v5, v6}, Landroid/widget/AbsListView;->access$600(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .end local v0           #handled:Z
    .end local v1           #index:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .restart local v1       #index:I
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
