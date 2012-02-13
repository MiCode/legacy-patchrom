.class public Landroid/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$MagneticOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

.field private mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    const v0, 0x3e23d70a

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-direct {v0}, Landroid/widget/OverScroller$MagneticOverScroller;-><init>()V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    new-instance v0, Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-direct {v0}, Landroid/widget/OverScroller$MagneticOverScroller;-><init>()V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-static {p1}, Landroid/widget/OverScroller$MagneticOverScroller;->initializeFromContext(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p3}, Landroid/widget/OverScroller$MagneticOverScroller;->setBounceCoefficient(F)V

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->setBounceCoefficient(F)V

    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$MagneticOverScroller;->finish()V

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$MagneticOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    iget v6, p0, Landroid/widget/OverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .local v4, time:J
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-wide v6, v6, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    sub-long v1, v4, v6

    .local v1, elapsedTime:J
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v6, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .local v0, duration:I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .local v3, q:F
    iget-object v6, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    invoke-static {v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    :goto_2
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->updateScroll(F)V

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->updateScroll(F)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .end local v3           #q:F
    :cond_3
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_1

    .end local v0           #duration:I
    .end local v1           #elapsedTime:J
    .end local v4           #time:J
    :pswitch_1
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-boolean v6, v6, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$MagneticOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$MagneticOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$MagneticOverScroller;->finish()V

    :cond_4
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-boolean v6, v6, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$MagneticOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$MagneticOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$MagneticOverScroller;->finish()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .parameter "extend"

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$MagneticOverScroller;->extendDuration(I)V

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$MagneticOverScroller;->extendDuration(I)V

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "overX"
    .parameter "overY"

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$MagneticOverScroller;->fling(IIIII)V

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$MagneticOverScroller;->fling(IIIII)V

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .parameter "finished"

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iput-boolean p1, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    iput-boolean p1, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v1, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v2, v2, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    mul-float v0, v1, v2

    .local v0, squaredNorm:F
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v1, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v2, v2, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getDuration()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v1, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    #getter for: Landroid/widget/OverScroller$MagneticOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OverScroller$MagneticOverScroller;->access$000(Landroid/widget/OverScroller$MagneticOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    #getter for: Landroid/widget/OverScroller$MagneticOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OverScroller$MagneticOverScroller;->access$000(Landroid/widget/OverScroller$MagneticOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .parameter "startX"
    .parameter "finalX"
    .parameter "overX"

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$MagneticOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .parameter "startY"
    .parameter "finalY"
    .parameter "overY"

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$MagneticOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .parameter "newX"

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$MagneticOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .parameter "newY"

    .prologue
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$MagneticOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .parameter "startX"
    .parameter "startY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    const/4 v3, 0x1

    iput v3, p0, Landroid/widget/OverScroller;->mMode:I

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v2, p1, p3, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    move-result v0

    .local v0, spingbackX:Z
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v2, p2, p5, p6}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    move-result v1

    .local v1, spingbackY:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
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

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OverScroller$MagneticOverScroller;->startScroll(III)V

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/OverScroller$MagneticOverScroller;->startScroll(III)V

    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .local v2, time:J
    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-wide v4, v4, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$MagneticOverScroller;

    iget-wide v6, v6, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .local v0, startTime:J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
