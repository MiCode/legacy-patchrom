.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mStretchMode:I

    iput-object v2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v2, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/GridView;->mGravity:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v8, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v7, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    iput v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    iput v9, p0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    iput v11, p0, Landroid/widget/GridView;->mGravity:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .local v3, index:I
    if-ltz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .local v1, columnWidth:I
    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setGravity(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, offset:I
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .local v1, childCount:I
    if-lez v1, :cond_2

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .local v2, delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    :cond_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    :cond_4
    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x82

    const/16 v4, 0x21

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    move v2, v6

    :goto_0
    return v2

    :cond_0
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    :cond_1
    const/4 v1, 0x0

    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .local v0, action:I
    if-eq v0, v3, :cond_3

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v2, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    sparse-switch p1, :sswitch_data_1

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelection()Z

    move v2, v3

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_2
    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    :cond_7
    move v2, v3

    goto :goto_0

    :sswitch_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_a
    packed-switch v0, :pswitch_data_0

    move v2, v6

    goto/16 :goto_0

    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 10
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    const/4 v9, 0x1

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, p3

    sub-int v6, v7, v9

    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_2

    if-lez p3, :cond_2

    sub-int v7, p3, v9

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .local v4, lastBottom:I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .local v1, end:I
    sub-int v0, v1, v4

    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v8, :cond_3

    move v8, v9

    :goto_0
    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void

    .restart local v0       #bottomOffset:I
    .restart local v1       #end:I
    .restart local v2       #firstChild:Landroid/view/View;
    .restart local v3       #firstTop:I
    .restart local v4       #lastBottom:I
    .restart local v5       #lastChild:Landroid/view/View;
    :cond_3
    move v8, p1

    goto :goto_0
.end method

.method private correctTooLow(III)V
    .locals 11
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    const/4 v10, 0x1

    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p3, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .local v6, start:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .local v0, end:I
    sub-int v7, v2, v6

    .local v7, topOffset:I
    sub-int v8, p3, v10

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p3

    sub-int v5, v8, v10

    .local v5, lastPosition:I
    if-lez v7, :cond_2

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_2

    :cond_0
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_1

    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ge v5, v8, :cond_2

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_3

    move v8, v10

    :goto_0
    add-int/2addr v8, v5

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    return-void

    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    move v8, p1

    goto :goto_0
.end method

.method private determineColumns(I)V
    .locals 7
    .parameter "availableSpace"

    .prologue
    const/4 v6, 0x1

    iget v1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .local v1, requestedHorizontalSpacing:I
    iget v3, p0, Landroid/widget/GridView;->mStretchMode:I

    .local v3, stretchMode:I
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .local v0, requestedColumnWidth:I
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    if-lez v0, :cond_1

    add-int v4, p1, v1

    add-int v5, v0, v1

    div-int/2addr v4, v5

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    :goto_0
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    if-gtz v4, :cond_0

    iput v6, p0, Landroid/widget/GridView;->mNumColumns:I

    :cond_0
    packed-switch v3, :pswitch_data_0

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v5, v6

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    .local v2, spaceLeftOver:I
    packed-switch v3, :pswitch_data_1

    .end local v2           #spaceLeftOver:I
    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    :cond_2
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    :pswitch_0
    iput v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .restart local v2       #spaceLeftOver:I
    :pswitch_1
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v4, v2, v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/widget/GridView;->mColumnWidth:I

    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_2
    iput v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v4, v6, :cond_3

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v4, v6

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_3
    add-int v4, v1, v2

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_3
    iput v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v4, v6, :cond_4

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v4, v4, 0x1

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_4
    add-int v4, v1, v2

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v1, 0x0

    .local v1, selectedView:Landroid/view/View;
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .local v0, end:I
    :goto_0
    if-ge p2, v0, :cond_1

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v3, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    goto :goto_0

    .end local v2           #temp:Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .parameter "lastPosition"
    .parameter "nextBottom"

    .prologue
    const/4 v2, 0x1

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v2

    sub-int v0, v1, p1

    .local v0, invertedPosition:I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 18
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .local v6, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v13, v0

    .local v13, selectedPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v8, v0

    .local v8, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move v15, v0

    .local v15, verticalSpacing:I
    const/4 v10, -0x1

    .local v10, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    rem-int v16, v13, v8

    sub-int v11, v13, v16

    .local v11, rowStart:I
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v14

    .local v14, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v6

    move v3, v8

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v5

    .local v5, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move/from16 v16, v10

    :goto_1
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p1

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v12

    .local v12, sel:Landroid/view/View;
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v9, v0

    .local v9, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v14

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v14

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    sub-int v16, v11, v8

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v16, v11, v8

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v17

    add-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    :goto_2
    return-object v12

    .end local v5           #bottomSelectionPixel:I
    .end local v9           #referenceView:Landroid/view/View;
    .end local v11           #rowStart:I
    .end local v12           #sel:Landroid/view/View;
    .end local v14           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    sub-int v7, v16, v13

    .local v7, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    rem-int v17, v7, v8

    sub-int v17, v7, v17

    sub-int v10, v16, v17

    const/16 v16, 0x0

    sub-int v17, v10, v8

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v11

    .restart local v11       #rowStart:I
    goto/16 :goto_0

    .end local v7           #invertedSelection:I
    .restart local v5       #bottomSelectionPixel:I
    .restart local v14       #topSelectionPixel:I
    :cond_1
    move/from16 v16, v11

    goto :goto_1

    .restart local v9       #referenceView:Landroid/view/View;
    .restart local v12       #sel:Landroid/view/View;
    :cond_2
    add-int v16, v10, v8

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v17

    add-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    const/16 v16, 0x1

    sub-int v16, v11, v16

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 19
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v14

    .local v14, selectedPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v8, v0

    .local v8, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v16, v0

    .local v16, verticalSpacing:I
    const/4 v11, -0x1

    .local v11, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    rem-int v17, v14, v8

    sub-int v12, v14, v17

    .local v12, rowStart:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .local v6, fadingEdgeLength:I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v6

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v15

    .local v15, topSelectionPixel:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move/from16 v17, v11

    :goto_1
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v13

    .local v13, sel:Landroid/view/View;
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v10, v0

    .local v10, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    add-int v17, v12, v8

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v18

    add-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/GridView;->pinToBottom(I)V

    sub-int v17, v12, v8

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :goto_2
    return-object v13

    .end local v6           #fadingEdgeLength:I
    .end local v10           #referenceView:Landroid/view/View;
    .end local v12           #rowStart:I
    .end local v13           #sel:Landroid/view/View;
    .end local v15           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    sub-int v7, v17, v14

    .local v7, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    rem-int v18, v7, v8

    sub-int v18, v7, v18

    sub-int v11, v17, v18

    const/16 v17, 0x0

    sub-int v18, v11, v8

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v12

    .restart local v12       #rowStart:I
    goto/16 :goto_0

    .end local v7           #invertedSelection:I
    .restart local v6       #fadingEdgeLength:I
    .restart local v15       #topSelectionPixel:I
    :cond_1
    move/from16 v17, v12

    goto :goto_1

    .restart local v10       #referenceView:Landroid/view/View;
    .restart local v13       #sel:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    move v3, v8

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v5

    .local v5, bottomSelectionPixel:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v17

    sub-int v9, v5, v17

    .local v9, offset:I
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    const/16 v17, 0x1

    sub-int v17, v12, v17

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p1}, Landroid/widget/GridView;->pinToTop(I)V

    add-int v17, v11, v8

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v18

    add-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v12, 0x1

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v6, numColumns:I
    const/4 v4, -0x1

    .local v4, motionRowEnd:I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_0

    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .local v5, motionRowStart:I
    :goto_0
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_1

    move v10, v4

    :goto_1
    invoke-direct {p0, v10, p2, v12}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .local v8, temp:Landroid/view/View;
    iput v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .local v7, referenceView:Landroid/view/View;
    if-nez v7, :cond_2

    const/4 v10, 0x0

    :goto_2
    return-object v10

    .end local v5           #motionRowStart:I
    .end local v7           #referenceView:Landroid/view/View;
    .end local v8           #temp:Landroid/view/View;
    :cond_0
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v10, v12

    sub-int v3, v10, p1

    .local v3, invertedSelection:I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v10, v12

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #motionRowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    :cond_1
    move v10, v5

    goto :goto_1

    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    :cond_2
    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .local v9, verticalSpacing:I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_4

    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .local v0, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .local v1, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .local v2, childCount:I
    if-lez v2, :cond_3

    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    :cond_3
    :goto_3
    if-eqz v8, :cond_5

    move-object v10, v8

    goto :goto_2

    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v2           #childCount:I
    :cond_4
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .restart local v1       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    sub-int v10, v5, v12

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .restart local v0       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .restart local v2       #childCount:I
    if-lez v2, :cond_3

    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    move-object v10, v0

    goto :goto_2

    :cond_6
    move-object v10, v1

    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->isKeepChildrenInPadding()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v5

    .local v0, end:I
    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    invoke-direct {p0, p1, p2, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    goto :goto_0

    .end local v0           #end:I
    .end local v2           #temp:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move v0, v3

    goto :goto_0

    .restart local v0       #end:I
    :cond_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    :cond_3
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 4
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"

    .prologue
    const/4 v3, 0x1

    move v0, p1

    .local v0, bottomSelectionPixel:I
    add-int v1, p4, p3

    sub-int/2addr v1, v3

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    sub-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    move v0, p1

    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .local v0, count:I
    sub-int v4, v0, v6

    sub-int v1, v4, p1

    .local v1, invertedIndex:I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v4, :cond_0

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v4, p1, v4

    sub-int v3, p1, v4

    .local v3, rowStart:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, rowEnd:I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_0
    sub-int v4, v0, v6

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v5, v1, v5

    sub-int v5, v1, v5

    sub-int v2, v4, v5

    .restart local v2       #rowEnd:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_0

    :sswitch_0
    if-ne p1, v3, :cond_1

    move v4, v6

    :goto_1
    return v4

    :cond_1
    move v4, v7

    goto :goto_1

    :sswitch_1
    if-nez v3, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v7

    goto :goto_1

    :sswitch_2
    if-ne p1, v2, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v7

    goto :goto_1

    :sswitch_3
    sub-int v4, v0, v6

    if-ne v2, v4, :cond_4

    move v4, v6

    goto :goto_1

    :cond_4
    move v4, v7

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .end local v1           #child:Landroid/view/View;
    .local v9, child:Landroid/view/View;
    :goto_0
    return-object v9

    .end local v9           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .end local v1           #child:Landroid/view/View;
    .restart local v9       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 15
    .parameter "startPos"
    .parameter "y"
    .parameter "flow"

    .prologue
    iget v8, p0, Landroid/widget/GridView;->mColumnWidth:I

    .local v8, columnWidth:I
    iget v10, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .local v10, horizontalSpacing:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    move v1, v10

    :goto_0
    add-int v4, v0, v1

    .local v4, nextLeft:I
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int v0, v0, p1

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .local v12, last:I
    :cond_0
    :goto_1
    const/4 v14, 0x0

    .local v14, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v9

    .local v9, hasFocus:Z
    invoke-virtual {p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v11

    .local v11, inClick:Z
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .local v13, selectedPosition:I
    const/4 v7, 0x0

    .local v7, child:Landroid/view/View;
    move/from16 v1, p1

    .local v1, pos:I
    :goto_2
    if-ge v1, v12, :cond_8

    if-ne v1, v13, :cond_6

    const/4 v0, 0x1

    move v5, v0

    .local v5, selected:Z
    :goto_3
    if-eqz p3, :cond_7

    const/4 v0, -0x1

    move v6, v0

    .local v6, where:I
    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    add-int/2addr v4, v8

    const/4 v0, 0x1

    sub-int v0, v12, v0

    if-ge v1, v0, :cond_1

    add-int/2addr v4, v10

    :cond_1
    if-eqz v5, :cond_3

    if-nez v9, :cond_2

    if-eqz v11, :cond_3

    :cond_2
    move-object v14, v7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #pos:I
    .end local v4           #nextLeft:I
    .end local v5           #selected:Z
    .end local v6           #where:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #hasFocus:Z
    .end local v11           #inClick:Z
    .end local v12           #last:I
    .end local v13           #selectedPosition:I
    .end local v14           #selectedView:Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .restart local v4       #nextLeft:I
    :cond_5
    add-int/lit8 v12, p1, 0x1

    .restart local v12       #last:I
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v0, v12, p1

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v1, v12, p1

    sub-int/2addr v0, v1

    add-int v1, v8, v10

    mul-int/2addr v0, v1

    add-int/2addr v4, v0

    goto :goto_1

    .restart local v1       #pos:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v9       #hasFocus:Z
    .restart local v11       #inClick:Z
    .restart local v13       #selectedPosition:I
    .restart local v14       #selectedView:Landroid/view/View;
    :cond_6
    const/4 v0, 0x0

    move v5, v0

    goto :goto_3

    .restart local v5       #selected:Z
    :cond_7
    sub-int v0, v1, p1

    move v6, v0

    goto :goto_4

    .end local v5           #selected:Z
    :cond_8
    iput-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-eqz v14, :cond_9

    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    :cond_9
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 23
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .local v6, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    .local v17, selectedPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v8, v0

    .local v8, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v19, v0

    .local v19, verticalSpacing:I
    const/4 v14, -0x1

    .local v14, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    sub-int v20, v17, p1

    sub-int v21, v17, p1

    rem-int v21, v21, v8

    sub-int v10, v20, v21

    .local v10, oldRowStart:I
    rem-int v20, v17, v8

    sub-int v15, v17, v20

    .local v15, rowStart:I
    :goto_0
    sub-int v13, v15, v10

    .local v13, rowDelta:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v18

    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v6

    move v3, v8

    move v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v5

    .local v5, bottomSelectionPixel:I
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    const/16 v20, 0x0

    move/from16 v9, v20

    .local v9, oldBottom:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move/from16 v20, v14

    :goto_2
    add-int v21, v9, v19

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .local v16, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v12, v0

    .local v12, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v18

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .end local v9           #oldBottom:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    sub-int v20, v15, v8

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v20, v15, v8

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    :goto_4
    return-object v16

    .end local v5           #bottomSelectionPixel:I
    .end local v10           #oldRowStart:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v13           #rowDelta:I
    .end local v15           #rowStart:I
    .end local v16           #sel:Landroid/view/View;
    .end local v18           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    sub-int v7, v20, v17

    .local v7, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    rem-int v21, v7, v8

    sub-int v21, v7, v21

    sub-int v14, v20, v21

    const/16 v20, 0x0

    sub-int v21, v14, v8

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v15

    .restart local v15       #rowStart:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    sub-int v21, v17, p1

    sub-int v7, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    rem-int v21, v7, v8

    sub-int v21, v7, v21

    sub-int v10, v20, v21

    .restart local v10       #oldRowStart:I
    const/16 v20, 0x0

    sub-int v21, v10, v8

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_0

    .end local v7           #invertedSelection:I
    .restart local v5       #bottomSelectionPixel:I
    .restart local v13       #rowDelta:I
    .restart local v18       #topSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v20

    move/from16 v9, v20

    goto/16 :goto_1

    .restart local v9       #oldBottom:I
    :cond_2
    move/from16 v20, v15

    goto/16 :goto_2

    .end local v9           #oldBottom:I
    :cond_3
    if-gez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    const/16 v20, 0x0

    move/from16 v11, v20

    .local v11, oldTop:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move/from16 v20, v14

    :goto_6
    sub-int v21, v11, v19

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v12, v0

    .restart local v12       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v18

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .end local v11           #oldTop:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v16           #sel:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v11, v20

    goto :goto_5

    .restart local v11       #oldTop:I
    :cond_5
    move/from16 v20, v15

    goto :goto_6

    .end local v11           #oldTop:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    const/16 v20, 0x0

    move/from16 v11, v20

    .restart local v11       #oldTop:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move/from16 v20, v14

    :goto_8
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v11

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v12, v0

    .restart local v12       #referenceView:Landroid/view/View;
    goto/16 :goto_3

    .end local v11           #oldTop:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v16           #sel:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v11, v20

    goto :goto_7

    .restart local v11       #oldTop:I
    :cond_8
    move/from16 v20, v15

    goto :goto_8

    .end local v11           #oldTop:I
    .restart local v12       #referenceView:Landroid/view/View;
    .restart local v16       #sel:Landroid/view/View;
    :cond_9
    add-int v20, v14, v8

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    const/16 v20, 0x1

    sub-int v20, v15, v20

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .parameter "childrenBottom"

    .prologue
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .local v1, count:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .local v0, bottom:I
    sub-int v2, p1, v0

    .local v2, offset:I
    if-lez v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .parameter "childrenTop"

    .prologue
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .local v1, top:I
    sub-int v0, p1, v1

    .local v0, offset:I
    if-gez v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .end local v0           #offset:I
    .end local v1           #top:I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 23
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    if-eqz p6, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x1

    move/from16 v13, v20

    .local v13, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v20

    move v0, v13

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    const/16 v20, 0x1

    move/from16 v18, v20

    .local v18, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v14, v0

    .local v14, mode:I
    if-lez v14, :cond_7

    const/16 v20, 0x3

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    const/16 v20, 0x1

    move/from16 v12, v20

    .local v12, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v20

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v20, 0x1

    move/from16 v17, v20

    .local v17, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v20

    if-eqz v20, :cond_9

    :cond_0
    const/16 v20, 0x1

    move/from16 v15, v20

    .local v15, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .local v16, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_1

    new-instance v16, Landroid/widget/AbsListView$LayoutParams;

    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-eqz p7, :cond_a

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    if-eqz v18, :cond_2

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    :cond_2
    if-eqz v17, :cond_3

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    if-eqz v15, :cond_b

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x4000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .local v10, childWidthSpec:I
    move-object/from16 v0, p1

    move v1, v10

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .end local v6           #childHeightSpec:I
    .end local v10           #childWidthSpec:I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .local v19, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .local v11, h:I
    if-eqz p4, :cond_c

    move/from16 v9, p3

    .local v9, childTop:I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mGravity:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x7

    packed-switch v20, :pswitch_data_0

    :pswitch_0
    move/from16 v7, p5

    .local v7, childLeft:I
    :goto_8
    if-eqz v15, :cond_d

    add-int v8, v7, v19

    .local v8, childRight:I
    add-int v5, v9, v11

    .local v5, childBottom:I
    move-object/from16 v0, p1

    move v1, v7

    move v2, v9

    move v3, v8

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .end local v5           #childBottom:I
    .end local v8           #childRight:I
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_4
    return-void

    .end local v7           #childLeft:I
    .end local v9           #childTop:I
    .end local v11           #h:I
    .end local v12           #isPressed:Z
    .end local v13           #isSelected:Z
    .end local v14           #mode:I
    .end local v15           #needToMeasure:Z
    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v17           #updateChildPressed:Z
    .end local v18           #updateChildSelected:Z
    .end local v19           #w:I
    :cond_5
    const/16 v20, 0x0

    move/from16 v13, v20

    goto/16 :goto_0

    .restart local v13       #isSelected:Z
    :cond_6
    const/16 v20, 0x0

    move/from16 v18, v20

    goto/16 :goto_1

    .restart local v14       #mode:I
    .restart local v18       #updateChildSelected:Z
    :cond_7
    const/16 v20, 0x0

    move/from16 v12, v20

    goto/16 :goto_2

    .restart local v12       #isPressed:Z
    :cond_8
    const/16 v20, 0x0

    move/from16 v17, v20

    goto/16 :goto_3

    .restart local v17       #updateChildPressed:Z
    :cond_9
    const/16 v20, 0x0

    move/from16 v15, v20

    goto/16 :goto_4

    .restart local v15       #needToMeasure:Z
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v16

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_6

    .restart local v11       #h:I
    .restart local v19       #w:I
    :cond_c
    sub-int v20, p3, v11

    move/from16 v9, v20

    goto :goto_7

    .restart local v9       #childTop:I
    :pswitch_1
    move/from16 v7, p5

    .restart local v7       #childLeft:I
    goto :goto_8

    .end local v7           #childLeft:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v19

    div-int/lit8 v20, v20, 0x2

    add-int v7, p5, v20

    .restart local v7       #childLeft:I
    goto :goto_8

    .end local v7           #childLeft:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    add-int v20, v20, p5

    sub-int v7, v20, v19

    .restart local v7       #childLeft:I
    goto :goto_8

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v20, v7, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v9, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x1

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .local v4, selectedPosition:I
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v3, numColumns:I
    const/4 v2, 0x0

    .local v2, moved:Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    div-int v6, v4, v3

    mul-int v5, v6, v3

    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    sub-int/2addr v6, v8

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, endOfRowPos:I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_2
    return v2

    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_3
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v8

    sub-int v1, v6, v4

    .local v1, invertedSelection:I
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v8

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .restart local v0       #endOfRowPos:I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_0

    .end local v1           #invertedSelection:I
    :sswitch_0
    if-lez v5, :cond_0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    sub-int v6, v4, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v8

    if-ge v0, v6, :cond_0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    add-int v6, v4, v3

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    if-le v4, v5, :cond_0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    sub-int v6, v4, v8

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    if-ge v4, v0, :cond_0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 5
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_0
    return-void

    :cond_1
    sub-int v2, p4, v4

    sub-int v1, v2, p3

    .local v1, invertedIndex:I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v2, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    sub-int/2addr v2, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .local v1, count:I
    if-lez v1, :cond_2

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v4, numColumns:I
    add-int v8, v1, v4

    sub-int/2addr v8, v10

    div-int v5, v8, v4

    .local v5, rowCount:I
    mul-int/lit8 v2, v5, 0x64

    .local v2, extent:I
    invoke-virtual {p0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .local v3, height:I
    if-lez v3, :cond_0

    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    :cond_0
    sub-int v8, v1, v10

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    :cond_1
    move v8, v2

    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v5           #rowCount:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :goto_0
    return v8

    :cond_2
    move v8, v9

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .local v0, height:I
    if-lez v0, :cond_0

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v1, numColumns:I
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    div-int v5, v6, v1

    .local v5, whichRow:I
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/2addr v6, v1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    div-int v2, v6, v1

    .local v2, rowCount:I
    mul-int/lit8 v6, v5, 0x64

    mul-int/lit8 v7, v3, 0x64

    div-int/2addr v7, v0

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mScrollY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v2

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .end local v0           #height:I
    .end local v1           #numColumns:I
    .end local v2           #rowCount:I
    .end local v3           #top:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #whichRow:I
    :goto_0
    return v6

    :cond_0
    move v6, v9

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v0, numColumns:I
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int v2, v3, v0

    .local v2, rowCount:I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, result:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/view/View;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    return v1
.end method

.method fillGap(Z)V
    .locals 7
    .parameter "down"

    .prologue
    const/4 v6, 0x1

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v1, numColumns:I
    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .local v4, verticalSpacing:I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .local v0, count:I
    if-eqz p1, :cond_2

    if-lez v0, :cond_1

    sub-int v5, v0, v6

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v4

    move v3, v5

    .local v3, startOffset:I
    :goto_0
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v2, v5, v0

    .local v2, position:I
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_0

    sub-int v5, v1, v6

    add-int/2addr v2, v5

    :cond_0
    invoke-direct {p0, v2, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Landroid/widget/GridView;->correctTooHigh(III)V

    :goto_1
    return-void

    .end local v2           #position:I
    .end local v3           #startOffset:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v5

    move v3, v5

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v4

    move v3, v5

    .restart local v3       #startOffset:I
    :goto_2
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .restart local v2       #position:I
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v5, :cond_4

    sub-int/2addr v2, v1

    :goto_3
    invoke-direct {p0, v2, v3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_1

    .end local v2           #position:I
    .end local v3           #startOffset:I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    goto :goto_2

    .restart local v2       #position:I
    .restart local v3       #startOffset:I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    if-lez v0, :cond_3

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .local v2, numColumns:I
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1
    return v3

    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .end local v1           #i:I
    :cond_1
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_1
    return v0

    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 22

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    move v4, v0

    .local v4, blockLayoutRequests:Z
    if-nez v4, :cond_0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    :goto_0
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    :cond_1
    return-void

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    .local v8, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    .local v7, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    .local v6, childCount:I
    const/4 v10, 0x0

    .local v10, delta:I
    const/16 v17, 0x0

    .local v17, oldSel:Landroid/view/View;
    const/16 v16, 0x0

    .local v16, oldFirst:Landroid/view/View;
    const/4 v15, 0x0

    .local v15, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .local v13, index:I
    if-ltz v13, :cond_3

    if-ge v13, v6, :cond_3

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .end local v13           #index:I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v9, v0

    .local v9, dataChanged:Z
    if-eqz v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    if-nez v4, :cond_1

    goto :goto_0

    .end local v9           #dataChanged:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .restart local v13       #index:I
    if-ltz v13, :cond_4

    if-ge v13, v6, :cond_4

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    goto :goto_1

    .end local v13           #index:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v20, v0

    if-ltz v20, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v21, v0

    sub-int v10, v20, v21

    goto :goto_1

    .restart local v9       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v11, v0

    .local v11, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v18, v0

    .local v18, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-eqz v9, :cond_7

    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v6, :cond_8

    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .end local v12           #i:I
    :cond_7
    move-object/from16 v0, v18

    move v1, v6

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    if-nez v6, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v20

    if-eqz v20, :cond_e

    :cond_9
    const/16 v20, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v19

    .local v19, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->positionSelector(Landroid/view/View;)V

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    :cond_a
    :goto_5
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mNeedSync:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    if-lez v20, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    if-nez v4, :cond_1

    goto/16 :goto_0

    .end local v19           #sel:Landroid/view/View;
    :pswitch_3
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v8

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto :goto_4

    .end local v19           #sel:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto :goto_4

    .end local v19           #sel:Landroid/view/View;
    :pswitch_4
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .end local v6           #childCount:I
    .end local v7           #childrenBottom:I
    .end local v8           #childrenTop:I
    .end local v9           #dataChanged:Z
    .end local v10           #delta:I
    .end local v11           #firstPosition:I
    .end local v15           #newSel:Landroid/view/View;
    .end local v16           #oldFirst:Landroid/view/View;
    .end local v17           #oldSel:Landroid/view/View;
    .end local v18           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v19           #sel:Landroid/view/View;
    :catchall_0
    move-exception v20

    if-nez v4, :cond_d

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    :cond_d
    throw v20

    .restart local v6       #childCount:I
    .restart local v7       #childrenBottom:I
    .restart local v8       #childrenTop:I
    .restart local v9       #dataChanged:Z
    .restart local v10       #delta:I
    .restart local v11       #firstPosition:I
    .restart local v15       #newSel:Landroid/view/View;
    .restart local v16       #oldFirst:Landroid/view/View;
    .restart local v17       #oldSel:Landroid/view/View;
    .restart local v18       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    :pswitch_5
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    move v1, v10

    move v2, v8

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v14, v20, v21

    .local v14, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v20

    if-eqz v20, :cond_11

    :cond_10
    const/16 v20, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    move v1, v14

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :cond_11
    move/from16 v20, v14

    goto :goto_6

    .end local v14           #last:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    if-ltz v20, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    if-nez v17, :cond_13

    move/from16 v21, v8

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :cond_13
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v21

    goto :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    if-nez v16, :cond_15

    move/from16 v21, v8

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :cond_15
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v21

    goto :goto_8

    :cond_16
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-lez v20, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .end local v5           #child:Landroid/view/View;
    :cond_18
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-ltz p1, :cond_2

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt p1, v1, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v1, -0x1

    .local v1, closestChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .local v4, minDistance:I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v5, v6}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v6, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .local v2, distance:I
    if-ge v2, v4, :cond_0

    move v4, v2

    move v1, v3

    goto :goto_1

    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelection(I)V

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 21
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .local v16, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .local v10, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .local v17, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .local v11, heightSize:I
    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v18, v0

    if-lez v18, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v18

    add-int v17, v17, v18

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v7, v18, v19

    .local v7, childWidth:I
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Landroid/widget/GridView;->determineColumns(I)V

    const/4 v5, 0x0

    .local v5, childHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v9, v0

    .local v9, count:I
    if-lez v9, :cond_2

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mIsScrap:[Z

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .local v15, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_1

    new-instance v15, Landroid/widget/AbsListView$LayoutParams;

    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x0

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .restart local v15       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v4, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v18

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object v1, v15

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v19, 0x0

    move-object v0, v15

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v6

    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v18, v0

    const/high16 v19, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v19, 0x0

    move-object v0, v15

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v8

    .local v8, childWidthSpec:I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .end local v4           #child:Landroid/view/View;
    .end local v6           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v18, v18, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    add-int v11, v18, v19

    :cond_3
    const/high16 v18, -0x8000

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v14, v18, v19

    .local v14, ourSize:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v13, v0

    .local v13, numColumns:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v9, :cond_5

    add-int/2addr v14, v5

    add-int v18, v12, v13

    move/from16 v0, v18

    move v1, v9

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v18, v0

    add-int v14, v14, v18

    :cond_4
    if-lt v14, v11, :cond_9

    move v14, v11

    :cond_5
    move v11, v14

    .end local v12           #i:I
    .end local v13           #numColumns:I
    .end local v14           #ourSize:I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    return-void

    .end local v5           #childHeight:I
    .end local v7           #childWidth:I
    .end local v9           #count:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    goto/16 :goto_0

    .restart local v5       #childHeight:I
    .restart local v7       #childWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/widget/ListAdapter;->getCount()I

    move-result v18

    goto/16 :goto_1

    .restart local v9       #count:I
    .restart local v12       #i:I
    .restart local v13       #numColumns:I
    .restart local v14       #ourSize:I
    :cond_9
    add-int/2addr v12, v13

    goto :goto_2
.end method

.method pageScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, -0x1

    .local v0, nextPage:I
    const/16 v1, 0x21

    if-ne p1, v1, :cond_1

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    move v1, v4

    :goto_1
    return v1

    :cond_1
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v4

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1, v4}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, position:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .end local v0           #position:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void

    :cond_1
    invoke-virtual {p0, v4, v3}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_0

    .end local v0           #position:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .parameter "columnWidth"

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .parameter "horizontalSpacing"

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .parameter "numColumns"

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .local v4, previousSelectedPosition:I
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    sub-int/2addr v5, v6

    move v0, v5

    .local v0, next:I
    :goto_0
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v5, v7

    sub-int/2addr v5, v4

    move v2, v5

    .local v2, previous:I
    :goto_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, v0, v5

    .local v1, nextRow:I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v2, v5

    .local v3, previousRow:I
    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_0
    return-void

    .end local v0           #next:I
    .end local v1           #nextRow:I
    .end local v2           #previous:I
    .end local v3           #previousRow:I
    :cond_1
    iget v5, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move v0, v5

    goto :goto_0

    .restart local v0       #next:I
    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .parameter "stretchMode"

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "verticalSpacing"

    .prologue
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method
