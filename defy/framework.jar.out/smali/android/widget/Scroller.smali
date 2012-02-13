.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCoeffX:F

.field private mCoeffY:F

.field private mCurrX:I

.field private mCurrY:I

.field private final mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    const/high16 v0, 0x4100

    sput v0, Landroid/widget/Scroller;->sViscousFluidScale:F

    sput v1, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    invoke-static {v1}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 3
    .parameter "context"
    .parameter "interpolator"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Scroller;->mCoeffX:F

    const/high16 v1, 0x3f80

    iput v1, p0, Landroid/widget/Scroller;->mCoeffY:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    return-void
.end method

.method private clipDuration(FFII)I
    .locals 13
    .parameter "v"
    .parameter "a"
    .parameter "s"
    .parameter "e"

    .prologue
    sub-int v7, p3, p4

    int-to-float v2, v7

    .local v2, dist:F
    mul-float v7, p1, p1

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000

    float-to-double v11, p2

    mul-double/2addr v9, v11

    float-to-double v11, v2

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .local v0, discriminant:D
    float-to-double v7, p1

    add-double/2addr v7, v0

    float-to-double v9, p2

    div-double v3, v7, v9

    .local v3, t1:D
    float-to-double v7, p1

    sub-double/2addr v7, v0

    float-to-double v9, p2

    div-double v5, v7, v9

    .local v5, t2:D
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    return v7
.end method

.method static viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    sget v1, Landroid/widget/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    cmpg-float v1, p0, v3

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    :goto_0
    sget v1, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    return p0

    :cond_0
    const v0, 0x3ebc5ab2

    .local v0, start:F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    iget-boolean v4, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .local v1, timePassed:I
    iget v4, p0, Landroid/widget/Scroller;->mDuration:I

    if-ge v1, v4, :cond_3

    iget v4, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    move v4, v8

    goto :goto_0

    :pswitch_0
    int-to-float v4, v1

    iget v5, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float v3, v4, v5

    .local v3, x:F
    iget-object v4, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    :goto_2
    iget v4, p0, Landroid/widget/Scroller;->mStartX:I

    iget v5, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v4, p0, Landroid/widget/Scroller;->mStartY:I

    iget v5, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .end local v3           #x:F
    :pswitch_1
    int-to-float v4, v1

    const/high16 v5, 0x447a

    div-float v2, v4, v5

    .local v2, timePassedSeconds:F
    iget v4, p0, Landroid/widget/Scroller;->mVelocity:F

    mul-float/2addr v4, v2

    iget v5, p0, Landroid/widget/Scroller;->mDeceleration:F

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float v0, v4, v5

    .local v0, distance:F
    iget v4, p0, Landroid/widget/Scroller;->mStartX:I

    iget v5, p0, Landroid/widget/Scroller;->mCoeffX:F

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v5, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v5, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v4, p0, Landroid/widget/Scroller;->mStartY:I

    iget v5, p0, Landroid/widget/Scroller;->mCoeffY:F

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v5, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v5, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v5, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v5, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v4, v5, :cond_1

    iput-boolean v8, p0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_1

    .end local v0           #distance:F
    .end local v2           #timePassedSeconds:F
    :cond_3
    iget v4, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v4, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iput-boolean v8, p0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .parameter "extend"

    .prologue
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    const/high16 v1, 0x3f80

    iget v2, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 12
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/Scroller;->mMode:I

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/Scroller;->mFinished:Z

    int-to-double v8, p3

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v7, v8

    .local v7, velocity:F
    iput v7, p0, Landroid/widget/Scroller;->mVelocity:F

    const/high16 v8, 0x447a

    mul-float/2addr v8, v7

    iget v9, p0, Landroid/widget/Scroller;->mDeceleration:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/Scroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/Scroller;->mStartTime:J

    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-nez v8, :cond_2

    const/high16 v8, 0x3f80

    :goto_0
    iput v8, p0, Landroid/widget/Scroller;->mCoeffX:F

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-nez v8, :cond_3

    const/high16 v8, 0x3f80

    :goto_1
    iput v8, p0, Landroid/widget/Scroller;->mCoeffY:F

    mul-float v8, v7, v7

    const/high16 v9, 0x4000

    iget v10, p0, Landroid/widget/Scroller;->mDeceleration:F

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    float-to-int v6, v8

    .local v6, totalDistance:I
    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinX:I

    move/from16 v0, p6

    move-object v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxX:I

    move/from16 v0, p7

    move-object v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinY:I

    move/from16 v0, p8

    move-object v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxY:I

    int-to-float v8, v6

    iget v9, p0, Landroid/widget/Scroller;->mCoeffX:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int v4, p1, v8

    iput v4, p0, Landroid/widget/Scroller;->mFinalX:I

    .local v4, oldFinalX:I
    iget v8, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v9, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v8, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v9, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v8, p0, Landroid/widget/Scroller;->mFinalX:I

    if-eq p1, v8, :cond_4

    iget v8, p0, Landroid/widget/Scroller;->mDuration:I

    move v2, v8

    .local v2, clippedDurationX:I
    :goto_2
    iget v8, p0, Landroid/widget/Scroller;->mFinalX:I

    if-eq v4, v8, :cond_0

    int-to-float v8, p3

    iget v9, p0, Landroid/widget/Scroller;->mCoeffX:F

    iget v10, p0, Landroid/widget/Scroller;->mDeceleration:F

    mul-float/2addr v9, v10

    iget v10, p0, Landroid/widget/Scroller;->mFinalX:I

    invoke-direct {p0, v8, v9, p1, v10}, Landroid/widget/Scroller;->clipDuration(FFII)I

    move-result v2

    :cond_0
    int-to-float v8, v6

    iget v9, p0, Landroid/widget/Scroller;->mCoeffY:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int v5, p2, v8

    iput v5, p0, Landroid/widget/Scroller;->mFinalY:I

    .local v5, oldFinalY:I
    iget v8, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v9, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v8, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v9, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v8, p0, Landroid/widget/Scroller;->mFinalY:I

    if-eq p2, v8, :cond_5

    iget v8, p0, Landroid/widget/Scroller;->mDuration:I

    move v3, v8

    .local v3, clippedDurationY:I
    :goto_3
    iget v8, p0, Landroid/widget/Scroller;->mFinalY:I

    if-eq v5, v8, :cond_1

    move/from16 v0, p4

    int-to-float v0, v0

    move v8, v0

    iget v9, p0, Landroid/widget/Scroller;->mCoeffY:F

    iget v10, p0, Landroid/widget/Scroller;->mDeceleration:F

    mul-float/2addr v9, v10

    iget v10, p0, Landroid/widget/Scroller;->mFinalY:I

    invoke-direct {p0, v8, v9, p2, v10}, Landroid/widget/Scroller;->clipDuration(FFII)I

    move-result v3

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Landroid/widget/Scroller;->mDuration:I

    return-void

    .end local v2           #clippedDurationX:I
    .end local v3           #clippedDurationY:I
    .end local v4           #oldFinalX:I
    .end local v5           #oldFinalY:I
    .end local v6           #totalDistance:I
    :cond_2
    int-to-float v8, p3

    div-float/2addr v8, v7

    goto/16 :goto_0

    :cond_3
    move/from16 v0, p4

    int-to-float v0, v0

    move v8, v0

    div-float/2addr v8, v7

    goto/16 :goto_1

    .restart local v4       #oldFinalX:I
    .restart local v6       #totalDistance:I
    :cond_4
    const/4 v8, 0x0

    move v2, v8

    goto :goto_2

    .restart local v2       #clippedDurationX:I
    .restart local v5       #oldFinalY:I
    :cond_5
    const/4 v8, 0x0

    move v3, v8

    goto :goto_3
.end method

.method public final forceFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public setFinalX(I)V
    .locals 2
    .parameter "newX"

    .prologue
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .parameter "newY"

    .prologue
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    int-to-float v0, p3

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    int-to-float v0, p4

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    const/high16 v0, 0x3f80

    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
