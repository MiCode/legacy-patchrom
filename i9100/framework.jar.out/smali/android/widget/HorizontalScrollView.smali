.class public Landroid/widget/HorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalScrollView.java"


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static DEBUG_BOUNCE:Z = false

.field static DEBUG_SCROLL:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "HorizontalScrollView"


# instance fields
.field private mActivePointerId:I

.field mBounceController:Landroid/widget/BounceController;

.field private mBounceEnabled:Z

.field mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Landroid/widget/EdgeGlow;

.field private mEdgeGlowRight:Landroid/widget/EdgeGlow;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Landroid/widget/HorizontalScrollView;->DEBUG_BOUNCE:Z

    .line 74
    sput-boolean v0, Landroid/widget/HorizontalScrollView;->DEBUG_SCROLL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 167
    const v0, 0x10102cf

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 108
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 122
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 138
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 154
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 172
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initScrollView()V

    .line 174
    sget-object v1, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 177
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 179
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 308
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 311
    .local v1, childWidth:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    .line 313
    .end local v1           #childWidth:I
    :goto_0
    return v2

    .restart local v1       #childWidth:I
    :cond_0
    move v2, v5

    .line 311
    goto :goto_0

    .end local v1           #childWidth:I
    :cond_1
    move v2, v5

    .line 313
    goto :goto_0
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1755
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_1

    .line 1756
    :cond_0
    const/4 v0, 0x0

    .line 1761
    :goto_0
    return v0

    .line 1758
    :cond_1
    add-int v0, p2, p1

    if-le v0, p3, :cond_2

    .line 1759
    sub-int v0, p3, p2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 1761
    goto :goto_0
.end method

.method private computeScrollBounce()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const-string v13, "computeScroll:: ActualY="

    const-string v11, "HorizontalScrollView"

    const-string v10, " ScrollerVal="

    .line 1285
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1306
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    .line 1307
    .local v1, oldX:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v2

    .line 1308
    .local v2, oldY:I
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v6

    .line 1309
    .local v6, x:I
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v7

    .line 1310
    .local v7, y:I
    const/4 v3, 0x0

    .line 1311
    .local v3, tempX:I
    const/4 v4, 0x0

    .line 1313
    .local v4, tempY:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_7

    .line 1314
    invoke-virtual {p0, v12}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1315
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result v3

    .line 1317
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result v4

    .line 1319
    sget-boolean v8, Landroid/widget/HorizontalScrollView;->DEBUG_SCROLL:Z

    if-eqz v8, :cond_0

    .line 1320
    const-string v8, "HorizontalScrollView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "computeScroll:: ActualY="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ScrollerVal="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " oldY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_0
    if-ne v3, v6, :cond_1

    if-eq v4, v7, :cond_3

    .line 1324
    :cond_1
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8, v12}, Landroid/widget/OverScroller;->getCurrVelocity(Z)F

    move-result v5

    .line 1327
    .local v5, velocity:F
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1329
    sget-boolean v8, Landroid/widget/HorizontalScrollView;->DEBUG_BOUNCE:Z

    if-eqz v8, :cond_2

    .line 1330
    const-string v8, "HorizontalScrollView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "computeScroll:: ActualY="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ScrollerVal="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_2
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    invoke-interface {v8, v5}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 1341
    .end local v0           #child:Landroid/view/View;
    .end local v5           #velocity:F
    :cond_3
    :goto_0
    if-ne v3, v1, :cond_4

    if-eq v4, v2, :cond_5

    .line 1342
    :cond_4
    invoke-virtual {p0, v6, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1344
    :cond_5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 1347
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidate()V

    .line 1349
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #tempX:I
    .end local v4           #tempY:I
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_6
    return-void

    .line 1335
    .restart local v1       #oldX:I
    .restart local v2       #oldY:I
    .restart local v3       #tempX:I
    .restart local v4       #tempY:I
    .restart local v6       #x:I
    .restart local v7       #y:I
    :cond_7
    sget-boolean v8, Landroid/widget/HorizontalScrollView;->DEBUG_SCROLL:Z

    if-eqz v8, :cond_8

    .line 1336
    const-string v8, "HorizontalScrollView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "computeScroll::childCount <= 0 ActualY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ScrollerVal="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_8
    move v3, v6

    .line 1339
    move v4, v7

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1148
    if-eqz p1, :cond_0

    .line 1149
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1150
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 882
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 883
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 892
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 894
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 895
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 896
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 897
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 898
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 900
    .local v9, viewRight:I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 906
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v10, 0x1

    move v7, v10

    .line 908
    .local v7, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 910
    move-object v1, v5

    .line 911
    move v3, v7

    .line 895
    .end local v7           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 906
    :cond_1
    const/4 v10, 0x0

    move v7, v10

    goto :goto_1

    .line 913
    .restart local v7       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v10, 0x1

    move v6, v10

    .line 917
    .local v6, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 918
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 924
    move-object v1, v5

    goto :goto_2

    .line 913
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v10, 0x0

    move v6, v10

    goto :goto_3

    .line 927
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v7, :cond_7

    .line 932
    move-object v1, v5

    .line 933
    const/4 v3, 0x1

    goto :goto_2

    .line 934
    :cond_7
    if-eqz v6, :cond_0

    .line 939
    move-object v1, v5

    goto :goto_2

    .line 946
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 853
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 854
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 855
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 857
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    move-object v3, p3

    .line 862
    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 820
    const/4 v1, 0x0

    .line 821
    .local v1, scrollRange:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 822
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 823
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 826
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 444
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 445
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 446
    .local v1, scrollX:I
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 447
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    .line 451
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollX:I
    :goto_0
    return v2

    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #scrollX:I
    :cond_0
    move v2, v3

    .line 447
    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollX:I
    :cond_1
    move v2, v3

    .line 451
    goto :goto_0
.end method

.method private initScrollView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 223
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 224
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 225
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 226
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 227
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    .line 228
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    .line 229
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    .line 230
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    .line 232
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    .line 233
    new-instance v1, Landroid/widget/BounceController;

    invoke-direct {v1, p0}, Landroid/widget/BounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    .line 234
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1, v2}, Landroid/widget/BounceController;->setOrientation(I)V

    .line 235
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1}, Landroid/widget/BounceController;->makeScroller()Landroid/widget/OverScroller;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 236
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1, v2}, Landroid/widget/BounceController;->getBounceRunnable(I)Landroid/widget/BounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    .line 242
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 243
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v1, 0x0

    .line 1127
    invoke-direct {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 1612
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 1617
    :goto_0
    return v1

    .line 1616
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1617
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 1135
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1136
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1138
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 789
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 790
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 791
    .local v1, pointerId:I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 795
    if-nez v2, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 796
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 797
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 798
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 799
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 802
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 795
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1035
    const/4 v4, 0x1

    .line 1037
    .local v4, handled:Z
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1038
    .local v6, width:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1039
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 1040
    .local v1, containerRight:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    move v3, v9

    .line 1042
    .local v3, goLeft:Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1043
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1044
    move-object v5, p0

    .line 1047
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1048
    const/4 v4, 0x0

    .line 1054
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1055
    iput-boolean v9, p0, Landroid/widget/HorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1056
    iput-boolean v8, p0, Landroid/widget/HorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1059
    :cond_1
    return v4

    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    move v3, v8

    .line 1040
    goto :goto_0

    .line 1050
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v7, p2, v0

    move v2, v7

    .line 1051
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1050
    .end local v2           #delta:I
    :cond_4
    sub-int v7, p3, v1

    move v2, v7

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1413
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1416
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1418
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1420
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1421
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1423
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 1434
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1435
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1436
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1437
    if-eqz p2, :cond_2

    .line 1438
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1443
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v3

    .line 1435
    goto :goto_0

    .line 1440
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 275
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 284
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 302
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v9, 0x0

    .line 1071
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1072
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1073
    const/4 v0, 0x0

    .line 1075
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1077
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1079
    .local v3, maxJump:I
    if-eqz v4, :cond_2

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1080
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1081
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1082
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1083
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 1084
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1107
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1114
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1115
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1116
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestFocus()Z

    .line 1117
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1119
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 1087
    .end local v6           #scrollDelta:I
    :cond_2
    move v6, v3

    .line 1089
    .restart local v6       #scrollDelta:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 1090
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    .line 1101
    :cond_3
    :goto_2
    if-nez v6, :cond_5

    move v7, v9

    .line 1102
    goto :goto_1

    .line 1091
    :cond_4
    if-ne p1, v10, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1093
    invoke-virtual {p0, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1095
    .local v1, daRight:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    add-int v5, v7, v8

    .line 1097
    .local v5, screenRight:I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_3

    .line 1098
    sub-int v6, v1, v5

    goto :goto_2

    .line 1104
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_5
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_3
    invoke-direct {p0, v7}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    :cond_6
    neg-int v7, v6

    goto :goto_3
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 4

    .prologue
    .line 1224
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    .line 1226
    .local v0, extent:I
    iget-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    if-eqz v2, :cond_1

    .line 1227
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v2, v2, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1228
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v3, v3, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1230
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 1232
    .end local v1           #ratio:F
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1234
    :goto_0
    return v2

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1240
    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1242
    .local v2, offset:I
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    .line 1243
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v3, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1244
    .local v3, savedBounceExtent:F
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeHorizontalScrollExtent()I

    move-result v4

    .line 1245
    .local v4, shrinkedScrollExtent:I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iput v7, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1246
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 1247
    .local v1, normalScrollExtent:I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iput v3, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1249
    sub-int v0, v1, v4

    .line 1251
    .local v0, delta:I
    add-int/2addr v2, v0

    .line 1253
    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v3           #savedBounceExtent:F
    .end local v4           #shrinkedScrollExtent:I
    :cond_0
    return v2
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1205
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1206
    .local v1, count:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1207
    .local v0, contentWidth:I
    if-nez v1, :cond_0

    move v5, v0

    .line 1220
    :goto_0
    return v5

    .line 1211
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1212
    .local v3, scrollRange:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 1213
    .local v4, scrollX:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1214
    .local v2, overscrollRight:I
    if-gez v4, :cond_2

    .line 1215
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v5, v3

    .line 1220
    goto :goto_0

    .line 1216
    :cond_2
    if-le v4, v2, :cond_1

    .line 1217
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 1353
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    if-eqz v0, :cond_1

    .line 1354
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->computeScrollBounce()V

    .line 1405
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1380
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1381
    .local v4, oldY:I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1382
    .local v12, x:I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1384
    .local v13, y:I
    if-ne v3, v12, :cond_2

    if-eq v4, v13, :cond_4

    .line 1385
    :cond_2
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1387
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1389
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v11

    .line 1390
    .local v11, range:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v10

    .line 1391
    .local v10, overscrollMode:I
    if-eqz v10, :cond_3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    if-lez v11, :cond_4

    .line 1393
    :cond_3
    if-gez v12, :cond_5

    if-ltz v3, :cond_5

    .line 1394
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 1400
    .end local v10           #overscrollMode:I
    .end local v11           #range:I
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 1403
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidate()V

    goto :goto_0

    .line 1395
    .restart local v10       #overscrollMode:I
    .restart local v11       #range:I
    :cond_5
    if-le v12, v11, :cond_4

    if-gt v3, v11, :cond_4

    .line 1396
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v9, 0x0

    .line 1455
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    .line 1512
    :goto_0
    return v7

    .line 1458
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1459
    .local v6, width:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1460
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1462
    .local v4, screenRight:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1465
    .local v1, fadingEdge:I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-lez v7, :cond_1

    .line 1466
    add-int/2addr v3, v1

    .line 1470
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1471
    sub-int/2addr v4, v1

    .line 1474
    :cond_2
    const/4 v5, 0x0

    .line 1476
    .local v5, scrollXDelta:I
    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-le v7, v4, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-le v7, v3, :cond_5

    .line 1481
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_4

    .line 1483
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v3

    add-int/2addr v5, v7

    .line 1490
    :goto_1
    invoke-virtual {p0, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1491
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1492
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_3
    :goto_2
    move v7, v5

    .line 1512
    goto :goto_0

    .line 1486
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v4

    add-int/2addr v5, v7

    goto :goto_1

    .line 1494
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_3

    .line 1500
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1502
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1510
    :goto_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    .line 1505
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 1694
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1696
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_1

    .line 1697
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->adjustBounceExtent()F

    move-result v6

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1699
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v1

    .line 1700
    .local v1, overscrollMode:I
    if-eqz v1, :cond_0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    if-lez v5, :cond_1

    .line 1702
    :cond_0
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8

    .line 1703
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->getBounceExtentRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull2(F)V

    .line 1710
    .end local v1           #overscrollMode:I
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    if-eqz v5, :cond_7

    .line 1711
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1712
    .local v3, scrollX:I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1713
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1714
    .local v2, restoreCount:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 1716
    .local v0, height:I
    const/high16 v5, 0x4387

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1718
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_2

    .line 1722
    :cond_2
    neg-int v5, v0

    int-to-float v5, v5

    const/high16 v6, 0x3fc0

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1725
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 1726
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1727
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1729
    :cond_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1731
    .end local v0           #height:I
    .end local v2           #restoreCount:I
    :cond_4
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1732
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1733
    .restart local v2       #restoreCount:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    .line 1734
    .local v4, width:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 1736
    .restart local v0       #height:I
    const/high16 v5, 0x42b4

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1738
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_5

    .line 1743
    :cond_5
    neg-int v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v4

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1745
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    mul-int/lit8 v6, v0, 0x2

    invoke-virtual {v5, v6, v4}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 1746
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1747
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1749
    :cond_6
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1752
    .end local v0           #height:I
    .end local v2           #restoreCount:I
    .end local v3           #scrollX:I
    .end local v4           #width:I
    :cond_7
    return-void

    .line 1704
    .restart local v1       #overscrollMode:I
    :cond_8
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    .line 1705
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->getBounceExtentRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull2(F)V

    goto/16 :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x11

    const/16 v4, 0x42

    .line 402
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 404
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 405
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 408
    const/4 v0, 0x0

    .line 409
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 411
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 440
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v3, v6

    .line 411
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v3, v6

    .line 414
    goto :goto_0

    .line 417
    :cond_3
    const/4 v1, 0x0

    .line 418
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 419
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 440
    goto :goto_0

    .line 421
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 422
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 424
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 426
    goto :goto_1

    .line 428
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 429
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 431
    :cond_6
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 433
    goto :goto_1

    .line 435
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_2

    .line 419
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 15
    .parameter "velocityX"

    .prologue
    .line 1628
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1629
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v14, v0, v1

    .line 1630
    .local v14, width:I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 1632
    .local v13, right:I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    sub-int v6, v13, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    div-int/lit8 v9, v14, 0x2

    const/4 v10, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1635
    if-lez p1, :cond_3

    const/4 v0, 0x1

    move v11, v0

    .line 1637
    .local v11, movingRight:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Landroid/widget/HorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v12

    .line 1640
    .local v12, newFocused:Landroid/view/View;
    if-nez v12, :cond_0

    .line 1641
    move-object v12, p0

    .line 1644
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v12, v0, :cond_1

    if-eqz v11, :cond_4

    const/16 v0, 0x42

    :goto_1
    invoke-virtual {v12, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1646
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1647
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1650
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1652
    .end local v11           #movingRight:Z
    .end local v12           #newFocused:Landroid/view/View;
    .end local v13           #right:I
    .end local v14           #width:I
    :cond_2
    return-void

    .line 1635
    .restart local v13       #right:I
    .restart local v14       #width:I
    :cond_3
    const/4 v0, 0x0

    move v11, v0

    goto :goto_0

    .line 1644
    .restart local v11       #movingRight:Z
    .restart local v12       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v0, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    .line 1001
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 1002
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1004
    .local v3, width:I
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1005
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 1007
    if-eqz v1, :cond_0

    .line 1008
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1009
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1010
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1011
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1012
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1016
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v5

    .line 1001
    goto :goto_0
.end method

.method public getBounce()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const/4 v1, 0x0

    .line 193
    :goto_0
    return v1

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 189
    .local v0, length:I
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 190
    iget v1, p0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 193
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 217
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 199
    const/4 v3, 0x0

    .line 209
    :goto_0
    return v3

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 203
    .local v0, length:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 204
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 205
    .local v2, span:I
    if-ge v2, v0, :cond_1

    .line 206
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 209
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1258
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1263
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1266
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1268
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1269
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1274
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1276
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1278
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1281
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1282
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 467
    .local v7, action:I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 549
    :goto_0
    return v0

    .line 471
    :cond_0
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_0

    .line 549
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 483
    :pswitch_1
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 484
    .local v8, activePointerId:I
    if-eq v8, v1, :cond_1

    .line 490
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 494
    .local v9, pointerIndex:I
    if-gez v9, :cond_2

    move v0, v2

    .line 495
    goto :goto_0

    .line 497
    :cond_2
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 498
    .local v10, x:F
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v11, v0

    .line 499
    .local v11, xDiff:I
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v11, v0, :cond_1

    .line 500
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 501
    iput v10, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 502
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 509
    .end local v8           #activePointerId:I
    .end local v9           #pointerIndex:I
    .end local v10           #x:F
    .end local v11           #xDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 510
    .restart local v10       #x:F
    float-to-int v0, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->inChild(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 511
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 519
    :cond_3
    iput v10, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 520
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 527
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    .line 534
    .end local v10           #x:F
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 535
    iput v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 536
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto :goto_1

    .line 541
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1577
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1578
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1580
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1583
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1586
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1587
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 359
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 361
    iget-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 366
    .local v5, widthMode:I
    if-eqz v5, :cond_0

    .line 370
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 371
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 373
    .local v4, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 374
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 376
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 378
    .local v1, childHeightMeasureSpec:I
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 379
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 380
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 382
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v3, 0x0

    .line 807
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 809
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 810
    if-eqz p3, :cond_0

    .line 811
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 816
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 817
    return-void

    .line 814
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x0

    .line 1540
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1541
    const/16 p1, 0x42

    .line 1546
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1550
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    move v1, v3

    .line 1558
    :goto_2
    return v1

    .line 1542
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1543
    const/16 p1, 0x11

    goto :goto_0

    .line 1546
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 1554
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 1555
    goto :goto_2

    .line 1558
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1591
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1593
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1594
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1605
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 1599
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1600
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1601
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1602
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1603
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 38
    .parameter "ev"

    .prologue
    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    if-eqz v5, :cond_0

    .line 559
    const/4 v5, 0x0

    .line 785
    :goto_0
    return v5

    .line 562
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 563
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 565
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    .line 569
    .local v23, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_2

    const/4 v5, 0x3

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 574
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 576
    const/4 v5, 0x1

    goto :goto_0

    .line 579
    :cond_3
    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 785
    :cond_4
    :goto_1
    :pswitch_0
    const/4 v5, 0x1

    goto :goto_0

    .line 581
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 582
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-nez v5, :cond_6

    .line 583
    const/4 v5, 0x0

    goto :goto_0

    .line 581
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 590
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_7

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 595
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 596
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 601
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    move v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    invoke-interface {v5}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease2()V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease2()V

    goto :goto_1

    .line 614
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 616
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move v5, v0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    .line 618
    .local v24, activePointerIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    move v5, v0

    if-eqz v5, :cond_12

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    if-eqz v5, :cond_8

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    invoke-interface {v5}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 623
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v37

    .line 624
    .local v37, x:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    move v5, v0

    sub-float v5, v5, v37

    float-to-int v6, v5

    .line 625
    .local v6, deltaX:I
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v32, v0

    .line 627
    .local v32, prevBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v35

    .line 628
    .local v35, scrollX:I
    const/16 v27, 0x0

    .line 629
    .local v27, delta:I
    const/16 v34, 0x0

    .line 631
    .local v34, scroll:I
    move/from16 v27, v6

    .line 632
    move/from16 v34, v35

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v27

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v5, v7

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_a

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_9

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .end local v6           #deltaX:I
    move/from16 v0, v27

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 639
    const/16 v27, 0x0

    .line 640
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 641
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 643
    .restart local v6       #deltaX:I
    :cond_9
    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v7, v0

    iget v7, v7, Landroid/widget/BounceController;->mBounceExtent:F

    sub-float/2addr v5, v7

    move v0, v5

    float-to-int v0, v0

    move/from16 v27, v0

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 649
    :cond_a
    if-gez v27, :cond_b

    .line 650
    if-lez v34, :cond_f

    .line 651
    add-int v5, v34, v27

    if-gez v5, :cond_e

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    add-int v7, v34, v27

    neg-int v7, v7

    int-to-float v7, v7

    iput v7, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 654
    move/from16 v0, v34

    neg-int v0, v0

    move v5, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 667
    :cond_b
    :goto_3
    if-lez v27, :cond_c

    .line 668
    const/16 v26, 0x0

    .line 669
    .local v26, bottomEdge:I
    const/16 v25, 0x0

    .line 671
    .local v25, availableToScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v7

    sub-int v26, v5, v7

    .line 672
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int v5, v5, v34

    sub-int v25, v5, v26

    .line 674
    if-lez v25, :cond_11

    .line 676
    move/from16 v0, v25

    move/from16 v1, v27

    if-le v0, v1, :cond_10

    .line 678
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 692
    .end local v25           #availableToScroll:I
    .end local v26           #bottomEdge:I
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    move v5, v0

    if-nez v5, :cond_d

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 694
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v5, v5, v32

    if-eqz v5, :cond_4

    .line 695
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 657
    :cond_e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_3

    .line 660
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v7, v5, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v27

    int-to-float v0, v0

    move v8, v0

    sub-float/2addr v7, v8

    iput v7, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 661
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto :goto_3

    .line 681
    .restart local v25       #availableToScroll:I
    .restart local v26       #bottomEdge:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    sub-int v7, v27, v25

    int-to-float v7, v7

    iput v7, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 683
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_4

    .line 687
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v7, v5, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v27

    int-to-float v0, v0

    move v8, v0

    sub-float/2addr v7, v8

    iput v7, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 689
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto :goto_4

    .line 697
    .end local v6           #deltaX:I
    .end local v25           #availableToScroll:I
    .end local v26           #bottomEdge:I
    .end local v27           #delta:I
    .end local v32           #prevBounceExtent:F
    .end local v34           #scroll:I
    .end local v35           #scrollX:I
    .end local v37           #x:F
    :cond_12
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v37

    .line 698
    .restart local v37       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    move v5, v0

    sub-float v5, v5, v37

    float-to-int v6, v5

    .line 699
    .restart local v6       #deltaX:I
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mLastMotionX:F

    .line 701
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v29, v0

    .line 702
    .local v29, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v30, v0

    .line 703
    .local v30, oldY:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v10

    .line 704
    .local v10, range:I
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    move v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 709
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v7

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v31

    .line 712
    .local v31, overscrollMode:I
    if-eqz v31, :cond_14

    const/4 v5, 0x1

    move/from16 v0, v31

    move v1, v5

    if-ne v0, v1, :cond_4

    if-lez v10, :cond_4

    .line 714
    :cond_14
    add-int v33, v29, v6

    .line 715
    .local v33, pulledToX:I
    if-gez v33, :cond_17

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    int-to-float v7, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_15

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 726
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4

    .line 728
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto/16 :goto_1

    .line 720
    :cond_17
    move/from16 v0, v33

    move v1, v10

    if-le v0, v1, :cond_15

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    int-to-float v7, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_15

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_5

    .line 735
    .end local v6           #deltaX:I
    .end local v10           #range:I
    .end local v24           #activePointerIndex:I
    .end local v29           #oldX:I
    .end local v30           #oldY:I
    .end local v31           #overscrollMode:I
    .end local v33           #pulledToX:I
    .end local v37           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    .line 737
    .local v36, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, v36

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 738
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move v5, v0

    move-object/from16 v0, v36

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v28, v0

    .line 740
    .local v28, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_18

    .line 741
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    move v6, v0

    if-le v5, v6, :cond_1a

    .line 742
    move/from16 v0, v28

    neg-int v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    .line 751
    :cond_18
    :goto_6
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 752
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-eqz v5, :cond_19

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 756
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 758
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    goto/16 :goto_1

    .line 744
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v15

    .line 745
    .local v15, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v13, v0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 746
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    goto :goto_6

    .line 765
    .end local v15           #right:I
    .end local v28           #initialVelocity:I
    .end local v36           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 769
    :cond_1b
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 770
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-eqz v5, :cond_1c

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 773
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 775
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    goto/16 :goto_1

    .line 782
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v6, 0x0

    .line 964
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 965
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 967
    .local v3, width:I
    if-eqz v1, :cond_2

    .line 968
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 969
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 970
    .local v0, count:I
    if-lez v0, :cond_0

    .line 971
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 972
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 973
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 982
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 984
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v6

    .line 964
    goto :goto_0

    .line 977
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_2
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 978
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    .line 979
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1517
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1518
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1519
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1526
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1527
    return-void

    .line 1523
    :cond_1
    iput-object p2, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1564
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1566
    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1571
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1572
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1573
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1661
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1662
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1663
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p1

    .line 1664
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p2

    .line 1665
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1666
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1669
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setEnableBounce(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 251
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z

    .line 252
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v0, p1}, Landroid/widget/BounceController;->setEnableBounce(Z)V

    .line 254
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0, v1, v2}, Landroid/widget/BounceController;->setEdgeGlows(Landroid/widget/EdgeGlow;Landroid/widget/EdgeGlow;)V

    .line 256
    :cond_0
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 334
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 335
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    .line 336
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 338
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 1673
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 1674
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    if-nez v3, :cond_0

    .line 1675
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1676
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1080258

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1677
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080259

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1678
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1679
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    .line 1682
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setEnableBounce(Z)V

    .line 1689
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1690
    return-void

    .line 1684
    :cond_1
    iput-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1685
    iput-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    .line 1687
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setEnableBounce(Z)V

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 354
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 355
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1164
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1185
    :goto_0
    return-void

    .line 1168
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1169
    .local v0, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1170
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1171
    .local v5, width:I
    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1172
    .local v3, right:I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1173
    .local v2, maxX:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 1174
    .local v4, scrollX:I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1176
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1177
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1184
    .end local v2           #maxX:I
    .end local v3           #right:I
    .end local v4           #scrollX:I
    .end local v5           #width:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    goto :goto_0

    .line 1179
    :cond_1
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1180
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1182
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1194
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1195
    return-void
.end method
