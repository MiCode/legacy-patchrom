.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static DEBUG_BOUNCE:Z = false

.field static DEBUG_SCROLL:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "ScrollView"


# instance fields
.field private mActivePointerId:I

.field mBounceController:Landroid/widget/BounceController;

.field private mBounceEnabled:Z

.field mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeGlow;

.field private mEdgeGlowTop:Landroid/widget/EdgeGlow;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

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

    .line 66
    sput-boolean v0, Landroid/widget/ScrollView;->DEBUG_BOUNCE:Z

    .line 68
    sput-boolean v0, Landroid/widget/ScrollView;->DEBUG_SCROLL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 161
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
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

    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 102
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 116
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 132
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 148
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 166
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 168
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 171
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 173
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 301
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 302
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 304
    .local v1, childHeight:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    .line 306
    .end local v1           #childHeight:I
    :goto_0
    return v2

    .restart local v1       #childHeight:I
    :cond_0
    move v2, v5

    .line 304
    goto :goto_0

    .end local v1           #childHeight:I
    :cond_1
    move v2, v5

    .line 306
    goto :goto_0
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1744
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_1

    .line 1752
    :cond_0
    const/4 v0, 0x0

    .line 1761
    :goto_0
    return v0

    .line 1754
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
    .locals 13

    .prologue
    const-string v12, "computeScroll:: ActualY="

    const-string v11, "ScrollView"

    const-string v10, " ScrollerVal="

    .line 1279
    iget-object v8, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1300
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v1

    .line 1301
    .local v1, oldX:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 1302
    .local v2, oldY:I
    iget-object v8, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v6

    .line 1303
    .local v6, x:I
    iget-object v8, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v7

    .line 1304
    .local v7, y:I
    const/4 v3, 0x0

    .line 1305
    .local v3, tempX:I
    const/4 v4, 0x0

    .line 1307
    .local v4, tempY:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_7

    .line 1308
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1309
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Landroid/widget/ScrollView;->clamp(III)I

    move-result v3

    .line 1311
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Landroid/widget/ScrollView;->clamp(III)I

    move-result v4

    .line 1313
    sget-boolean v8, Landroid/widget/ScrollView;->DEBUG_SCROLL:Z

    if-eqz v8, :cond_0

    .line 1314
    const-string v8, "ScrollView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "computeScroll:: ActualY="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 1316
    :cond_0
    if-ne v3, v6, :cond_1

    if-eq v4, v7, :cond_3

    .line 1318
    :cond_1
    iget-object v8, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/OverScroller;->getCurrVelocity(Z)F

    move-result v5

    .line 1321
    .local v5, velocity:F
    iget-object v8, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1323
    sget-boolean v8, Landroid/widget/ScrollView;->DEBUG_BOUNCE:Z

    if-eqz v8, :cond_2

    .line 1324
    const-string v8, "ScrollView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "computeScroll:: ActualY="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 1326
    :cond_2
    iget-object v8, p0, Landroid/widget/ScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    invoke-interface {v8, v5}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 1335
    .end local v0           #child:Landroid/view/View;
    .end local v5           #velocity:F
    :cond_3
    :goto_0
    if-ne v3, v1, :cond_4

    if-eq v4, v2, :cond_5

    .line 1336
    :cond_4
    invoke-virtual {p0, v6, v7}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1338
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1341
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidate()V

    .line 1343
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #tempX:I
    .end local v4           #tempY:I
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_6
    return-void

    .line 1329
    .restart local v1       #oldX:I
    .restart local v2       #oldY:I
    .restart local v3       #tempX:I
    .restart local v4       #tempY:I
    .restart local v6       #x:I
    .restart local v7       #y:I
    :cond_7
    sget-boolean v8, Landroid/widget/ScrollView;->DEBUG_SCROLL:Z

    if-eqz v8, :cond_8

    .line 1330
    const-string v8, "ScrollView"

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

    .line 1332
    :cond_8
    move v3, v6

    .line 1333
    move v4, v7

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1142
    if-eqz p1, :cond_0

    .line 1143
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1144
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 877
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 878
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 887
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 889
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 890
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 891
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 892
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 893
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 895
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 901
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v10, 0x1

    move v8, v10

    .line 903
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 905
    move-object v1, v5

    .line 906
    move v3, v8

    .line 890
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 901
    :cond_1
    const/4 v10, 0x0

    move v8, v10

    goto :goto_1

    .line 908
    .restart local v8       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v10, 0x1

    move v7, v10

    .line 912
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 913
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 919
    move-object v1, v5

    goto :goto_2

    .line 908
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v10, 0x0

    move v7, v10

    goto :goto_3

    .line 922
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 927
    move-object v1, v5

    .line 928
    const/4 v3, 0x1

    goto :goto_2

    .line 929
    :cond_7
    if-eqz v7, :cond_0

    .line 934
    move-object v1, v5

    goto :goto_2

    .line 941
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 848
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 849
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 850
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 852
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    move-object v3, p3

    .line 857
    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1, v2, v0}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 815
    const/4 v1, 0x0

    .line 816
    .local v1, scrollRange:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 817
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 818
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 821
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

    .line 438
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 439
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 440
    .local v1, scrollY:I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    .line 444
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :goto_0
    return v2

    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #scrollY:I
    :cond_0
    move v2, v3

    .line 441
    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :cond_1
    move v2, v3

    .line 444
    goto :goto_0
.end method

.method private initScrollView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 217
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 218
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 219
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 220
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 221
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 222
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 223
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 224
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 226
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    .line 227
    new-instance v1, Landroid/widget/BounceController;

    invoke-direct {v1, p0}, Landroid/widget/BounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    .line 228
    iget-object v1, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1}, Landroid/widget/BounceController;->makeScroller()Landroid/widget/OverScroller;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 229
    iget-object v1, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v1, v2}, Landroid/widget/BounceController;->getBounceRunnable(I)Landroid/widget/BounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    .line 235
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 236
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v1, 0x0

    .line 1121
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

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

    .line 1606
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 1611
    :goto_0
    return v1

    .line 1610
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1611
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 1129
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1130
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1132
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

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
    .line 784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 785
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 786
    .local v1, pointerId:I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 790
    if-nez v2, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 791
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 792
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 793
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 794
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 797
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 790
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1028
    const/4 v3, 0x1

    .line 1030
    .local v3, handled:Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1031
    .local v4, height:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 1032
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 1033
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    move v6, v9

    .line 1035
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1036
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1037
    move-object v5, p0

    .line 1040
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1041
    const/4 v3, 0x0

    .line 1047
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1048
    iput-boolean v9, p0, Landroid/widget/ScrollView;->mScrollViewMovedFocus:Z

    .line 1049
    iput-boolean v8, p0, Landroid/widget/ScrollView;->mScrollViewMovedFocus:Z

    .line 1052
    :cond_1
    return v3

    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    move v6, v8

    .line 1033
    goto :goto_0

    .line 1043
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v7, p2, v1

    move v2, v7

    .line 1044
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1043
    .end local v2           #delta:I
    :cond_4
    sub-int v7, p3, v0

    move v2, v7

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1406
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1409
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1411
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1413
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1414
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1416
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 1427
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1428
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1429
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1430
    if-eqz p2, :cond_2

    .line 1431
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1436
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v3

    .line 1428
    goto :goto_0

    .line 1433
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 268
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 277
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 295
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v9, 0x0

    .line 1064
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1065
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1066
    const/4 v0, 0x0

    .line 1068
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1070
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1072
    .local v3, maxJump:I
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    invoke-direct {p0, v4, v3, v7}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1073
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1074
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1075
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1076
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1077
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1101
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1108
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1109
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1110
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 1111
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1113
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 1080
    .end local v6           #scrollDelta:I
    :cond_2
    move v6, v3

    .line 1082
    .restart local v6       #scrollDelta:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 1083
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 1095
    :cond_3
    :goto_2
    if-nez v6, :cond_5

    move v7, v9

    .line 1096
    goto :goto_1

    .line 1084
    :cond_4
    if-ne p1, v10, :cond_3

    .line 1085
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1086
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1088
    .local v1, daBottom:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    add-int v5, v7, v8

    .line 1090
    .local v5, screenBottom:I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_3

    .line 1091
    sub-int v6, v1, v5

    goto :goto_2

    .line 1098
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_5
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_3
    invoke-direct {p0, v7}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0

    :cond_6
    neg-int v7, v6

    goto :goto_3
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 1347
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    if-eqz v0, :cond_1

    .line 1348
    invoke-direct {p0}, Landroid/widget/ScrollView;->computeScrollBounce()V

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1373
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1374
    .local v4, oldY:I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1375
    .local v12, x:I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1377
    .local v13, y:I
    if-ne v3, v12, :cond_2

    if-eq v4, v13, :cond_4

    .line 1378
    :cond_2
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1380
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1382
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v11

    .line 1383
    .local v11, range:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v10

    .line 1384
    .local v10, overscrollMode:I
    if-eqz v10, :cond_3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    if-lez v11, :cond_4

    .line 1386
    :cond_3
    if-gez v13, :cond_5

    if-ltz v4, :cond_5

    .line 1387
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 1393
    .end local v10           #overscrollMode:I
    .end local v11           #range:I
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1396
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidate()V

    goto :goto_0

    .line 1388
    .restart local v10       #overscrollMode:I
    .restart local v11       #range:I
    :cond_5
    if-le v13, v11, :cond_4

    if-gt v4, v11, :cond_4

    .line 1389
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

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

    .line 1448
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    .line 1505
    :goto_0
    return v7

    .line 1451
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 1452
    .local v3, height:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 1453
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1455
    .local v4, screenBottom:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1458
    .local v2, fadingEdge:I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_1

    .line 1459
    add-int/2addr v5, v2

    .line 1464
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1465
    sub-int/2addr v4, v2

    .line 1468
    :cond_2
    const/4 v6, 0x0

    .line 1470
    .local v6, scrollYDelta:I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v5, :cond_5

    .line 1475
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_4

    .line 1477
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    add-int/2addr v6, v7

    .line 1484
    :goto_1
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1485
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1486
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_3
    :goto_2
    move v7, v6

    .line 1505
    goto :goto_0

    .line 1480
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_1

    .line 1488
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_3

    .line 1493
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1495
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1503
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    .line 1498
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_3
.end method

.method protected computeVerticalScrollExtent()I
    .locals 4

    .prologue
    .line 1218
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    .line 1220
    .local v0, extent:I
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    if-eqz v2, :cond_1

    .line 1221
    iget-object v2, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v2, v2, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1222
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v3, v3, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1224
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 1226
    .end local v1           #ratio:F
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1228
    :goto_0
    return v2

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1234
    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1236
    .local v2, offset:I
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    .line 1237
    iget-object v5, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v3, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1238
    .local v3, savedBounceExtent:F
    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollExtent()I

    move-result v4

    .line 1239
    .local v4, shrinkedScrollExtent:I
    iget-object v5, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iput v7, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1240
    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollExtent()I

    move-result v1

    .line 1241
    .local v1, normalScrollExtent:I
    iget-object v5, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iput v3, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 1243
    sub-int v0, v1, v4

    .line 1245
    .local v0, delta:I
    add-int/2addr v2, v0

    .line 1247
    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v3           #savedBounceExtent:F
    .end local v4           #shrinkedScrollExtent:I
    :cond_0
    return v2
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1199
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 1200
    .local v1, count:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1201
    .local v0, contentHeight:I
    if-nez v1, :cond_0

    move v5, v0

    .line 1214
    :goto_0
    return v5

    .line 1205
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1206
    .local v3, scrollRange:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1207
    .local v4, scrollY:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1208
    .local v2, overscrollBottom:I
    if-gez v4, :cond_2

    .line 1209
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v5, v3

    .line 1214
    goto :goto_0

    .line 1210
    :cond_2
    if-le v4, v2, :cond_1

    .line 1211
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 1688
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1690
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_1

    .line 1691
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v1

    .line 1692
    .local v1, overscrollMode:I
    if-eqz v1, :cond_0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    if-lez v5, :cond_1

    .line 1694
    :cond_0
    iget-object v5, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_8

    .line 1695
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v6, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v6}, Landroid/widget/BounceController;->getBounceExtentRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull2(F)V

    .line 1702
    .end local v1           #overscrollMode:I
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v5, :cond_7

    .line 1703
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 1704
    .local v3, scrollY:I
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1705
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1706
    .local v2, restoreCount:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    .line 1709
    .local v4, width:I
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_2

    .line 1713
    :cond_2
    neg-int v5, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1716
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 1717
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1718
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1720
    :cond_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1722
    .end local v2           #restoreCount:I
    .end local v4           #width:I
    :cond_4
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1723
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1724
    .restart local v2       #restoreCount:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    .line 1725
    .restart local v4       #width:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 1727
    .local v0, height:I
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_5

    .line 1731
    :cond_5
    neg-int v5, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1733
    const/high16 v5, 0x4334

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1734
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6, v0}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 1735
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1736
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1738
    :cond_6
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1741
    .end local v0           #height:I
    .end local v2           #restoreCount:I
    .end local v3           #scrollY:I
    .end local v4           #width:I
    :cond_7
    return-void

    .line 1696
    .restart local v1       #overscrollMode:I
    :cond_8
    iget-object v5, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_1

    .line 1697
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget-object v6, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

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

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 396
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 398
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 399
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 400
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 402
    const/4 v0, 0x0

    .line 403
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 405
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 434
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v3, v6

    .line 405
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v3, v6

    .line 408
    goto :goto_0

    .line 411
    :cond_3
    const/4 v1, 0x0

    .line 412
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 413
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 434
    goto :goto_0

    .line 415
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 416
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 418
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 420
    goto :goto_1

    .line 422
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 423
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 425
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 427
    goto :goto_1

    .line 429
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_7
    move v3, v5

    goto :goto_2

    .line 413
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 15
    .parameter "velocityY"

    .prologue
    .line 1622
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1623
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 1624
    .local v12, height:I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1626
    .local v11, bottom:I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    sub-int v8, v11, v12

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v9, 0x0

    div-int/lit8 v10, v12, 0x2

    move/from16 v4, p1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1629
    if-lez p1, :cond_3

    const/4 v0, 0x1

    move v13, v0

    .line 1631
    .local v13, movingDown:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v13, v0, v1}, Landroid/widget/ScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 1633
    .local v14, newFocused:Landroid/view/View;
    if-nez v14, :cond_0

    .line 1634
    move-object v14, p0

    .line 1637
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v14, v0, :cond_1

    if-eqz v13, :cond_4

    const/16 v0, 0x82

    :goto_1
    invoke-virtual {v14, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1639
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mScrollViewMovedFocus:Z

    .line 1640
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mScrollViewMovedFocus:Z

    .line 1643
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1645
    .end local v11           #bottom:I
    .end local v12           #height:I
    .end local v13           #movingDown:Z
    .end local v14           #newFocused:Landroid/view/View;
    :cond_2
    return-void

    .line 1629
    .restart local v11       #bottom:I
    .restart local v12       #height:I
    :cond_3
    const/4 v0, 0x0

    move v13, v0

    goto :goto_0

    .line 1637
    .restart local v13       #movingDown:Z
    .restart local v14       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v0, 0x21

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 995
    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    move v1, v6

    .line 996
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 998
    .local v2, height:I
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 999
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1001
    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1003
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1004
    sub-int v4, v0, v6

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1005
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1006
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1010
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v5

    .line 995
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 193
    const/4 v3, 0x0

    .line 203
    :goto_0
    return v3

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 197
    .local v1, length:I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 198
    .local v0, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 199
    .local v2, span:I
    if-ge v2, v1, :cond_1

    .line 200
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 203
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public getBounce()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 211
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const/4 v1, 0x0

    .line 187
    :goto_0
    return v1

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 183
    .local v0, length:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 184
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 187
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1252
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1257
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1260
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1262
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1263
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
    .line 1268
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1270
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1272
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1275
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1276
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 460
    .local v7, action:I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 542
    :goto_0
    return v0

    .line 464
    :cond_0
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_0

    .line 542
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 476
    :pswitch_1
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 477
    .local v8, activePointerId:I
    if-eq v8, v1, :cond_1

    .line 483
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 487
    .local v9, pointerIndex:I
    if-gez v9, :cond_2

    move v0, v2

    .line 488
    goto :goto_0

    .line 490
    :cond_2
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 491
    .local v10, y:F
    iget v0, p0, Landroid/widget/ScrollView;->mLastMotionY:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v11, v0

    .line 492
    .local v11, yDiff:I
    iget v0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v11, v0, :cond_1

    .line 493
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 494
    iput v10, p0, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 495
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 502
    .end local v8           #activePointerId:I
    .end local v9           #pointerIndex:I
    .end local v10           #y:F
    .end local v11           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 503
    .restart local v10       #y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    float-to-int v1, v10

    invoke-direct {p0, v0, v1}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 504
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 512
    :cond_3
    iput v10, p0, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 513
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 520
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    .line 527
    .end local v10           #y:F
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 528
    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 529
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_1

    .line 534
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 464
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
    .line 1570
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1571
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1573
    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1576
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1579
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1580
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 354
    iget-boolean v6, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 359
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 363
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 364
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    .line 366
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 367
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 371
    .local v2, childWidthMeasureSpec:I
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 372
    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 373
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 376
    .local v1, childHeightMeasureSpec:I
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

    .line 802
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 803
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 804
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 805
    if-eqz p4, :cond_0

    .line 806
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 811
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 812
    return-void

    .line 809
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

    .line 1533
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1534
    const/16 p1, 0x82

    .line 1539
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1543
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    move v1, v3

    .line 1551
    :goto_2
    return v1

    .line 1535
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1536
    const/16 p1, 0x21

    goto :goto_0

    .line 1539
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 1547
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 1548
    goto :goto_2

    .line 1551
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1584
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1586
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1587
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1593
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1594
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1595
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1596
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1597
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 41
    .parameter "ev"

    .prologue
    .line 548
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    if-eqz v5, :cond_0

    .line 552
    const/4 v5, 0x0

    .line 780
    :goto_0
    return v5

    .line 555
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 556
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 558
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v26

    .line 562
    .local v26, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_2

    const/4 v5, 0x3

    move/from16 v0, v26

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 567
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 569
    const/4 v5, 0x1

    goto :goto_0

    .line 572
    :cond_3
    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 780
    :cond_4
    :goto_1
    :pswitch_0
    const/4 v5, 0x1

    goto :goto_0

    .line 574
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 575
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-nez v5, :cond_6

    .line 576
    const/4 v5, 0x0

    goto :goto_0

    .line 574
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 583
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_7

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 588
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 589
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 594
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    move v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    invoke-interface {v5}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease2()V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease2()V

    goto :goto_1

    .line 608
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 610
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move v5, v0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v27

    .line 612
    .local v27, activePointerIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    move v5, v0

    if-eqz v5, :cond_12

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    if-eqz v5, :cond_8

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    move-object v5, v0

    invoke-interface {v5}, Landroid/widget/BounceController$BounceRunnable;->cancel()V

    .line 618
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v40

    .line 619
    .local v40, y:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mLastMotionY:F

    move v5, v0

    sub-float v5, v5, v40

    float-to-int v7, v5

    .line 620
    .local v7, deltaY:I
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v35, v0

    .line 622
    .local v35, prevBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v38

    .line 623
    .local v38, scrollY:I
    const/16 v30, 0x0

    .line 624
    .local v30, delta:I
    const/16 v37, 0x0

    .line 626
    .local v37, scroll:I
    move/from16 v30, v7

    .line 627
    move/from16 v37, v38

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v30

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 634
    .end local v7           #deltaY:I
    const/16 v30, 0x0

    .line 635
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 636
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 638
    .restart local v7       #deltaY:I
    :cond_9
    move/from16 v0, v30

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v6, v0

    iget v6, v6, Landroid/widget/BounceController;->mBounceExtent:F

    sub-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v30, v0

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 644
    :cond_a
    if-gez v30, :cond_b

    .line 645
    if-lez v37, :cond_f

    .line 646
    add-int v5, v37, v30

    if-gez v5, :cond_e

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    add-int v6, v37, v30

    neg-int v6, v6

    int-to-float v6, v6

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 649
    const/4 v5, 0x0

    move/from16 v0, v37

    neg-int v0, v0

    move v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 663
    :cond_b
    :goto_3
    if-lez v30, :cond_c

    .line 664
    const/16 v29, 0x0

    .line 665
    .local v29, bottomEdge:I
    const/16 v28, 0x0

    .line 666
    .local v28, availableToScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v6

    sub-int v29, v5, v6

    .line 667
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v5, v5, v37

    sub-int v28, v5, v29

    .line 669
    if-lez v28, :cond_11

    .line 671
    move/from16 v0, v28

    move/from16 v1, v30

    if-le v0, v1, :cond_10

    .line 673
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 687
    .end local v28           #availableToScroll:I
    .end local v29           #bottomEdge:I
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    move v5, v0

    if-nez v5, :cond_d

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 689
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v5, v5, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v5, v5, v35

    if-eqz v5, :cond_4

    .line 690
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 653
    :cond_e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_3

    .line 656
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v30

    int-to-float v0, v0

    move v8, v0

    sub-float/2addr v6, v8

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_3

    .line 676
    .restart local v28       #availableToScroll:I
    .restart local v29       #bottomEdge:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    sub-int v6, v30, v28

    int-to-float v6, v6

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 678
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_4

    .line 682
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    move-object v5, v0

    iget v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    move/from16 v0, v30

    int-to-float v0, v0

    move v8, v0

    sub-float/2addr v6, v8

    iput v6, v5, Landroid/widget/BounceController;->mBounceExtent:F

    .line 684
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_4

    .line 692
    .end local v7           #deltaY:I
    .end local v28           #availableToScroll:I
    .end local v29           #bottomEdge:I
    .end local v30           #delta:I
    .end local v35           #prevBounceExtent:F
    .end local v37           #scroll:I
    .end local v38           #scrollY:I
    .end local v40           #y:F
    :cond_12
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v40

    .line 693
    .restart local v40       #y:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mLastMotionY:F

    move v5, v0

    sub-float v5, v5, v40

    float-to-int v7, v5

    .line 694
    .restart local v7       #deltaY:I
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mLastMotionY:F

    .line 696
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v32, v0

    .line 697
    .local v32, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v33, v0

    .line 698
    .local v33, oldY:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v11

    .line 699
    .local v11, range:I
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    move v13, v0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 704
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 706
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v34

    .line 707
    .local v34, overscrollMode:I
    if-eqz v34, :cond_14

    const/4 v5, 0x1

    move/from16 v0, v34

    move v1, v5

    if-ne v0, v1, :cond_4

    if-lez v11, :cond_4

    .line 709
    :cond_14
    add-int v36, v33, v7

    .line 710
    .local v36, pulledToY:I
    if-gez v36, :cond_17

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    int-to-float v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_15

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 721
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4

    .line 723
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto/16 :goto_1

    .line 715
    :cond_17
    move/from16 v0, v36

    move v1, v11

    if-le v0, v1, :cond_15

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v5, v0

    int-to-float v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v5

    if-nez v5, :cond_15

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_5

    .line 730
    .end local v7           #deltaY:I
    .end local v11           #range:I
    .end local v27           #activePointerIndex:I
    .end local v32           #oldX:I
    .end local v33           #oldY:I
    .end local v34           #overscrollMode:I
    .end local v36           #pulledToY:I
    .end local v40           #y:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    .line 732
    .local v39, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, v39

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 733
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move v5, v0

    move-object/from16 v0, v39

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v31, v0

    .line 735
    .local v31, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_18

    .line 736
    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    move v6, v0

    if-le v5, v6, :cond_1a

    .line 737
    move/from16 v0, v31

    neg-int v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fling(I)V

    .line 746
    :cond_18
    :goto_6
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 747
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-eqz v5, :cond_19

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 751
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 753
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    goto/16 :goto_1

    .line 739
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v18

    .line 740
    .local v18, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 741
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_6

    .line 760
    .end local v18           #bottom:I
    .end local v31           #initialVelocity:I
    .end local v39           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    move v5, v0

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v25

    invoke-virtual/range {v19 .. v25}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 764
    :cond_1b
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 765
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-eqz v5, :cond_1c

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 768
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 770
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EdgeGlow;->onRelease()V

    goto/16 :goto_1

    .line 777
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 572
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
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 958
    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    move v1, v7

    .line 959
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 961
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 962
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 963
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 964
    .local v0, count:I
    if-lez v0, :cond_0

    .line 965
    sub-int v4, v0, v7

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 966
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 967
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 976
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 978
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v6

    .line 958
    goto :goto_0

    .line 971
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 972
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_0

    .line 973
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1510
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1511
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1512
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1519
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1520
    return-void

    .line 1516
    :cond_1
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1557
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

    .line 1559
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1564
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1565
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1566
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1655
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1656
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1657
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 1658
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 1659
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1660
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1663
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setEnableBounce(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 254
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mBounceEnabled:Z

    .line 255
    iget-object v0, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v0, p1}, Landroid/widget/BounceController;->setEnableBounce(Z)V

    .line 257
    iget-object v0, p0, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0, v1, v2}, Landroid/widget/BounceController;->setEdgeGlows(Landroid/widget/EdgeGlow;Landroid/widget/EdgeGlow;)V

    .line 259
    :cond_0
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 327
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 328
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 329
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 331
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 1667
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 1668
    iget-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-nez v3, :cond_0

    .line 1669
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1670
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1080258

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1671
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080259

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1672
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1673
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1676
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->setEnableBounce(Z)V

    .line 1683
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1684
    return-void

    .line 1678
    :cond_1
    iput-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1679
    iput-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1681
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->setEnableBounce(Z)V

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 347
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 348
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1158
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1179
    :goto_0
    return-void

    .line 1162
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 1163
    .local v1, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 1164
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1165
    .local v3, height:I
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1166
    .local v0, bottom:I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1167
    .local v4, maxY:I
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 1168
    .local v5, scrollY:I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1170
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1171
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1178
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #maxY:I
    .end local v5           #scrollY:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_0

    .line 1173
    :cond_1
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1174
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1176
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1188
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1189
    return-void
.end method
