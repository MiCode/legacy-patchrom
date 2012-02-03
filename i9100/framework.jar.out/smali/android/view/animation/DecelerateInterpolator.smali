.class public Landroid/view/animation/DecelerateInterpolator;
.super Ljava/lang/Object;
.source "DecelerateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 30
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "factor"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 40
    iput p1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x3f80

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v2, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 44
    sget-object v1, Lcom/android/internal/R$styleable;->DecelerateInterpolator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .parameter "input"

    .prologue
    const/high16 v2, 0x3f80

    .line 53
    iget v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 54
    sub-float v0, v2, p1

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x3ff0

    sub-float/2addr v2, p1

    float-to-double v2, v2

    const/high16 v4, 0x4000

    iget v5, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method
