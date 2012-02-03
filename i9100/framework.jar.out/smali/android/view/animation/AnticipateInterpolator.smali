.class public Landroid/view/animation/AnticipateInterpolator;
.super Ljava/lang/Object;
.source "AnticipateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mTension:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/high16 v0, 0x4000

    iput v0, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    .line 31
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .parameter "tension"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v1, Lcom/android/internal/R$styleable;->AnticipateInterpolator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .parameter "t"

    .prologue
    .line 54
    mul-float v0, p1, p1

    iget v1, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/view/animation/AnticipateInterpolator;->mTension:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method
