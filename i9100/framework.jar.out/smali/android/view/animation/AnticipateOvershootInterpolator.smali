.class public Landroid/view/animation/AnticipateOvershootInterpolator;
.super Ljava/lang/Object;
.source "AnticipateOvershootInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mTension:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/high16 v0, 0x4040

    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    .line 35
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "tension"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, 0x3fc0

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    .line 44
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "tension"
    .parameter "extraTension"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    mul-float v0, p1, p2

    iput v0, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v1, Lcom/android/internal/R$styleable;->AnticipateOvershootInterpolator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x3fc0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method

.method private static a(FF)F
    .locals 2
    .parameter "t"
    .parameter "s"

    .prologue
    .line 68
    mul-float v0, p0, p0

    const/high16 v1, 0x3f80

    add-float/2addr v1, p1

    mul-float/2addr v1, p0

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0
.end method

.method private static o(FF)F
    .locals 2
    .parameter "t"
    .parameter "s"

    .prologue
    .line 72
    mul-float v0, p0, p0

    const/high16 v1, 0x3f80

    add-float/2addr v1, p1

    mul-float/2addr v1, p0

    add-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "t"

    .prologue
    const/high16 v3, 0x3f00

    const/high16 v2, 0x4000

    .line 80
    cmpg-float v0, p1, v3

    if-gez v0, :cond_0

    mul-float v0, p1, v2

    iget v1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    invoke-static {v0, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;->a(FF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 81
    :goto_0
    return v0

    :cond_0
    mul-float v0, p1, v2

    sub-float/2addr v0, v2

    iget v1, p0, Landroid/view/animation/AnticipateOvershootInterpolator;->mTension:F

    invoke-static {v0, v1}, Landroid/view/animation/AnticipateOvershootInterpolator;->o(FF)F

    move-result v0

    add-float/2addr v0, v2

    mul-float/2addr v0, v3

    goto :goto_0
.end method
