.class Lcom/android/server/WindowManagerService$FadeInOutAnimation;
.super Landroid/view/animation/Animation;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeInOutAnimation"
.end annotation


# instance fields
.field mFadeIn:Z

.field mWidth:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "fadeIn"

    .prologue
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$FadeInOutAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService$FadeInOutAnimation;->setDuration(J)V

    iput-boolean p1, p0, Lcom/android/server/WindowManagerService$FadeInOutAnimation;->mFadeIn:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v5, 0x0

    move v0, p1

    .local v0, x:F
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$FadeInOutAnimation;->mFadeIn:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x3f80

    sub-float v0, v1, v0

    :cond_0
    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WindowManagerService$FadeInOutAnimation;->mWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/high16 v1, 0x3f00

    sub-float v1, v0, v1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_0
.end method

.method public getZAdjustment()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    iput p1, p0, Lcom/android/server/WindowManagerService$FadeInOutAnimation;->mWidth:I

    return-void
.end method
