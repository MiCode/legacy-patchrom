.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$1;,
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x2

.field public static final ALIGN_BASELINE:I = 0x4

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_LEFT:I = 0x5

.field public static final ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final ALIGN_PARENT_LEFT:I = 0x9

.field public static final ALIGN_PARENT_RIGHT:I = 0xb

.field public static final ALIGN_PARENT_TOP:I = 0xa

.field public static final ALIGN_RIGHT:I = 0x7

.field public static final ALIGN_TOP:I = 0x6

.field public static final BELOW:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_IN_PARENT:I = 0xd

.field public static final CENTER_VERTICAL:I = 0xf

.field private static final DEBUG_GRAPH:Z = false

.field public static final LEFT_OF:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "RelativeLayout"

.field public static final RIGHT_OF:I = 0x1

.field public static final TRUE:I = -0x1

.field private static final VERB_COUNT:I = 0x10


# instance fields
.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

.field private mHasBaselineAlignedChild:Z

.field private mIgnoreGravity:I

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mSortedHorizontalChildren:[Landroid/view/View;

.field private mSortedVerticalChildren:[Landroid/view/View;

.field private mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 153
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 156
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 161
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 164
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 165
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 166
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 156
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 161
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 164
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 165
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 166
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 178
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 156
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 161
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 164
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 165
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 166
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    return-void
.end method

.method private alignBaseline(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 9
    .parameter "child"
    .parameter "params"

    .prologue
    const/4 v7, 0x4

    const/4 v8, -0x1

    .line 518
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v6

    .line 519
    .local v6, rules:[I
    invoke-direct {p0, v6, v7}, Landroid/widget/RelativeLayout;->getRelatedViewBaseline([II)I

    move-result v0

    .line 521
    .local v0, anchorBaseline:I
    if-eq v0, v8, :cond_1

    .line 522
    invoke-direct {p0, v6, v7}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 523
    .local v1, anchorParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_1

    .line 524
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int v5, v7, v0

    .line 525
    .local v5, offset:I
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 526
    .local v2, baseline:I
    if-eq v2, v8, :cond_0

    .line 527
    sub-int/2addr v5, v2

    .line 529
    :cond_0
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    sub-int v3, v7, v8

    .line 530
    .local v3, height:I
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 531
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v7, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 535
    .end local v1           #anchorParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #baseline:I
    .end local v3           #height:I
    .end local v5           #offset:I
    :cond_1
    iget-object v7, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-nez v7, :cond_3

    .line 536
    iput-object p1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 543
    :cond_2
    :goto_0
    return-void

    .line 538
    :cond_3
    iget-object v7, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 539
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    if-lt v7, v8, :cond_4

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    if-ne v7, v8, :cond_2

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 540
    :cond_4
    iput-object p1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    goto :goto_0
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 8
    .parameter "childParams"
    .parameter "myWidth"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 722
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 729
    .local v1, rules:[I
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 730
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 732
    invoke-direct {p0, v1, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 733
    .local v0, anchorParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_6

    .line 734
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 744
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 745
    if-eqz v0, :cond_7

    .line 746
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 752
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v6}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 753
    if-eqz v0, :cond_8

    .line 754
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 759
    :cond_2
    :goto_2
    invoke-direct {p0, v1, v7}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 760
    if-eqz v0, :cond_9

    .line 761
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 770
    :cond_3
    :goto_3
    const/16 v2, 0x9

    aget v2, v1, v2

    if-eqz v2, :cond_4

    .line 771
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 774
    :cond_4
    const/16 v2, 0xb

    aget v2, v1, v2

    if-eqz v2, :cond_5

    .line 775
    if-ltz p2, :cond_5

    .line 776
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 781
    :cond_5
    return-void

    .line 736
    :cond_6
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_0

    aget v2, v1, v3

    if-eqz v2, :cond_0

    .line 737
    if-ltz p2, :cond_0

    .line 738
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 748
    :cond_7
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_1

    aget v2, v1, v5

    if-eqz v2, :cond_1

    .line 749
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 755
    :cond_8
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_2

    aget v2, v1, v6

    if-eqz v2, :cond_2

    .line 756
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 762
    :cond_9
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_3

    aget v2, v1, v7

    if-eqz v2, :cond_3

    .line 763
    if-ltz p2, :cond_3

    .line 764
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 8
    .parameter "childParams"
    .parameter "myHeight"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 784
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 787
    .local v1, rules:[I
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 788
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 790
    invoke-direct {p0, v1, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 791
    .local v0, anchorParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_7

    .line 792
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 802
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 803
    if-eqz v0, :cond_8

    .line 804
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 810
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v6}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_9

    .line 812
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 817
    :cond_2
    :goto_2
    invoke-direct {p0, v1, v7}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_a

    .line 819
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 828
    :cond_3
    :goto_3
    const/16 v2, 0xa

    aget v2, v1, v2

    if-eqz v2, :cond_4

    .line 829
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 832
    :cond_4
    const/16 v2, 0xc

    aget v2, v1, v2

    if-eqz v2, :cond_5

    .line 833
    if-ltz p2, :cond_5

    .line 834
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 840
    :cond_5
    const/4 v2, 0x4

    aget v2, v1, v2

    if-eqz v2, :cond_6

    .line 841
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    .line 843
    :cond_6
    return-void

    .line 794
    :cond_7
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_0

    aget v2, v1, v3

    if-eqz v2, :cond_0

    .line 795
    if-ltz p2, :cond_0

    .line 796
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 806
    :cond_8
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_1

    aget v2, v1, v5

    if-eqz v2, :cond_1

    .line 807
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 813
    :cond_9
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_2

    aget v2, v1, v6

    if-eqz v2, :cond_2

    .line 814
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 820
    :cond_a
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_3

    aget v2, v1, v7

    if-eqz v2, :cond_3

    .line 821
    if-ltz p2, :cond_3

    .line 822
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3
.end method

.method private centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .parameter "child"
    .parameter "params"
    .parameter "myWidth"

    .prologue
    .line 886
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 887
    .local v0, childWidth:I
    sub-int v2, p3, v0

    div-int/lit8 v1, v2, 0x2

    .line 889
    .local v1, left:I
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 890
    add-int v2, v1, v0

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 891
    return-void
.end method

.method private centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .parameter "child"
    .parameter "params"
    .parameter "myHeight"

    .prologue
    .line 894
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 895
    .local v0, childHeight:I
    sub-int v2, p3, v0

    div-int/lit8 v1, v2, 0x2

    .line 897
    .local v1, top:I
    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 898
    add-int v2, v1, v0

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 899
    return-void
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .locals 6
    .parameter "childStart"
    .parameter "childEnd"
    .parameter "childSize"
    .parameter "startMargin"
    .parameter "endMargin"
    .parameter "startPadding"
    .parameter "endPadding"
    .parameter "mySize"

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, childSpecMode:I
    const/4 v1, 0x0

    .line 607
    .local v1, childSpecSize:I
    move v4, p1

    .line 608
    .local v4, tempStart:I
    move v3, p2

    .line 612
    .local v3, tempEnd:I
    if-gez v4, :cond_0

    .line 613
    add-int v4, p6, p4

    .line 615
    :cond_0
    if-gez v3, :cond_1

    .line 616
    sub-int v5, p8, p7

    sub-int v3, v5, p5

    .line 620
    :cond_1
    sub-int v2, v3, v4

    .line 622
    .local v2, maxAvailable:I
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    .line 624
    const/high16 v0, 0x4000

    .line 625
    move v1, v2

    .line 660
    :cond_2
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 627
    :cond_3
    if-ltz p3, :cond_5

    .line 629
    const/high16 v0, 0x4000

    .line 631
    if-ltz v2, :cond_4

    .line 633
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 636
    :cond_4
    move v1, p3

    goto :goto_0

    .line 638
    :cond_5
    const/4 v5, -0x1

    if-ne p3, v5, :cond_6

    .line 641
    const/high16 v0, 0x4000

    .line 642
    move v1, v2

    goto :goto_0

    .line 643
    :cond_6
    const/4 v5, -0x2

    if-ne p3, v5, :cond_2

    .line 647
    if-ltz v2, :cond_7

    .line 649
    const/high16 v0, -0x8000

    .line 650
    move v1, v2

    goto :goto_0

    .line 654
    :cond_7
    const/4 v0, 0x0

    .line 655
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRelatedView([II)Landroid/view/View;
    .locals 6
    .parameter "rules"
    .parameter "relation"

    .prologue
    const/4 v5, 0x0

    .line 846
    aget v0, p1, p2

    .line 847
    .local v0, id:I
    if-eqz v0, :cond_3

    .line 848
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    #getter for: Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 849
    .local v1, node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_0

    move-object v3, v5

    .line 863
    .end local v1           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :goto_0
    return-object v3

    .line 850
    .restart local v1       #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_0
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 853
    .local v2, v:Landroid/view/View;
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 854
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object p1

    .line 855
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    #getter for: Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    aget v4, p1, p2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 856
    .restart local v1       #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_1

    move-object v3, v5

    goto :goto_0

    .line 857
    :cond_1
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 860
    goto :goto_0

    .end local v1           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v2           #v:Landroid/view/View;
    :cond_3
    move-object v3, v5

    .line 863
    goto :goto_0
.end method

.method private getRelatedViewBaseline([II)I
    .locals 2
    .parameter "rules"
    .parameter "relation"

    .prologue
    .line 878
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v0

    .line 879
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 882
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .parameter "rules"
    .parameter "relation"

    .prologue
    .line 867
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v1

    .line 868
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 869
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 870
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 871
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, p0

    .line 874
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 183
    sget-object v1, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 184
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 185
    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 11
    .parameter "child"
    .parameter "params"
    .parameter "myWidth"
    .parameter "myHeight"

    .prologue
    .line 556
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 561
    .local v10, childWidthMeasureSpec:I
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    move-object v0, p0

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v9

    .line 566
    .local v9, childHeightMeasureSpec:I
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 567
    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 11
    .parameter "child"
    .parameter "params"
    .parameter "myWidth"
    .parameter "myHeight"

    .prologue
    .line 570
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 576
    .local v10, childWidthMeasureSpec:I
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 577
    const/high16 v0, 0x4000

    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 581
    .local v9, childHeightMeasureSpec:I
    :goto_0
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 582
    return-void

    .line 579
    .end local v9           #childHeightMeasureSpec:I
    :cond_0
    const/high16 v0, -0x8000

    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9       #childHeightMeasureSpec:I
    goto :goto_0
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 4
    .parameter "child"
    .parameter "params"
    .parameter "myWidth"
    .parameter "wrapContent"

    .prologue
    const/4 v3, 0x1

    .line 666
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 668
    .local v0, rules:[I
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_1

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 670
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 689
    :cond_0
    :goto_0
    const/16 v1, 0xb

    aget v1, v0, v1

    if-eqz v1, :cond_6

    move v1, v3

    :goto_1
    return v1

    .line 671
    :cond_1
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ltz v1, :cond_2

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_2

    .line 673
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 674
    :cond_2
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_0

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_0

    .line 676
    const/16 v1, 0xd

    aget v1, v0, v1

    if-nez v1, :cond_3

    const/16 v1, 0xe

    aget v1, v0, v1

    if-eqz v1, :cond_5

    .line 677
    :cond_3
    if-nez p4, :cond_4

    .line 678
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    :goto_2
    move v1, v3

    .line 683
    goto :goto_1

    .line 680
    :cond_4
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 681
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 685
    :cond_5
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 686
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 689
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 4
    .parameter "child"
    .parameter "params"
    .parameter "myHeight"
    .parameter "wrapContent"

    .prologue
    const/4 v3, 0x1

    .line 695
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 697
    .local v0, rules:[I
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_1

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 699
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 718
    :cond_0
    :goto_0
    const/16 v1, 0xc

    aget v1, v0, v1

    if-eqz v1, :cond_6

    move v1, v3

    :goto_1
    return v1

    .line 700
    :cond_1
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ltz v1, :cond_2

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_2

    .line 702
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 703
    :cond_2
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_0

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_0

    .line 705
    const/16 v1, 0xd

    aget v1, v0, v1

    if-nez v1, :cond_3

    const/16 v1, 0xf

    aget v1, v0, v1

    if-eqz v1, :cond_5

    .line 706
    :cond_3
    if-nez p4, :cond_4

    .line 707
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    :goto_2
    move v1, v3

    .line 712
    goto :goto_1

    .line 709
    :cond_4
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 710
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 714
    :cond_5
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 715
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 718
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private sortChildren()V
    .locals 6

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 263
    .local v1, count:I
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v4, v4

    if-eq v4, v1, :cond_0

    new-array v4, v1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 264
    :cond_0
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v4, v4

    if-eq v4, v1, :cond_1

    new-array v4, v1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 266
    :cond_1
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 267
    .local v2, graph:Landroid/widget/RelativeLayout$DependencyGraph;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 269
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 270
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, child:Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 283
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 295
    return-void

    .line 281
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 283
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 936
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 946
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v4, :cond_0

    .line 947
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$1;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 951
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 952
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 951
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 955
    :cond_1
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 956
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 957
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 958
    const/4 v4, 0x1

    .line 963
    .end local v3           #view:Landroid/view/View;
    :goto_1
    return v4

    .line 962
    :cond_3
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 963
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 930
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 941
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 920
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 905
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 907
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 908
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 909
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 910
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 912
    .local v3, st:Landroid/widget/RelativeLayout$LayoutParams;
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 907
    .end local v3           #st:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 916
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 41
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    move/from16 v37, v0

    if-eqz v37, :cond_0

    .line 302
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 303
    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 306
    :cond_0
    const/16 v23, -0x1

    .line 307
    .local v23, myWidth:I
    const/16 v22, -0x1

    .line 309
    .local v22, myHeight:I
    const/16 v34, 0x0

    .line 310
    .local v34, width:I
    const/4 v12, 0x0

    .line 312
    .local v12, height:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v35

    .line 313
    .local v35, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 314
    .local v13, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v36

    .line 315
    .local v36, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 318
    .local v14, heightSize:I
    if-eqz v35, :cond_1

    .line 319
    move/from16 v23, v36

    .line 322
    :cond_1
    if-eqz v13, :cond_2

    .line 323
    move/from16 v22, v14

    .line 326
    :cond_2
    const/high16 v37, 0x4000

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_3

    .line 327
    move/from16 v34, v23

    .line 330
    :cond_3
    const/high16 v37, 0x4000

    move v0, v13

    move/from16 v1, v37

    if-ne v0, v1, :cond_4

    .line 331
    move/from16 v12, v22

    .line 334
    :cond_4
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    .line 336
    const/16 v18, 0x0

    .line 337
    .local v18, ignore:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mGravity:I

    move/from16 v37, v0

    and-int/lit8 v11, v37, 0x7

    .line 338
    .local v11, gravity:I
    const/16 v37, 0x3

    move v0, v11

    move/from16 v1, v37

    if-eq v0, v1, :cond_8

    if-eqz v11, :cond_8

    const/16 v37, 0x1

    move/from16 v15, v37

    .line 339
    .local v15, horizontalGravity:Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mGravity:I

    move/from16 v37, v0

    and-int/lit8 v11, v37, 0x70

    .line 340
    const/16 v37, 0x30

    move v0, v11

    move/from16 v1, v37

    if-eq v0, v1, :cond_9

    if-eqz v11, :cond_9

    const/16 v37, 0x1

    move/from16 v31, v37

    .line 342
    .local v31, verticalGravity:Z
    :goto_1
    const v21, 0x7fffffff

    .line 343
    .local v21, left:I
    const v30, 0x7fffffff

    .line 344
    .local v30, top:I
    const/high16 v27, -0x8000

    .line 345
    .local v27, right:I
    const/high16 v5, -0x8000

    .line 347
    .local v5, bottom:I
    const/16 v24, 0x0

    .line 348
    .local v24, offsetHorizontalAxis:Z
    const/16 v25, 0x0

    .line 350
    .local v25, offsetVerticalAxis:Z
    if-nez v15, :cond_5

    if-eqz v31, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    move/from16 v37, v0

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_6

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 354
    :cond_6
    const/high16 v37, 0x4000

    move/from16 v0, v35

    move/from16 v1, v37

    if-eq v0, v1, :cond_a

    const/16 v37, 0x1

    move/from16 v20, v37

    .line 355
    .local v20, isWrapContentWidth:Z
    :goto_2
    const/high16 v37, 0x4000

    move v0, v13

    move/from16 v1, v37

    if-eq v0, v1, :cond_b

    const/16 v37, 0x1

    move/from16 v19, v37

    .line 357
    .local v19, isWrapContentHeight:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    move-object/from16 v33, v0

    .line 358
    .local v33, views:[Landroid/view/View;
    move-object/from16 v0, v33

    array-length v0, v0

    move v10, v0

    .line 359
    .local v10, count:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_4
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_c

    .line 360
    aget-object v6, v33, v17

    .line 361
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_7

    .line 362
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout$LayoutParams;

    .line 364
    .local v26, params:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 365
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v26

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 366
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v26

    move/from16 v3, v23

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v37

    if-eqz v37, :cond_7

    .line 367
    const/16 v24, 0x1

    .line 359
    .end local v26           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 338
    .end local v5           #bottom:I
    .end local v6           #child:Landroid/view/View;
    .end local v10           #count:I
    .end local v15           #horizontalGravity:Z
    .end local v17           #i:I
    .end local v19           #isWrapContentHeight:Z
    .end local v20           #isWrapContentWidth:Z
    .end local v21           #left:I
    .end local v24           #offsetHorizontalAxis:Z
    .end local v25           #offsetVerticalAxis:Z
    .end local v27           #right:I
    .end local v30           #top:I
    .end local v31           #verticalGravity:Z
    .end local v33           #views:[Landroid/view/View;
    :cond_8
    const/16 v37, 0x0

    move/from16 v15, v37

    goto/16 :goto_0

    .line 340
    .restart local v15       #horizontalGravity:Z
    :cond_9
    const/16 v37, 0x0

    move/from16 v31, v37

    goto/16 :goto_1

    .line 354
    .restart local v5       #bottom:I
    .restart local v21       #left:I
    .restart local v24       #offsetHorizontalAxis:Z
    .restart local v25       #offsetVerticalAxis:Z
    .restart local v27       #right:I
    .restart local v30       #top:I
    .restart local v31       #verticalGravity:Z
    :cond_a
    const/16 v37, 0x0

    move/from16 v20, v37

    goto :goto_2

    .line 355
    .restart local v20       #isWrapContentWidth:Z
    :cond_b
    const/16 v37, 0x0

    move/from16 v19, v37

    goto :goto_3

    .line 372
    .restart local v10       #count:I
    .restart local v17       #i:I
    .restart local v19       #isWrapContentHeight:Z
    .restart local v33       #views:[Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    move-object/from16 v33, v0

    .line 373
    move-object/from16 v0, v33

    array-length v0, v0

    move v10, v0

    .line 375
    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_14

    .line 376
    aget-object v6, v33, v17

    .line 377
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_13

    .line 378
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout$LayoutParams;

    .line 380
    .restart local v26       #params:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 381
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v26

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 382
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v26

    move/from16 v3, v22

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 383
    const/16 v25, 0x1

    .line 386
    :cond_d
    if-eqz v20, :cond_e

    .line 387
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v37

    move/from16 v0, v34

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 390
    :cond_e
    if-eqz v19, :cond_f

    .line 391
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v37

    move v0, v12

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 394
    :cond_f
    move-object v0, v6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    if-eqz v31, :cond_11

    .line 395
    :cond_10
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v37

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v0, v21

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 396
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v37

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v0, v30

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 399
    :cond_11
    move-object v0, v6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    if-eqz v15, :cond_13

    .line 400
    :cond_12
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v37

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v27

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 401
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v37

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move v0, v5

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 375
    .end local v26           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_13
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 406
    .end local v6           #child:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    move/from16 v37, v0

    if-eqz v37, :cond_19

    .line 407
    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_19

    .line 408
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 409
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_18

    .line 410
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout$LayoutParams;

    .line 411
    .restart local v26       #params:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout;->alignBaseline(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 413
    move-object v0, v6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_15

    if-eqz v31, :cond_16

    .line 414
    :cond_15
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v37

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v0, v21

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 415
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v37

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v0, v30

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 418
    :cond_16
    move-object v0, v6

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_17

    if-eqz v15, :cond_18

    .line 419
    :cond_17
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v37

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v27

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 420
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v37

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move v0, v5

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 407
    .end local v26           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_18
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 426
    .end local v6           #child:Landroid/view/View;
    :cond_19
    if-eqz v20, :cond_1e

    .line 429
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v37, v0

    add-int v34, v34, v37

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    if-ltz v37, :cond_1a

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    move/from16 v0, v34

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 435
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v37

    move/from16 v0, v34

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 436
    move/from16 v0, v34

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v34

    .line 438
    if-eqz v24, :cond_1e

    .line 439
    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_1e

    .line 440
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 441
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1c

    .line 442
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout$LayoutParams;

    .line 443
    .restart local v26       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v28

    .line 444
    .local v28, rules:[I
    const/16 v37, 0xd

    aget v37, v28, v37

    if-nez v37, :cond_1b

    const/16 v37, 0xe

    aget v37, v28, v37

    if-eqz v37, :cond_1d

    .line 445
    :cond_1b
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v26

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 439
    .end local v26           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v28           #rules:[I
    :cond_1c
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 446
    .restart local v26       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v28       #rules:[I
    :cond_1d
    const/16 v37, 0xb

    aget v37, v28, v37

    if-eqz v37, :cond_1c

    .line 447
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 448
    .local v8, childWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v37, v0

    sub-int v37, v34, v37

    sub-int v37, v37, v8

    move-object/from16 v0, v26

    move/from16 v1, v37

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 449
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I
    invoke-static/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v37

    add-int v37, v37, v8

    move-object/from16 v0, v26

    move/from16 v1, v37

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mRight:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_8

    .line 456
    .end local v6           #child:Landroid/view/View;
    .end local v8           #childWidth:I
    .end local v26           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v28           #rules:[I
    :cond_1e
    if-eqz v19, :cond_23

    .line 459
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v37, v0

    add-int v12, v12, v37

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    if-ltz v37, :cond_1f

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    move v0, v12

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 465
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v37

    move v0, v12

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 466
    move v0, v12

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v12

    .line 468
    if-eqz v25, :cond_23

    .line 469
    const/16 v17, 0x0

    :goto_9
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_23

    .line 470
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 471
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_21

    .line 472
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout$LayoutParams;

    .line 473
    .restart local v26       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v28

    .line 474
    .restart local v28       #rules:[I
    const/16 v37, 0xd

    aget v37, v28, v37

    if-nez v37, :cond_20

    const/16 v37, 0xf

    aget v37, v28, v37

    if-eqz v37, :cond_22

    .line 475
    :cond_20
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v26

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 469
    .end local v26           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v28           #rules:[I
    :cond_21
    :goto_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 476
    .restart local v26       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v28       #rules:[I
    :cond_22
    const/16 v37, 0xc

    aget v37, v28, v37

    if-eqz v37, :cond_21

    .line 477
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 478
    .local v7, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v37, v0

    sub-int v37, v12, v37

    sub-int v37, v37, v7

    move-object/from16 v0, v26

    move/from16 v1, v37

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 479
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mTop:I
    invoke-static/range {v26 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v37

    add-int v37, v37, v7

    move-object/from16 v0, v26

    move/from16 v1, v37

    #setter for: Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I
    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_a

    .line 486
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childHeight:I
    .end local v26           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v28           #rules:[I
    :cond_23
    if-nez v15, :cond_24

    if-eqz v31, :cond_28

    .line 487
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    .line 488
    .local v29, selfBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v39, v0

    sub-int v39, v34, v39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v40, v0

    sub-int v40, v12, v40

    move-object/from16 v0, v29

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    move-object v9, v0

    .line 492
    .local v9, contentBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mGravity:I

    move/from16 v37, v0

    sub-int v38, v27, v21

    sub-int v39, v5, v30

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move-object/from16 v3, v29

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 494
    move-object v0, v9

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v37, v0

    sub-int v16, v37, v21

    .line 495
    .local v16, horizontalOffset:I
    move-object v0, v9

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    sub-int v32, v37, v30

    .line 496
    .local v32, verticalOffset:I
    if-nez v16, :cond_25

    if-eqz v32, :cond_28

    .line 497
    :cond_25
    const/16 v17, 0x0

    :goto_b
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_28

    .line 498
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 499
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_27

    move-object v0, v6

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_27

    .line 500
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout$LayoutParams;

    .line 501
    .restart local v26       #params:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v15, :cond_26

    .line 502
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 503
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 505
    :cond_26
    if-eqz v31, :cond_27

    .line 506
    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 507
    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 497
    .end local v26           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_27
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 514
    .end local v6           #child:Landroid/view/View;
    .end local v9           #contentBounds:Landroid/graphics/Rect;
    .end local v16           #horizontalOffset:I
    .end local v29           #selfBounds:Landroid/graphics/Rect;
    .end local v32           #verticalOffset:I
    :cond_28
    move-object/from16 v0, p0

    move/from16 v1, v34

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 515
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 259
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 218
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 219
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 220
    or-int/lit8 p1, p1, 0x3

    .line 223
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 224
    or-int/lit8 p1, p1, 0x30

    .line 227
    :cond_1
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 228
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 230
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2
    .parameter "horizontalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 234
    and-int/lit8 v0, p1, 0x7

    .line 235
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v0, :cond_0

    .line 236
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x8

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 237
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 239
    :cond_0
    return-void
.end method

.method public setIgnoreGravity(I)V
    .locals 0
    .parameter "viewId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 202
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 203
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .parameter "verticalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 243
    and-int/lit8 v0, p1, 0x70

    .line 244
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 245
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 246
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 248
    :cond_0
    return-void
.end method
