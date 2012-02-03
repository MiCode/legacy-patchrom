.class public Landroid/view/animation/ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "ScaleAnimation.java"


# instance fields
.field private mFromX:F

.field private mFromY:F

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mToX:F

.field private mToY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 34
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 35
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 36
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 37
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 84
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 85
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 86
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 87
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 88
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 89
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 90
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 34
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 35
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 36
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 37
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 110
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 111
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 112
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 113
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 115
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 116
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 117
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 118
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 119
    return-void
.end method

.method public constructor <init>(FFFFIFIF)V
    .locals 2
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 34
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 35
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 36
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 37
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 149
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 150
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 151
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 152
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 154
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 155
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 156
    iput p8, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 157
    iput p7, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 35
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 36
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 37
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 51
    sget-object v2, Lcom/android/internal/R$styleable;->ScaleAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 55
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 57
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 58
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 60
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 62
    .local v1, d:Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 63
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 65
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 67
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 68
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 162
    const/high16 v0, 0x3f80

    .line 163
    .local v0, sx:F
    const/high16 v1, 0x3f80

    .line 165
    .local v1, sy:F
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 168
    :cond_1
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_3

    .line 169
    :cond_2
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 172
    :cond_3
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_4

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_4

    .line 173
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_4
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 183
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 184
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 185
    return-void
.end method
