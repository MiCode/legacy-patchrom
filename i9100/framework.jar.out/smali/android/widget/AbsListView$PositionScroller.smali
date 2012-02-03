.class Landroid/widget/AbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3661
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3662
    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 3663
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 3757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView;->getHeight()I

    move-result v15

    .line 3758
    .local v15, listHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    .line 3760
    .local v5, firstPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 3884
    :cond_0
    :goto_0
    return-void

    .line 3762
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v21

    const/16 v22, 0x1

    sub-int v12, v21, v22

    .line 3763
    .local v12, lastViewIndex:I
    add-int v8, v5, v12

    .line 3765
    .local v8, lastPos:I
    if-ltz v12, :cond_0

    .line 3769
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 3771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3775
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3776
    .local v9, lastView:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 3777
    .local v11, lastViewHeight:I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    .line 3778
    .local v14, lastViewTop:I
    sub-int v13, v15, v14

    .line 3779
    .local v13, lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move v0, v8

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v21, v0

    move/from16 v4, v21

    .line 3781
    .local v4, extraScroll:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    sub-int v22, v11, v13

    add-int v22, v22, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 3784
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3785
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 3786
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3779
    .end local v4           #extraScroll:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v4, v21

    goto :goto_1

    .line 3792
    .end local v8           #lastPos:I
    .end local v9           #lastView:Landroid/view/View;
    .end local v11           #lastViewHeight:I
    .end local v12           #lastViewIndex:I
    .end local v13           #lastViewPixelsShowing:I
    .end local v14           #lastViewTop:I
    :pswitch_1
    const/16 v19, 0x1

    .line 3793
    .local v19, nextViewIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 3795
    .local v3, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x1

    move v0, v3

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    add-int v21, v5, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 3799
    add-int/lit8 v16, v5, 0x1

    .line 3801
    .local v16, nextPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 3803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3807
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3808
    .local v17, nextView:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v18

    .line 3809
    .local v18, nextViewHeight:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v20

    .line 3810
    .local v20, nextViewTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move v4, v0

    .line 3811
    .restart local v4       #extraScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 3812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int v23, v18, v20

    sub-int v23, v23, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 3815
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3819
    :cond_4
    move/from16 v0, v20

    move v1, v4

    if-le v0, v1, :cond_0

    .line 3820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    sub-int v22, v20, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 3827
    .end local v3           #childCount:I
    .end local v4           #extraScroll:I
    .end local v16           #nextPos:I
    .end local v17           #nextView:Landroid/view/View;
    .end local v18           #nextViewHeight:I
    .end local v19           #nextViewIndex:I
    .end local v20           #nextViewTop:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 3829
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3833
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3834
    .local v6, firstView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 3837
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 3838
    .local v7, firstViewTop:I
    if-lez v5, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v21, v0

    move/from16 v4, v21

    .line 3840
    .restart local v4       #extraScroll:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    sub-int v22, v7, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 3842
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3844
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 3845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3838
    .end local v4           #extraScroll:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v4, v21

    goto :goto_2

    .line 3851
    .end local v6           #firstView:Landroid/view/View;
    .end local v7           #firstViewTop:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v21

    const/16 v22, 0x2

    sub-int v12, v21, v22

    .line 3852
    .restart local v12       #lastViewIndex:I
    if-ltz v12, :cond_0

    .line 3855
    add-int v8, v5, v12

    .line 3857
    .restart local v8       #lastPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 3859
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3863
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3864
    .restart local v9       #lastView:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 3865
    .restart local v11       #lastViewHeight:I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    .line 3866
    .restart local v14       #lastViewTop:I
    sub-int v13, v15, v14

    .line 3867
    .restart local v13       #lastViewPixelsShowing:I
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3868
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 3869
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v22, v0

    sub-int v22, v13, v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 3870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3872
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v21, v0

    sub-int v2, v15, v21

    .line 3873
    .local v2, bottom:I
    add-int v10, v14, v11

    .line 3874
    .local v10, lastViewBottom:I
    if-le v2, v10, :cond_0

    .line 3875
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    sub-int v22, v2, v10

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 3760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/16 v6, 0x190

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 3666
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v0, v3, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3667
    .local v0, firstPos:I
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    sub-int v1, v3, v5

    .line 3669
    .local v1, lastPos:I
    const/4 v2, 0x0

    .line 3670
    .local v2, viewTravelCount:I
    if-gt p1, v0, :cond_1

    .line 3671
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 3672
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 3681
    :goto_0
    if-lez v2, :cond_2

    .line 3682
    div-int v3, v6, v2

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 3686
    :goto_1
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 3687
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 3688
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3690
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3691
    :cond_0
    return-void

    .line 3673
    :cond_1
    if-lt p1, v1, :cond_0

    .line 3674
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 3675
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 3684
    :cond_2
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method start(II)V
    .locals 11
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    const/16 v10, 0x190

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 3694
    if-ne p2, v9, :cond_1

    .line 3695
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 3750
    :cond_0
    :goto_0
    return-void

    .line 3699
    :cond_1
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3700
    .local v3, firstPos:I
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v3

    sub-int v4, v7, v8

    .line 3702
    .local v4, lastPos:I
    const/4 v6, 0x0

    .line 3703
    .local v6, viewTravelCount:I
    if-gt p1, v3, :cond_3

    .line 3704
    sub-int v1, v4, p2

    .line 3705
    .local v1, boundPosFromLast:I
    if-lt v1, v8, :cond_0

    .line 3710
    sub-int v7, v3, p1

    add-int/lit8 v5, v7, 0x1

    .line 3711
    .local v5, posTravel:I
    sub-int v2, v1, v8

    .line 3712
    .local v2, boundTravel:I
    if-ge v2, v5, :cond_2

    .line 3713
    move v6, v2

    .line 3714
    const/4 v7, 0x4

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 3740
    .end local v1           #boundPosFromLast:I
    :goto_1
    if-lez v6, :cond_5

    .line 3741
    div-int v7, v10, v6

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 3745
    :goto_2
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 3746
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 3747
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3749
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3716
    .restart local v1       #boundPosFromLast:I
    :cond_2
    move v6, v5

    .line 3717
    const/4 v7, 0x2

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 3719
    .end local v1           #boundPosFromLast:I
    .end local v2           #boundTravel:I
    .end local v5           #posTravel:I
    :cond_3
    if-lt p1, v4, :cond_0

    .line 3720
    sub-int v0, p2, v3

    .line 3721
    .local v0, boundPosFromFirst:I
    if-lt v0, v8, :cond_0

    .line 3726
    sub-int v7, p1, v4

    add-int/lit8 v5, v7, 0x1

    .line 3727
    .restart local v5       #posTravel:I
    sub-int v2, v0, v8

    .line 3728
    .restart local v2       #boundTravel:I
    if-ge v2, v5, :cond_4

    .line 3729
    move v6, v2

    .line 3730
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 3732
    :cond_4
    move v6, v5

    .line 3733
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 3743
    .end local v0           #boundPosFromFirst:I
    :cond_5
    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method stop()V
    .locals 1

    .prologue
    .line 3753
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3754
    return-void
.end method
