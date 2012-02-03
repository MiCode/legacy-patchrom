.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$LayoutParams;,
        Landroid/widget/Gallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 178
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 182
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput v6, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 79
    const/16 v5, 0x190

    iput v5, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 116
    new-instance v5, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 122
    new-instance v5, Landroid/widget/Gallery$1;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 146
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 151
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 184
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 185
    iget-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 187
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 190
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 191
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 192
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setGravity(I)V

    .line 195
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 197
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 198
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 201
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 203
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 205
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 207
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 209
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 215
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 216
    return-void
.end method

.method static synthetic access$002(Landroid/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/Gallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/Gallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/Gallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 817
    if-eqz p2, :cond_0

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    move v3, v4

    .line 818
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move v1, v4

    .line 820
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 822
    .local v2, childTop:I
    iget v4, p0, Landroid/widget/Gallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 835
    :goto_2
    return v2

    .line 817
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->getHeight()I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 818
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    move v1, v4

    goto :goto_1

    .line 824
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 825
    goto :goto_2

    .line 827
    :sswitch_1
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 829
    .local v0, availableSpace:I
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 830
    goto :goto_2

    .line 832
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 822
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10
    .parameter "toLeft"

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v6

    .line 455
    .local v6, numChildren:I
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 456
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 457
    .local v7, start:I
    const/4 v1, 0x0

    .line 459
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 460
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 461
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 462
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 463
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 484
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v7, v1}, Landroid/widget/Gallery;->detachViewsFromParent(II)V

    .line 486
    if-eqz p1, :cond_1

    .line 487
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 489
    :cond_1
    return-void

    .line 466
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 467
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 461
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 471
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 472
    .local v4, galleryRight:I
    const/4 v8, 0x1

    sub-int v5, v6, v8

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 473
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 474
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 477
    move v7, v5

    .line 478
    add-int/lit8 v1, v1, 0x1

    .line 479
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 472
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1071
    const/4 v6, 0x0

    .line 1073
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1078
    :cond_0
    if-nez v6, :cond_1

    .line 1079
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1080
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1083
    :cond_1
    if-eqz v6, :cond_2

    .line 1084
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 1087
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1007
    if-eqz p1, :cond_0

    .line 1008
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1011
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1012
    return-void
.end method

.method private dispatchUnpress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1016
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1017
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1016
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1020
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1021
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 648
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 649
    .local v3, itemSpacing:I
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 652
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 656
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 657
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v5, v8

    .line 658
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 666
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 667
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 671
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 674
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 675
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 661
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_0
    const/4 v0, 0x0

    .line 662
    .restart local v0       #curPosition:I
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 663
    .restart local v1       #curRightEdge:I
    iput-boolean v8, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 677
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 680
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 681
    .local v3, itemSpacing:I
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 682
    .local v2, galleryRight:I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v4

    .line 683
    .local v4, numChildren:I
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 686
    .local v5, numItems:I
    sub-int v7, v4, v9

    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 690
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 691
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 692
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 699
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 700
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 704
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int v1, v7, v9

    .restart local v1       #curPosition:I
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 695
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 696
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 707
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 444
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 729
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 730
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 731
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 736
    .local v2, childLeft:I
    iget v3, p0, Landroid/widget/Gallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 738
    iget v3, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 741
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 753
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 748
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 751
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 753
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 428
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 429
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 428
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 431
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 515
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 517
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 518
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    .line 497
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 500
    .local v1, selectedCenter:I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    .line 502
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 503
    .local v0, scrollAmount:I
    if-eqz v0, :cond_2

    .line 504
    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 506
    :cond_2
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4
    .parameter "childPosition"

    .prologue
    .line 1176
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1178
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1179
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1180
    .local v1, distance:I
    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 1181
    const/4 v2, 0x1

    .line 1184
    .end local v1           #distance:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 533
    iget-object v7, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 534
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v3

    .line 539
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 544
    :cond_2
    const v2, 0x7fffffff

    .line 545
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 546
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int v4, v8, v9

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 548
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 550
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 552
    move v6, v4

    .line 564
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 566
    .local v5, newPos:I
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 567
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 568
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 569
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    goto :goto_0

    .line 556
    .end local v5           #newPos:I
    .restart local v0       #child:Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 558
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 559
    move v2, v1

    .line 560
    move v6, v4

    .line 546
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 772
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 774
    .local v6, lp:Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 775
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 778
    .restart local v6       #lp:Landroid/widget/Gallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Landroid/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 780
    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 783
    iget v8, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 785
    .local v1, childHeightSpec:I
    iget v8, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 789
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 795
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 796
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 798
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 799
    .local v7, width:I
    if-eqz p4, :cond_3

    .line 800
    move v2, p3

    .line 801
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 807
    .local v3, childRight:I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 808
    return-void

    .line 778
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 780
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 803
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_3
    sub-int v2, p3, v7

    .line 804
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1197
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1199
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1200
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1205
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1207
    invoke-virtual {p0}, Landroid/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1208
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1213
    :cond_2
    if-eqz v1, :cond_0

    .line 1216
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1220
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 308
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1093
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1036
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1039
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1030
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 326
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 318
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 313
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1241
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1244
    .local v0, selectedIndex:I
    if-gez v0, :cond_0

    move v1, p2

    .line 1254
    :goto_0
    return v1

    .line 1246
    :cond_0
    const/4 v1, 0x1

    sub-int v1, p1, v1

    if-ne p2, v1, :cond_1

    move v1, v0

    .line 1248
    goto :goto_0

    .line 1249
    :cond_1
    if-lt p2, v0, :cond_2

    .line 1251
    add-int/lit8 v1, p2, 0x1

    goto :goto_0

    :cond_2
    move v1, p2

    .line 1254
    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 282
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 283
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 285
    const/4 v0, 0x1

    return v0

    .line 283
    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v7, 0x0

    .line 390
    if-eqz p1, :cond_0

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v3, v5

    .line 391
    .local v3, extremeItemPosition:I
    :goto_0
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 393
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_1

    move v5, p2

    .line 416
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_0
    move v3, v7

    .line 390
    goto :goto_0

    .line 397
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_1
    invoke-static {v1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 398
    .local v2, extremeChildCenter:I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v4

    .line 400
    .local v4, galleryCenter:I
    if-eqz p1, :cond_2

    .line 401
    if-gt v2, v4, :cond_3

    move v5, v7

    .line 404
    goto :goto_1

    .line 407
    :cond_2
    if-lt v2, v4, :cond_3

    move v5, v7

    .line 410
    goto :goto_1

    .line 414
    :cond_3
    sub-int v0, v4, v2

    .line 416
    .local v0, centerDifference:I
    if-eqz p1, :cond_4

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method layout(IZ)V
    .locals 7
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 586
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 587
    .local v0, childrenLeft:I
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 589
    .local v1, childrenWidth:I
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 590
    invoke-virtual {p0}, Landroid/widget/Gallery;->handleDataChanged()V

    .line 594
    :cond_0
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v4, :cond_1

    .line 595
    invoke-virtual {p0}, Landroid/widget/Gallery;->resetList()V

    .line 645
    :goto_0
    return-void

    .line 600
    :cond_1
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 601
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 605
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Gallery;->recycleAllViews()V

    .line 609
    invoke-virtual {p0}, Landroid/widget/Gallery;->detachAllViewsFromParent()V

    .line 615
    iput v6, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 616
    iput v6, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 624
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 625
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 628
    .local v2, sel:Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 629
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 631
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 632
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 635
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 637
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 638
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    .line 640
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 641
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 642
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 644
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1167
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1168
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move v0, v2

    .line 1171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1158
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1159
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move v0, v2

    .line 1162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 978
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 979
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 945
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 948
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 950
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 951
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 952
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 956
    :cond_0
    iput-boolean v2, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 959
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 882
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 889
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 893
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 895
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1260
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1267
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1271
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1102
    sparse-switch p1, :sswitch_data_0

    .line 1122
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 1105
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->movePrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->playSoundEffect(I)V

    :cond_0
    move v0, v1

    .line 1108
    goto :goto_1

    .line 1111
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->moveNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1112
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->playSoundEffect(I)V

    :cond_1
    move v0, v1

    .line 1114
    goto :goto_1

    .line 1118
    :sswitch_2
    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1102
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1127
    sparse-switch p1, :sswitch_data_0

    .line 1154
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1131
    :sswitch_0
    iget-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1132
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    .line 1134
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 1135
    new-instance v1, Landroid/widget/Gallery$2;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1141
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1142
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1148
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 1150
    const/4 v1, 0x1

    goto :goto_0

    .line 1127
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 339
    invoke-virtual {p0, v1, v1}, Landroid/widget/Gallery;->layout(IZ)V

    .line 340
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 341
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 986
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 993
    :goto_0
    return-void

    .line 990
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 991
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 992
    .local v0, id:J
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 914
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 918
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 919
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 925
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 933
    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 935
    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 936
    return v3

    .line 929
    :cond_2
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1001
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 860
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 863
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 866
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 867
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 871
    :cond_1
    const/4 v0, 0x1

    .line 874
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 842
    iget-object v2, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 844
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 845
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 847
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 852
    :cond_0
    :goto_0
    return v1

    .line 848
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 849
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #getter for: Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    .line 971
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    .line 972
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 523
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 525
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 254
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 255
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 228
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 229
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 241
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 242
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1233
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1234
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    .line 1235
    invoke-virtual {p0}, Landroid/widget/Gallery;->requestLayout()V

    .line 1237
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1189
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1192
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1193
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 265
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 266
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 276
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    .line 277
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1061
    invoke-virtual {p0}, Landroid/widget/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1062
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1063
    .local v0, index:I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1064
    .local v1, v:Landroid/view/View;
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1067
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 1049
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1050
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1051
    const/4 v3, 0x0

    .line 1055
    :goto_0
    return v3

    .line 1054
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1055
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v3, 0x0

    .line 356
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 387
    :goto_0
    return-void

    .line 360
    :cond_0
    if-gez p1, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .line 362
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 363
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_1

    .line 365
    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #calls: Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v2, v3}, Landroid/widget/Gallery$FlingRunnable;->access$100(Landroid/widget/Gallery$FlingRunnable;Z)V

    .line 366
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 369
    :cond_1
    invoke-direct {p0, v0}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 371
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 373
    if-eqz v1, :cond_3

    .line 375
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 382
    :goto_2
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 384
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    .line 386
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_2
    move v1, v3

    .line 360
    goto :goto_1

    .line 378
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_3
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    goto :goto_2
.end method
