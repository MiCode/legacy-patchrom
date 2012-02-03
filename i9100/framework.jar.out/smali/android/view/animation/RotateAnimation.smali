.class public Landroid/view/animation/RotateAnimation;
.super Landroid/view/animation/Animation;
.source "RotateAnimation.java"


# instance fields
.field private mFromDegrees:F

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mToDegrees:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .parameter "fromDegrees"
    .parameter "toDegrees"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 34
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 35
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 36
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 37
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 81
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 82
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 83
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 84
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    .line 85
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 34
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 35
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 36
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 37
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 103
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 104
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 106
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 107
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 108
    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 109
    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 110
    return-void
.end method

.method public constructor <init>(FFIFIF)V
    .locals 2
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 34
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 35
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 36
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 37
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 139
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 140
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 142
    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 143
    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 144
    iput p6, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 145
    iput p5, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 146
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
    iput v4, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 35
    iput v4, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 36
    iput v3, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 37
    iput v3, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 51
    sget-object v2, Lcom/android/internal/R$styleable;->RotateAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 58
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 60
    .local v1, d:Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 61
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 63
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 65
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 66
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v4, 0x0

    .line 150
    iget v1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    iget v2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    iget v3, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 152
    .local v0, degrees:F
    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    .line 153
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    iget v3, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 162
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/RotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 163
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/RotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    .line 164
    return-void
.end method
