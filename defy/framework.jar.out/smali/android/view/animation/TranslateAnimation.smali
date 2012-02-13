.class public Landroid/view/animation/TranslateAnimation;
.super Landroid/view/animation/Animation;
.source "TranslateAnimation.java"


# instance fields
.field private mFromXDelta:F

.field private mFromXType:I

.field private mFromXValue:F

.field private mFromYDelta:F

.field private mFromYType:I

.field private mFromYValue:F

.field private mToXDelta:F

.field private mToXType:I

.field private mToXValue:F

.field private mToYDelta:F

.field private mToYType:I

.field private mToYValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .locals 2
    .parameter "fromXType"
    .parameter "fromXValue"
    .parameter "toXType"
    .parameter "toXValue"
    .parameter "fromYType"
    .parameter "fromYValue"
    .parameter "toYType"
    .parameter "toYValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput p6, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput p8, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput p5, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput p7, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    sget-object v2, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .local v1, d:Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .local v0, dx:F
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .local v1, dy:F
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    :cond_0
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    return-void
.end method
