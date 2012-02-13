.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$1;,
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;
    }
.end annotation


# static fields
.field public static final LINE:I = 0x2

.field public static final LINEAR_GRADIENT:I = 0x0

.field public static final OVAL:I = 0x1

.field public static final RADIAL_GRADIENT:I = 0x1

.field public static final RECTANGLE:I = 0x0

.field public static final RING:I = 0x3

.field public static final SWEEP_GRADIENT:I = 0x2


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDither:Z

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private mLayerPaint:Landroid/graphics/Paint;

.field private mMutated:Z

.field private mPadding:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private mPathIsDirty:Z

.field private final mRect:Landroid/graphics/RectF;

.field private mRectIsDirty:Z

.field private mRingPath:Landroid/graphics/Path;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->initializeWithState(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/graphics/drawable/GradientDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 1
    .parameter "orientation"
    .parameter "colors"

    .prologue
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    return-void
.end method

.method private buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .locals 14
    .parameter "st"

    .prologue
    const/4 v13, -0x1

    const/high16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x43b4

    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-eqz v8, :cond_1

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z
    invoke-static {p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-nez v8, :cond_1

    :cond_0
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    :goto_0
    return-object v8

    :cond_1
    iput-boolean v11, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z
    invoke-static {p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v10

    const v9, 0x461c4000

    div-float/2addr v8, v9

    move v4, v8

    .local v4, sweep:F
    :goto_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float v6, v8, v12

    .local v6, x:F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float v7, v8, v12

    .local v7, y:F
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-eq v8, v13, :cond_3

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v8, v8

    move v5, v8

    .local v5, thickness:F
    :goto_2
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v8, v13, :cond_4

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float v8, v8

    move v2, v8

    .local v2, radius:F
    :goto_3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .local v1, innerBounds:Landroid/graphics/RectF;
    sub-float v8, v6, v2

    sub-float v9, v7, v2

    invoke-virtual {v1, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #bounds:Landroid/graphics/RectF;
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .restart local v0       #bounds:Landroid/graphics/RectF;
    neg-float v8, v5

    neg-float v9, v5

    invoke-virtual {v0, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-nez v8, :cond_5

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    :goto_4
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .local v3, ringPath:Landroid/graphics/Path;
    cmpg-float v8, v4, v10

    if-gez v8, :cond_6

    const/high16 v8, -0x3c4c

    cmpl-float v8, v4, v8

    if-lez v8, :cond_6

    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    add-float v8, v6, v2

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v8, v6, v2

    add-float/2addr v8, v5

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v4, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    neg-float v8, v4

    invoke-virtual {v3, v1, v4, v8, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    :goto_5
    move-object v8, v3

    goto :goto_0

    .end local v0           #bounds:Landroid/graphics/RectF;
    .end local v1           #innerBounds:Landroid/graphics/RectF;
    .end local v2           #radius:F
    .end local v3           #ringPath:Landroid/graphics/Path;
    .end local v4           #sweep:F
    .end local v5           #thickness:F
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_2
    move v4, v10

    goto :goto_1

    .restart local v0       #bounds:Landroid/graphics/RectF;
    .restart local v4       #sweep:F
    .restart local v6       #x:F
    .restart local v7       #y:F
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float/2addr v8, v9

    move v5, v8

    goto :goto_2

    .restart local v5       #thickness:F
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float/2addr v8, v9

    move v2, v8

    goto :goto_3

    .restart local v1       #innerBounds:Landroid/graphics/RectF;
    .restart local v2       #radius:F
    :cond_5
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    goto :goto_4

    .restart local v3       #ringPath:Landroid/graphics/Path;
    :cond_6
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_5
.end method

.method private ensureValidRect()Z
    .locals 28

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    move v5, v0

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v18

    .local v18, bounds:Landroid/graphics/Rect;
    const/16 v21, 0x0

    .local v21, inset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x3f00

    mul-float v21, v5, v6

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v25, v0

    .local v25, st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    int-to-float v6, v6

    add-float v6, v6, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    add-float v7, v7, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    int-to-float v8, v8

    sub-float v8, v8, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    int-to-float v9, v9

    sub-float v9, v9, v21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object v10, v0

    .local v10, colors:[I
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    .local v24, r:Landroid/graphics/RectF;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    move v5, v0

    if-nez v5, :cond_3

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x461c4000

    div-float/2addr v5, v6

    move/from16 v23, v5

    .local v23, level:F
    :goto_0
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .local v6, x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .local v7, y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v5, v0

    mul-float v8, v23, v5

    .local v8, x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v5, v0

    mul-float v9, v23, v5

    .local v9, y1:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v13, v0

    new-instance v5, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object v11, v0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    .end local v10           #colors:[I
    .end local v18           #bounds:Landroid/graphics/Rect;
    .end local v21           #inset:F
    .end local v23           #level:F
    .end local v24           #r:Landroid/graphics/RectF;
    .end local v25           #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    :goto_3
    return v5

    .restart local v10       #colors:[I
    .restart local v18       #bounds:Landroid/graphics/Rect;
    .restart local v21       #inset:F
    .restart local v24       #r:Landroid/graphics/RectF;
    .restart local v25       #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_2
    const/high16 v5, 0x3f80

    move/from16 v23, v5

    goto :goto_0

    .restart local v23       #level:F
    :pswitch_0
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .restart local v7       #y0:F
    move v8, v6

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v5, v0

    mul-float v9, v23, v5

    .restart local v9       #y1:F
    goto :goto_1

    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_1
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v5, v0

    mul-float v9, v23, v5

    .restart local v9       #y1:F
    goto :goto_1

    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_2
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move v9, v7

    .restart local v9       #y1:F
    goto :goto_1

    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_3
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    mul-float v9, v23, v5

    .restart local v9       #y1:F
    goto :goto_1

    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_4
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    .restart local v7       #y0:F
    move v8, v6

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    mul-float v9, v23, v5

    .restart local v9       #y1:F
    goto/16 :goto_1

    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_5
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    mul-float v9, v23, v5

    .restart local v9       #y1:F
    goto/16 :goto_1

    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_6
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move v9, v7

    .restart local v9       #y1:F
    goto/16 :goto_1

    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    .end local v23           #level:F
    :cond_3
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v7, v0

    sub-float/2addr v6, v7

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v8, v0

    sub-float/2addr v7, v8

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    .restart local v7       #y0:F
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v5

    int-to-float v5, v5

    const v8, 0x461c4000

    div-float/2addr v5, v8

    move/from16 v23, v5

    .restart local v23       #level:F
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    new-instance v11, Landroid/graphics/RadialGradient;

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$400(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v8

    mul-float v14, v23, v8

    const/16 v16, 0x0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v12, v6

    move v13, v7

    move-object v15, v10

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2

    .end local v23           #level:F
    :cond_4
    const/high16 v5, 0x3f80

    move/from16 v23, v5

    goto :goto_4

    .end local v6           #x0:F
    .end local v7           #y0:F
    :cond_5
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v7, v0

    sub-float/2addr v6, v7

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v8, v0

    sub-float/2addr v7, v8

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    .restart local v7       #y0:F
    move-object/from16 v26, v10

    .local v26, tempColors:[I
    const/16 v27, 0x0

    .local v27, tempPositions:[F
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    move-object/from16 v26, v0

    move-object v0, v10

    array-length v0, v0

    move/from16 v22, v0

    .local v22, length:I
    if-eqz v26, :cond_6

    move-object/from16 v0, v26

    array-length v0, v0

    move v5, v0

    add-int/lit8 v8, v22, 0x1

    if-eq v5, v8, :cond_7

    :cond_6
    add-int/lit8 v5, v22, 0x1

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .end local v26           #tempColors:[I
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    .restart local v26       #tempColors:[I
    :cond_7
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move v1, v5

    move-object/from16 v2, v26

    move v3, v8

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x1

    sub-int v5, v22, v5

    aget v5, v10, v5

    aput v5, v26, v22

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    move-object/from16 v27, v0

    const/high16 v5, 0x3f80

    const/4 v8, 0x1

    sub-int v8, v22, v8

    int-to-float v8, v8

    div-float v19, v5, v8

    .local v19, fraction:F
    if-eqz v27, :cond_8

    move-object/from16 v0, v27

    array-length v0, v0

    move v5, v0

    add-int/lit8 v8, v22, 0x1

    if-eq v5, v8, :cond_9

    :cond_8
    add-int/lit8 v5, v22, 0x1

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v27, v0

    .end local v27           #tempPositions:[F
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    .restart local v27       #tempPositions:[F
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v5

    int-to-float v5, v5

    const v8, 0x461c4000

    div-float v23, v5, v8

    .restart local v23       #level:F
    const/16 v20, 0x0

    .local v20, i:I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v19

    mul-float v5, v5, v23

    aput v5, v27, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    :cond_a
    const/high16 v5, 0x3f80

    aput v5, v27, v22

    .end local v19           #fraction:F
    .end local v20           #i:I
    .end local v22           #length:I
    .end local v23           #level:F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    new-instance v8, Landroid/graphics/SweepGradient;

    move-object v0, v8

    move v1, v6

    move v2, v7

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2

    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v10           #colors:[I
    .end local v18           #bounds:Landroid/graphics/Rect;
    .end local v21           #inset:F
    .end local v24           #r:Landroid/graphics/RectF;
    .end local v25           #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v26           #tempColors:[I
    .end local v27           #tempPositions:[F
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .locals 6
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    const/high16 v5, 0x3f80

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .local v0, tv:Landroid/util/TypedValue;
    move v1, p2

    .local v1, v:F
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .local v2, vIsFraction:Z
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v0, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    move v1, v3

    .end local v2           #vIsFraction:Z
    :cond_0
    :goto_1
    return v1

    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .restart local v2       #vIsFraction:Z
    :cond_2
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    move v1, v3

    goto :goto_1
.end method

.method private initializeWithState(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-ltz v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    aput v3, v1, v2

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    aput v2, v1, v5

    invoke-direct {v0, v1, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .local v0, e:Landroid/graphics/DashPathEffect;
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .end local v0           #e:Landroid/graphics/DashPathEffect;
    :cond_1
    return-void
.end method

.method private modulateAlpha(I)I
    .locals 3
    .parameter "alpha"

    .prologue
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    iget v2, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shr-int/lit8 v2, v2, 0x7

    add-int v0, v1, v2

    .local v0, scale:I
    mul-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    .local v17, prevFillAlpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    move/from16 v18, v5

    .local v18, prevStrokeAlpha:I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v12

    .local v12, currFillAlpha:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v13

    .local v13, currStrokeAlpha:I
    if-lez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    const/4 v5, 0x1

    move v15, v5

    .local v15, haveStroke:Z
    :goto_2
    if-lez v12, :cond_7

    const/4 v5, 0x1

    move v14, v5

    .local v14, haveFill:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v21, v0

    .local v21, st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    if-eqz v15, :cond_8

    if-eqz v14, :cond_8

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    const/16 v5, 0xff

    if-ge v13, v5, :cond_8

    const/4 v5, 0x1

    move/from16 v22, v5

    .local v22, useLayer:Z
    :goto_4
    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-nez v5, :cond_2

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v20

    .local v20, rad:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v6, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v7, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float v8, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float v9, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v10, v0

    const/4 v11, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .end local v20           #rad:F
    :cond_3
    :goto_5
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    :cond_4
    :goto_6
    if-eqz v22, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .end local v12           #currFillAlpha:I
    .end local v13           #currStrokeAlpha:I
    .end local v14           #haveFill:Z
    .end local v15           #haveStroke:Z
    .end local v18           #prevStrokeAlpha:I
    .end local v21           #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v22           #useLayer:Z
    :cond_5
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_1

    .restart local v12       #currFillAlpha:I
    .restart local v13       #currStrokeAlpha:I
    .restart local v18       #prevStrokeAlpha:I
    :cond_6
    const/4 v5, 0x0

    move v15, v5

    goto/16 :goto_2

    .restart local v15       #haveStroke:Z
    :cond_7
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_3

    .restart local v14       #haveFill:Z
    .restart local v21       #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_8
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_4

    .restart local v22       #useLayer:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_5

    :pswitch_0
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    move-object v5, v0

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    move-object v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_a
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    move/from16 v20, v0

    .restart local v20       #rad:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x3f00

    mul-float v19, v5, v6

    .local v19, r:F
    cmpl-float v5, v20, v19

    if-lez v5, :cond_b

    move/from16 v20, v19

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v20

    move/from16 v3, v20

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v20

    move/from16 v3, v20

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .end local v19           #r:F
    .end local v20           #rad:F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    .local v19, r:Landroid/graphics/RectF;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    .local v7, y:F
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .end local v7           #y:F
    .end local v19           #r:Landroid/graphics/RectF;
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    move-result-object v16

    .local v16, path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .end local v16           #path:Landroid/graphics/Path;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 37
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v24, v0

    .local v24, st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v4, v31

    invoke-super {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    .local v23, shapeType:I
    const/16 v31, 0x3

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    const/16 v31, 0x5

    const/16 v32, -0x1

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    const/16 v31, 0x2

    const/high16 v32, 0x4040

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    :cond_0
    const/16 v31, 0x6

    const/16 v32, -0x1

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    const/16 v31, 0x3

    const/high16 v32, 0x4110

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    :cond_1
    const/16 v31, 0x4

    const/16 v32, 0x1

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$102(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z

    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v31

    add-int/lit8 v19, v31, 0x1

    .local v19, innerDepth:I
    :cond_3
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    .local v29, type:I
    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_16

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .local v14, depth:I
    move v0, v14

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    const/16 v31, 0x3

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_16

    :cond_4
    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    move v0, v14

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .local v20, name:Ljava/lang/String;
    const-string v31, "size"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v31, 0x1

    const/16 v32, -0x1

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v30

    .local v30, width:I
    const/16 v31, 0x0

    const/16 v32, -0x1

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .local v18, height:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    goto :goto_0

    .end local v18           #height:I
    .end local v30           #width:I
    :cond_5
    const-string v31, "gradient"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    .local v25, startColor:I
    const/16 v31, 0x8

    move-object v0, v5

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    .local v17, hasCenterColor:Z
    const/16 v31, 0x8

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .local v10, centerColor:I
    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    .local v15, endColor:I
    const/16 v31, 0x4

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .local v16, gradientType:I
    const/16 v31, 0x5

    const/high16 v32, 0x3f00

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$202(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F

    const/16 v31, 0x6

    const/high16 v32, 0x3f00

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$302(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F

    const/16 v31, 0x2

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$002(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z

    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-nez v16, :cond_8

    const/16 v31, 0x3

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move v6, v0

    .local v6, angle:I
    rem-int/lit16 v6, v6, 0x168

    rem-int/lit8 v31, v6, 0x2d

    if-eqz v31, :cond_6

    new-instance v31, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "<gradient> tag requires \'angle\' attribute to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "be a multiple of 45"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_6
    sparse-switch v6, :sswitch_data_0

    .end local v6           #angle:I
    :cond_7
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v17, :cond_d

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v25, v31, v32

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aput v10, v31, v32

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aput v15, v31, v32

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v33, v31, v32

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v31, v0

    const/16 v32, 0x1

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static/range {v24 .. v24}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v33

    const/high16 v34, 0x3f00

    cmpl-float v33, v33, v34

    if-eqz v33, :cond_c

    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F
    invoke-static/range {v24 .. v24}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v33

    :goto_2
    aput v33, v31, v32

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v31, v0

    const/16 v32, 0x2

    const/high16 v33, 0x3f80

    aput v33, v31, v32

    goto/16 :goto_0

    .restart local v6       #angle:I
    :sswitch_0
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :sswitch_1
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    :sswitch_2
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    :sswitch_3
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    :sswitch_4
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    :sswitch_5
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    :sswitch_6
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    :sswitch_7
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_1

    .end local v6           #angle:I
    :cond_8
    const/16 v31, 0x7

    move-object v0, v5

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v28

    .local v28, tv:Landroid/util/TypedValue;
    if-eqz v28, :cond_b

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    const/16 v31, 0x1

    move/from16 v22, v31

    .local v22, radiusRel:Z
    :goto_3
    if-eqz v22, :cond_a

    const/high16 v31, 0x3f80

    const/high16 v32, 0x3f80

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v31

    :goto_4
    move-object/from16 v0, v24

    move/from16 v1, v31

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F
    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$402(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F

    goto/16 :goto_1

    .end local v22           #radiusRel:Z
    :cond_9
    const/16 v31, 0x0

    move/from16 v22, v31

    goto :goto_3

    .restart local v22       #radiusRel:Z
    :cond_a
    invoke-virtual/range {v28 .. v28}, Landroid/util/TypedValue;->getFloat()F

    move-result v31

    goto :goto_4

    .end local v22           #radiusRel:Z
    :cond_b
    const/16 v31, 0x1

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    new-instance v31, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "<gradient> tag requires \'gradientRadius\' "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "attribute with radial type"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v31

    .end local v28           #tv:Landroid/util/TypedValue;
    :cond_c
    #getter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F
    invoke-static/range {v24 .. v24}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v33

    goto/16 :goto_2

    :cond_d
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v25, v31, v32

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aput v15, v31, v32

    goto/16 :goto_0

    .end local v10           #centerColor:I
    .end local v15           #endColor:I
    .end local v16           #gradientType:I
    .end local v17           #hasCenterColor:Z
    .end local v25           #startColor:I
    :cond_e
    const-string v31, "solid"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .local v7, argb:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0

    .end local v7           #argb:I
    :cond_f
    const-string v31, "stroke"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v30

    .restart local v30       #width:I
    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .local v11, color:I
    const/16 v31, 0x2

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .local v13, dashWidth:F
    const/16 v31, 0x0

    cmpl-float v31, v13, v31

    if-eqz v31, :cond_10

    const/16 v31, 0x3

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    .local v12, dashGap:F
    move-object/from16 v0, p0

    move/from16 v1, v30

    move v2, v11

    move v3, v13

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .end local v12           #dashGap:F
    :goto_5
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v30

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_5

    .end local v11           #color:I
    .end local v13           #dashWidth:F
    .end local v30           #width:I
    :cond_11
    const-string v31, "corners"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    sget-object v31, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .local v21, radius:I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v31, 0x1

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v26

    .local v26, topLeftRadius:I
    const/16 v31, 0x2

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v27

    .local v27, topRightRadius:I
    const/16 v31, 0x3

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .local v8, bottomLeftRadius:I
    const/16 v31, 0x4

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .local v9, bottomRightRadius:I
    move/from16 v0, v26

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    move/from16 v0, v27

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    move v0, v8

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    move v0, v9

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    :cond_12
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x1

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x3

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x4

    move v0, v8

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x5

    move v0, v8

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x6

    move v0, v9

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x7

    move v0, v9

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_13
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .end local v8           #bottomLeftRadius:I
    .end local v9           #bottomRightRadius:I
    .end local v21           #radius:I
    .end local v26           #topLeftRadius:I
    .end local v27           #topRightRadius:I
    :cond_14
    const-string v31, "padding"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    new-instance v31, Landroid/graphics/Rect;

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v32

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v33

    const/16 v34, 0x2

    const/16 v35, 0x0

    move-object v0, v5

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v34

    const/16 v35, 0x3

    const/16 v36, 0x0

    move-object v0, v5

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v35

    invoke-direct/range {v31 .. v35}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_15
    const-string v31, "drawable"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Bad element under <shape>: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v14           #depth:I
    .end local v20           #name:Ljava/lang/String;
    :cond_16
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5a -> :sswitch_2
        0x87 -> :sswitch_3
        0xb4 -> :sswitch_4
        0xe1 -> :sswitch_5
        0x10e -> :sswitch_6
        0x13b -> :sswitch_7
    .end sparse-switch
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->initializeWithState(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "argb"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColor(I)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1
    .parameter "radii"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .parameter "radius"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    return-void
.end method

.method public setDither(Z)V
    .locals 0
    .parameter "dither"

    .prologue
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    return-void
.end method

.method public setGradientRadius(F)V
    .locals 1
    .parameter "gradientRadius"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(F)V

    return-void
.end method

.method public setGradientType(I)V
    .locals 1
    .parameter "gradient"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    return-void
.end method

.method public setShape(I)V
    .locals 1
    .parameter "shape"

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    return-void
.end method

.method public setStroke(II)V
    .locals 1
    .parameter "width"
    .parameter "color"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    return-void
.end method

.method public setStroke(IIFF)V
    .locals 5
    .parameter "width"
    .parameter "color"
    .parameter "dashWidth"
    .parameter "dashGap"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(IIFF)V

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .local v0, e:Landroid/graphics/DashPathEffect;
    cmpl-float v1, p3, v3

    if-lez v1, :cond_1

    new-instance v0, Landroid/graphics/DashPathEffect;

    .end local v0           #e:Landroid/graphics/DashPathEffect;
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    aput p4, v1, v4

    invoke-direct {v0, v1, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .restart local v0       #e:Landroid/graphics/DashPathEffect;
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public setUseLevel(Z)V
    .locals 1
    .parameter "useLevel"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    #setter for: Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z
    invoke-static {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$002(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z

    return-void
.end method
