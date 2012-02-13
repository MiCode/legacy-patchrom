.class public Landroid/widget/TableLayout;
.super Landroid/widget/LinearLayout;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableLayout$1;,
        Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;,
        Landroid/widget/TableLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mCollapsedColumns:Landroid/util/SparseBooleanArray;

.field private mInitialized:Z

.field private mMaxWidths:[I

.field private mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

.field private mShrinkAllColumns:Z

.field private mShrinkableColumns:Landroid/util/SparseBooleanArray;

.field private mStretchAllColumns:Z

.field private mStretchableColumns:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v7, 0x2a

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v4, Lcom/android/internal/R$styleable;->TableLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, stretchedColumns:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_3

    iput-boolean v6, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    :cond_0
    :goto_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, shrinkedColumns:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_4

    iput-boolean v6, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    :cond_1
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, collapsedColumns:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    return-void

    .end local v1           #collapsedColumns:Ljava/lang/String;
    .end local v2           #shrinkedColumns:Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    goto :goto_0

    .restart local v2       #shrinkedColumns:Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    goto :goto_1
.end method

.method static synthetic access$200(Landroid/widget/TableLayout;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->trackCollapsedColumns(Landroid/view/View;)V

    return-void
.end method

.method private findLargestCells(I)V
    .locals 22
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v8, 0x1

    .local v8, firstRow:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v6

    .local v6, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v6, :cond_6

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v5

    instance-of v0, v0, Landroid/widget/TableRow;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object v0, v5

    check-cast v0, Landroid/widget/TableRow;

    move-object/from16 v16, v0

    .local v16, row:Landroid/widget/TableRow;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .local v11, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/16 v18, -0x2

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->getColumnsWidths(I)[I

    move-result-object v17

    .local v17, widths:[I
    move-object/from16 v0, v17

    array-length v0, v0

    move v14, v0

    .local v14, newLength:I
    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v14

    if-eq v0, v1, :cond_3

    :cond_2
    move v0, v14

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TableLayout;->mMaxWidths:[I

    :cond_3
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move v12, v0

    .local v12, length:I
    sub-int v7, v14, v12

    .local v7, difference:I
    if-lez v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object v15, v0

    .local v15, oldMaxWidths:[I
    move v0, v14

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TableLayout;->mMaxWidths:[I

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    move-object v0, v15

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v15

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v19, v0

    move-object v0, v15

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v15           #oldMaxWidths:[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object v13, v0

    .local v13, maxWidths:[I
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    if-ge v10, v12, :cond_0

    aget v18, v13, v10

    aget v19, v17, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v5           #child:Landroid/view/View;
    .end local v7           #difference:I
    .end local v10           #j:I
    .end local v11           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v12           #length:I
    .end local v13           #maxWidths:[I
    .end local v14           #newLength:I
    .end local v16           #row:Landroid/widget/TableRow;
    .end local v17           #widths:[I
    :cond_6
    return-void
.end method

.method private initTableLayout()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    :cond_2
    new-instance v0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/TableLayout;Landroid/widget/TableLayout$1;)V

    iput-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    return-void
.end method

.method private mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V
    .locals 12
    .parameter "columns"
    .parameter "allColumns"
    .parameter "size"
    .parameter "totalWidth"

    .prologue
    const/4 v8, 0x0

    .local v8, skipped:I
    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .local v6, maxWidths:[I
    array-length v5, v6

    .local v5, length:I
    if-eqz p2, :cond_1

    move v2, v5

    .local v2, count:I
    :goto_0
    sub-int v9, p3, p4

    .local v9, totalExtraSpace:I
    div-int v3, v9, v2

    .local v3, extraSpace:I
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v7

    .local v7, nbChildren:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_2

    invoke-virtual {p0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    instance-of v10, v0, Landroid/widget/TableRow;

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #extraSpace:I
    .end local v4           #i:I
    .end local v7           #nbChildren:I
    .end local v9           #totalExtraSpace:I
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    move v2, v10

    goto :goto_0

    .restart local v2       #count:I
    .restart local v3       #extraSpace:I
    .restart local v4       #i:I
    .restart local v7       #nbChildren:I
    .restart local v9       #totalExtraSpace:I
    :cond_2
    if-nez p2, :cond_5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_6

    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .local v1, column:I
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_3

    if-ge v1, v5, :cond_4

    aget v10, v6, v1

    add-int/2addr v10, v3

    aput v10, v6, v1

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v1           #column:I
    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_9

    aget v10, v6, v4

    add-int/2addr v10, v3

    aput v10, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    if-lez v8, :cond_9

    if-ge v8, v2, :cond_9

    mul-int v10, v8, v3

    sub-int v11, v2, v8

    div-int v3, v10, v11

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_9

    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .restart local v1       #column:I
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_7

    if-ge v1, v5, :cond_7

    aget v10, v6, v1

    if-le v3, v10, :cond_8

    const/4 v10, 0x0

    aput v10, v6, v1

    :cond_7
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    aget v10, v6, v1

    add-int/2addr v10, v3

    aput v10, v6, v1

    goto :goto_6

    .end local v1           #column:I
    :cond_9
    return-void
.end method

.method private static parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 9
    .parameter "sequence"

    .prologue
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .local v4, columns:Landroid/util/SparseBooleanArray;
    const-string v8, "\\s*,\\s*"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .local v7, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .local v1, columnDefs:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .local v2, columnIdentifier:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, columnIndex:I
    if-ltz v3, :cond_0

    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #columnIndex:I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v2           #columnIdentifier:Ljava/lang/String;
    :cond_1
    return-object v4

    .restart local v2       #columnIdentifier:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private requestRowsLayout()V
    .locals 3

    .prologue
    iget-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private shrinkAndStretchColumns(I)V
    .locals 8
    .parameter "widthMeasureSpec"

    .prologue
    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    .local v4, totalWidth:I
    iget-object v0, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget v5, v0, v1

    .local v5, width:I
    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5           #width:I
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v3, v6, v7

    .local v3, size:I
    if-le v4, v3, :cond_4

    iget-boolean v6, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-lez v6, :cond_4

    :cond_3
    iget-object v6, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v7, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    invoke-direct {p0, v6, v7, v3, v4}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    goto :goto_0

    :cond_4
    if-ge v4, v3, :cond_0

    iget-boolean v6, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-lez v6, :cond_0

    :cond_5
    iget-object v6, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v7, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    invoke-direct {p0, v6, v7, v3, v4}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    goto :goto_0
.end method

.method private trackCollapsedColumns(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    instance-of v7, p1, Landroid/widget/TableRow;

    if-eqz v7, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/TableRow;

    move-object v6, v0

    .local v6, row:Landroid/widget/TableRow;
    iget-object v1, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .local v1, collapsedColumns:Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .local v2, columnIndex:I
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    .local v5, isCollapsed:Z
    if-eqz v5, :cond_0

    invoke-virtual {v6, v2, v5}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1           #collapsedColumns:Landroid/util/SparseBooleanArray;
    .end local v2           #columnIndex:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #isCollapsed:Z
    .end local v6           #row:Landroid/widget/TableRow;
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .parameter "child"
    .parameter "index"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "params"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    instance-of v0, p1, Landroid/widget/TableLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TableLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public isColumnCollapsed(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isColumnShrinkable(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

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

.method public isColumnStretchable(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

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

.method public isShrinkAllColumns()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return v0
.end method

.method public isStretchAllColumns()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 3
    .parameter "child"
    .parameter "childIndex"
    .parameter "widthMeasureSpec"
    .parameter "totalWidth"
    .parameter "heightMeasureSpec"
    .parameter "totalHeight"

    .prologue
    instance-of v1, p1, Landroid/widget/TableRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TableRow;

    move-object v1, v0

    iget-object v2, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setColumnsWidthConstraints([I)V

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    return-void
.end method

.method measureVertical(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->findLargestCells(I)V

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->shrinkAndStretchColumns(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    invoke-virtual {p0}, Landroid/widget/TableLayout;->layoutVertical()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/widget/TableLayout;->measureVertical(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    iget-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setColumnCollapsed(IZ)V
    .locals 4
    .parameter "columnIndex"
    .parameter "isCollapsed"

    .prologue
    iget-object v3, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TableRow;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/widget/TableRow;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1, p2}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public setColumnShrinkable(IZ)V
    .locals 1
    .parameter "columnIndex"
    .parameter "isShrinkable"

    .prologue
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public setColumnStretchable(IZ)V
    .locals 1
    .parameter "columnIndex"
    .parameter "isStretchable"

    .prologue
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    #setter for: Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->access$102(Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setShrinkAllColumns(Z)V
    .locals 0
    .parameter "shrinkAllColumns"

    .prologue
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return-void
.end method

.method public setStretchAllColumns(Z)V
    .locals 0
    .parameter "stretchAllColumns"

    .prologue
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return-void
.end method
