.class public Landroid/view/animation/CycleInterpolator;
.super Ljava/lang/Object;
.source "CycleInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mCycles:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "cycles"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/view/animation/CycleInterpolator;->mCycles:F

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v1, Lcom/android/internal/R$styleable;->CycleInterpolator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/CycleInterpolator;->mCycles:F

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "input"

    .prologue
    .line 43
    const/high16 v0, 0x4000

    iget v1, p0, Landroid/view/animation/CycleInterpolator;->mCycles:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    float-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
