.class public Landroid/view/animation/GridLayoutAnimationController;
.super Landroid/view/animation/LayoutAnimationController;
.source "GridLayoutAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    }
.end annotation


# static fields
.field public static final DIRECTION_BOTTOM_TO_TOP:I = 0x2

.field public static final DIRECTION_HORIZONTAL_MASK:I = 0x1

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final DIRECTION_TOP_TO_BOTTOM:I = 0x0

.field public static final DIRECTION_VERTICAL_MASK:I = 0x2

.field public static final PRIORITY_COLUMN:I = 0x1

.field public static final PRIORITY_NONE:I = 0x0

.field public static final PRIORITY_ROW:I = 0x2


# instance fields
.field private mColumnDelay:F

.field private mDirection:I

.field private mDirectionPriority:I

.field private mRowDelay:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v2, Lcom/android/internal/R$styleable;->GridLayoutAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .local v1, d:Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    const/high16 v0, 0x3f00

    invoke-direct {p0, p1, v0, v0}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/view/animation/Animation;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;FF)V
    .locals 0
    .parameter "animation"
    .parameter "columnDelay"
    .parameter "rowDelay"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput p2, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    iput p3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return-void
.end method

.method private getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/view/animation/GridLayoutAnimationController;->getOrder()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget v1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .local v1, index:I
    :goto_0
    iget v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    and-int/lit8 v0, v2, 0x1

    .local v0, direction:I
    if-ne v0, v4, :cond_0

    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    sub-int/2addr v2, v4

    sub-int v1, v2, v1

    :cond_0
    return v1

    .end local v0           #direction:I
    .end local v1           #index:I
    :pswitch_0
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    sub-int/2addr v2, v4

    iget v3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    sub-int v1, v2, v3

    .restart local v1       #index:I
    goto :goto_0

    .end local v1           #index:I
    :pswitch_1
    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    :cond_1
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .restart local v1       #index:I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/view/animation/GridLayoutAnimationController;->getOrder()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget v1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .local v1, index:I
    :goto_0
    iget v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    and-int/lit8 v0, v2, 0x2

    .local v0, direction:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    sub-int/2addr v2, v4

    sub-int v1, v2, v1

    :cond_0
    return v1

    .end local v0           #direction:I
    .end local v1           #index:I
    :pswitch_0
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    sub-int/2addr v2, v4

    iget v3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    sub-int v1, v2, v3

    .restart local v1       #index:I
    goto :goto_0

    .end local v1           #index:I
    :pswitch_1
    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    :cond_1
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .restart local v1       #index:I
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getColumnDelay()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    return v0
.end method

.method protected getDelayForView(Landroid/view/View;)J
    .locals 18
    .parameter "view"

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .local v7, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, v7, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v9, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .local v9, params:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v9, :cond_0

    const-wide/16 v16, 0x0

    :goto_0
    return-wide v16

    :cond_0
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    move-result v2

    .local v2, column:I
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    move-result v10

    .local v10, row:I
    iget v12, v9, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .local v12, rowsCount:I
    iget v4, v9, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .local v4, columnsCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    .local v5, duration:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    move/from16 v16, v0

    move-wide v0, v5

    long-to-float v0, v0

    move/from16 v17, v0

    mul-float v3, v16, v17

    .local v3, columnDelay:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    move/from16 v16, v0

    move-wide v0, v5

    long-to-float v0, v0

    move/from16 v17, v0

    mul-float v11, v16, v17

    .local v11, rowDelay:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    new-instance v16, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v16 .. v16}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    move v0, v2

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v3

    move v0, v10

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v11

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-long v0, v0

    move-wide v14, v0

    .local v14, viewDelay:J
    move v0, v4

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v3

    move v0, v12

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v11

    add-float v13, v16, v17

    .local v13, totalDelay:F
    :goto_1
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 v16, v0

    div-float v8, v16, v13

    .local v8, normalizedDelay:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    mul-float v16, v8, v13

    move/from16 v0, v16

    float-to-long v0, v0

    move-wide/from16 v16, v0

    goto/16 :goto_0

    .end local v8           #normalizedDelay:F
    .end local v13           #totalDelay:F
    .end local v14           #viewDelay:J
    :pswitch_0
    move v0, v10

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v11

    mul-int v17, v2, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v11

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-long v0, v0

    move-wide v14, v0

    .restart local v14       #viewDelay:J
    move v0, v12

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v11

    mul-int v17, v4, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v11

    add-float v13, v16, v17

    .restart local v13       #totalDelay:F
    goto :goto_1

    .end local v13           #totalDelay:F
    .end local v14           #viewDelay:J
    :pswitch_1
    move v0, v2

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v3

    mul-int v17, v10, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v3

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-long v0, v0

    move-wide v14, v0

    .restart local v14       #viewDelay:J
    move v0, v4

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v3

    mul-int v17, v12, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v3

    add-float v13, v16, v17

    .restart local v13       #totalDelay:F
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDirection()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    return v0
.end method

.method public getDirectionPriority()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    return v0
.end method

.method public getRowDelay()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return v0
.end method

.method public setColumnDelay(F)V
    .locals 0
    .parameter "columnDelay"

    .prologue
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    return-void
.end method

.method public setDirectionPriority(I)V
    .locals 0
    .parameter "directionPriority"

    .prologue
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    return-void
.end method

.method public setRowDelay(F)V
    .locals 0
    .parameter "rowDelay"

    .prologue
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return-void
.end method

.method public willOverlap()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
