.class public final Lcom/android/internal/view/menu/IconMenuView;
.super Landroid/view/ViewGroup;
.source "IconMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/IconMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/IconMenuView$SavedState;,
        Lcom/android/internal/view/menu/IconMenuView$MoreOnClickRunnable;
    }
.end annotation


# static fields
.field private static final ITEM_CAPTION_CYCLE_DELAY:I = 0x3e8


# instance fields
.field private mAnimations:I

.field private mHasStaleChildren:Z

.field private mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mLastChildrenCaptionMode:Z

.field private mLayout:[I

.field private mLayoutNumRows:I

.field private mMaxItems:I

.field private mMaxItemsPerRow:I

.field private mMaxRows:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBeingLongpressed:Z

.field private mMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mMoreItemView:Lcom/android/internal/view/menu/IconMenuItemView;

.field private mNumActualItemsShown:I

.field private mRowHeight:I

.field private mVerticalDivider:Landroid/graphics/drawable/Drawable;

.field private mVerticalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalDividerWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    sget-object v1, Lcom/android/internal/R$styleable;->IconMenuView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x40

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    if-ne v1, v7, :cond_0

    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    if-ne v1, v7, :cond_1

    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    :cond_1
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/IconMenuView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/IconMenuView;->setFocusableInTouchMode(Z)V

    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->setDescendantFocusability(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/IconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private addItemView(Lcom/android/internal/view/menu/IconMenuItemView;)V
    .locals 2
    .parameter "itemView"

    .prologue
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/IconMenuItemView;->setIconMenuView(Lcom/android/internal/view/menu/IconMenuView;)V

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/IconMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/IconMenuItemView;->getTextAppropriateLayoutParams()Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/IconMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calculateItemFittingMetadata(I)V
    .locals 7
    .parameter "width"

    .prologue
    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    .local v3, maxNumItemsPerRow:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v4

    .local v4, numItems:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .local v2, lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    const/4 v5, 0x1

    iput v5, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    move v0, v3

    .local v0, curNumItemsPerRow:I
    :goto_1
    if-lez v0, :cond_0

    iget v5, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->desiredWidth:I

    div-int v6, p1, v0

    if-ge v5, v6, :cond_1

    iput v0, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0           #curNumItemsPerRow:I
    .end local v2           #lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_2
    return-void
.end method

.method private createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090029

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/IconMenuItemView;

    .local v1, itemView:Lcom/android/internal/view/menu/IconMenuItemView;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, r:Landroid/content/res/Resources;
    const v3, 0x10402df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/view/menu/IconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/android/internal/view/menu/IconMenuView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/view/menu/IconMenuView$1;-><init>(Lcom/android/internal/view/menu/IconMenuView;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/IconMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private doItemsFit()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .local v1, itemPos:I
    iget-object v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .local v4, layout:[I
    iget v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .local v7, numRows:I
    const/4 v8, 0x0

    .local v8, row:I
    :goto_0
    if-ge v8, v7, :cond_2

    aget v6, v4, v8

    .local v6, numItemsOnRow:I
    if-ne v6, v10, :cond_0

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v3, v6

    .local v3, itemsOnRowCounter:I
    move v2, v1

    .end local v1           #itemPos:I
    .local v2, itemPos:I
    :goto_2
    if-lez v3, :cond_3

    add-int/lit8 v1, v2, 0x1

    .end local v2           #itemPos:I
    .restart local v1       #itemPos:I
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .local v5, lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    iget v9, v5, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    if-ge v9, v6, :cond_1

    const/4 v9, 0x0

    .end local v0           #child:Landroid/view/View;
    .end local v3           #itemsOnRowCounter:I
    .end local v5           #lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .end local v6           #numItemsOnRow:I
    :goto_3
    return v9

    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #itemsOnRowCounter:I
    .restart local v5       #lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .restart local v6       #numItemsOnRow:I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    move v2, v1

    .end local v1           #itemPos:I
    .restart local v2       #itemPos:I
    goto :goto_2

    .end local v0           #child:Landroid/view/View;
    .end local v2           #itemPos:I
    .end local v3           #itemsOnRowCounter:I
    .end local v5           #lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .end local v6           #numItemsOnRow:I
    .restart local v1       #itemPos:I
    :cond_2
    move v9, v10

    goto :goto_3

    .end local v1           #itemPos:I
    .restart local v2       #itemPos:I
    .restart local v3       #itemsOnRowCounter:I
    .restart local v6       #numItemsOnRow:I
    :cond_3
    move v1, v2

    .end local v2           #itemPos:I
    .restart local v1       #itemPos:I
    goto :goto_1
.end method

.method private layoutItems(I)V
    .locals 4
    .parameter "width"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v1

    .local v1, numItems:I
    if-nez v1, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    :cond_0
    return-void

    :cond_1
    int-to-float v2, v1

    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, curNumRows:I
    :goto_0
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    if-gt v0, v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->layoutItemsUsingGravity(II)V

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuView;->doItemsFit()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private layoutItemsUsingGravity(II)V
    .locals 6
    .parameter "numRows"
    .parameter "numItems"

    .prologue
    div-int v2, p2, p1

    .local v2, numBaseItemsPerRow:I
    rem-int v3, p2, p1

    .local v3, numLeftoverItems:I
    sub-int v4, p1, v3

    .local v4, rowsThatGetALeftoverItem:I
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .local v1, layout:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    aput v2, v1, v0

    if-lt v0, v4, :cond_0

    aget v5, v1, v0

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    return-void
.end method

.method private positionChildren(II)V
    .locals 23
    .parameter "menuWidth"
    .parameter "menuHeight"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    move v14, v0

    .local v14, numRows:I
    const/16 v17, 0x1

    sub-int v15, v14, v17

    .local v15, numRowsMinus1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    move-object v13, v0

    .local v13, numItemsForRow:[I
    const/4 v9, 0x0

    .local v9, itemPos:I
    const/4 v6, 0x0

    .local v6, childLayoutParams:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    const/4 v11, 0x0

    .local v11, itemTop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v18, v14, v18

    mul-int v17, v17, v18

    sub-int v17, p2, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v17, v18

    .local v7, itemHeight:F
    const/16 v16, 0x0

    .local v16, row:I
    :goto_0
    move/from16 v0, v16

    move v1, v14

    if-ge v0, v1, :cond_6

    const/4 v8, 0x0

    .local v8, itemLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    move/from16 v17, v0

    aget v18, v13, v16

    const/16 v19, 0x1

    sub-int v18, v18, v19

    mul-int v17, v17, v18

    sub-int v17, p1, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aget v18, v13, v16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v12, v17, v18

    .local v12, itemWidth:F
    const/4 v10, 0x0

    .local v10, itemPosOnRow:I
    :goto_1
    aget v17, v13, v16

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, child:Landroid/view/View;
    move v0, v12

    float-to-int v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move v0, v7

    float-to-int v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #childLayoutParams:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    check-cast v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .restart local v6       #childLayoutParams:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    move v0, v8

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    add-float v17, v8, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    move v0, v11

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    add-float v17, v11, v7

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    add-float/2addr v8, v12

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    move v0, v8

    float-to-int v0, v0

    move/from16 v19, v0

    move v0, v11

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v8

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-float v22, v11, v7

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v8, v8, v17

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .end local v5           #child:Landroid/view/View;
    :cond_3
    if-eqz v6, :cond_4

    move/from16 v0, p1

    move-object v1, v6

    iput v0, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    :cond_4
    add-float/2addr v11, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    move v0, v11

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v11

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v11, v11, v17

    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .end local v8           #itemLeft:F
    .end local v10           #itemPosOnRow:I
    .end local v12           #itemWidth:F
    :cond_6
    return-void
.end method

.method private setChildrenCaptionMode(Z)V
    .locals 3
    .parameter "shortcut"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setCycleShortcutCaptionMode(Z)V
    .locals 1
    .parameter "cycleShortcutAndNormal"

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    instance-of v0, p1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getLayout()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    return-object v0
.end method

.method public getLayoutNumRows()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    return v0
.end method

.method getNumActualItemsShown()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;I)V
    .locals 1
    .parameter "menu"
    .parameter "menuType"

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->updateChildren(Z)V

    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method markStaleChildren()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestFocus()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    .local v2, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v2           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    .restart local v2       #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, v4

    .end local p0
    .restart local v1       #i:I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .local v1, childLayoutParams:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    iget v3, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    iget v4, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    iget v5, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    iget v6, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    .end local v1           #childLayoutParams:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/IconMenuView;->updateChildren(Z)V

    :cond_0
    const v3, 0x7fffffff

    invoke-static {v3, p1}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    move-result v2

    .local v2, measuredWidth:I
    invoke-direct {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->calculateItemFittingMetadata(I)V

    invoke-direct {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->layoutItems(I)V

    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .local v1, layoutNumRows:I
    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    iget v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    iget v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    sub-int v0, v3, v4

    .local v0, desiredHeight:I
    invoke-static {v0, p2}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/view/menu/IconMenuView;->setMeasuredDimension(II)V

    if-lez v1, :cond_1

    iget v3, p0, Landroid/view/View;->mMeasuredWidth:I

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-direct {p0, v3, v4}, Lcom/android/internal/view/menu/IconMenuView;->positionChildren(II)V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    move-object v1, v0

    .local v1, ss:Lcom/android/internal/view/menu/IconMenuView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/IconMenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v3, v1, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, v1, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .local v0, focusedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, v0, :cond_0

    new-instance v3, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    invoke-direct {v3, v2, v1}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    :goto_1
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    goto :goto_1
.end method

.method public updateChildren(Z)V
    .locals 10
    .parameter "cleared"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->removeAllViews()V

    iget-object v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    .local v2, itemsToShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, numItems:I
    iget v6, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    .local v6, numItemsThatCanFit:I
    sub-int v7, v6, v8

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, minFitMinus1AndNumItems:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .local v1, itemData:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1, v9, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-direct {p0, v7}, Lcom/android/internal/view/menu/IconMenuView;->addItemView(Lcom/android/internal/view/menu/IconMenuItemView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #itemData:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_0
    if-le v5, v6, :cond_3

    iget-object v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreItemView:Lcom/android/internal/view/menu/IconMenuItemView;

    if-nez v7, :cond_1

    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuView;->createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreItemView:Lcom/android/internal/view/menu/IconMenuItemView;

    :cond_1
    iget-object v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreItemView:Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-direct {p0, v7}, Lcom/android/internal/view/menu/IconMenuView;->addItemView(Lcom/android/internal/view/menu/IconMenuItemView;)V

    sub-int v7, v6, v8

    iput v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-ne v5, v6, :cond_2

    sub-int v7, v6, v8

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .local v3, lastItemData:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3, v9, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-direct {p0, v7}, Lcom/android/internal/view/menu/IconMenuView;->addItemView(Lcom/android/internal/view/menu/IconMenuItemView;)V

    iput v6, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    goto :goto_1
.end method
