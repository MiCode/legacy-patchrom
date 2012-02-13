.class public Lcom/motorola/android/widget/tiltscroll/TiltScroll;
.super Ljava/lang/Object;
.source "TiltScroll.java"


# static fields
.field private static final MIN_SCROLL_VELOCITY_THRESH:I = 0x32

.field private static final TAG:Ljava/lang/String; = "TiltScroll"

.field private static final TILT_SCROLL_DIFFERENT_SIGN:I = 0x2

.field private static final TILT_SCROLL_INIT:I = 0x0

.field private static final TILT_SCROLL_MAX_ANGLE:I = 0x4

.field private static final TILT_SCROLL_SAME_SIGN:I = 0x1

.field private static final TILT_SCROLL_SAME_SIGN_RAMP:I = 0x3


# instance fields
.field private angleMax:F

.field private angleMin:F

.field private decayRate:F

.field private mCurrentTime:J

.field private mIntercept:F

.field private mModelled:Z

.field private mScrollDir:I

.field private mScrollStopped:Z

.field private mSlope:F

.field private mTiltDir:I

.field private mTiltScrollState:I

.field private mTimeLatest:J

.field private mUserFlingTime:J

.field private mVelocityLatest:F

.field private rampRate:F

.field private velocityMax:F

.field private velocityMin:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 5
    .parameter "aMax"
    .parameter "aMin"
    .parameter "vMax"
    .parameter "vMin"
    .parameter "dRate"
    .parameter "rRate"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mScrollDir:I

    iput v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltDir:I

    iput v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltScrollState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mScrollStopped:Z

    iput v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mScrollDir:I

    iput v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltDir:I

    iput-boolean v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mModelled:Z

    iput v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mSlope:F

    iput v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    iput p1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMax:F

    iput p2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMin:F

    iput p3, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMax:F

    iput p4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMin:F

    iput p5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->decayRate:F

    iput p6, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->rampRate:F

    iput v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mVelocityLatest:F

    iput-wide v3, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTimeLatest:J

    iput-wide v3, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mUserFlingTime:J

    const-string v0, "TiltScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: angleMax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMax:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " angleMin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " velocityMax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMax:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " velocityMin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " decayRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->decayRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rampRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->rampRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private calculateCurrentVelocity(FFF)F
    .locals 4
    .parameter "initialVelocity"
    .parameter "initialTime"
    .parameter "timeRemaining"

    .prologue
    mul-float v1, p1, p3

    iget-wide v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mCurrentTime:J

    long-to-float v2, v2

    sub-float/2addr v2, p2

    add-float/2addr v2, p3

    div-float v0, v1, v2

    .local v0, currentVelocity:F
    return v0
.end method

.method private findSlopeIntercept(FFFF)V
    .locals 2
    .parameter "y2"
    .parameter "y1"
    .parameter "x2"
    .parameter "x1"

    .prologue
    const/4 v1, 0x0

    cmpl-float v0, p4, v1

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move p3, v0

    :goto_0
    cmpl-float v0, p4, v1

    if-lez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move p1, v0

    :goto_1
    sub-float v0, p1, p2

    sub-float v1, p3, p4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mSlope:F

    iget v0, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mSlope:F

    neg-float v1, p4

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    return-void

    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    move p3, v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    move p1, v0

    goto :goto_1
.end method

.method private getIdealVelocity(F)F
    .locals 6
    .parameter "angle"

    .prologue
    iget v3, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMax:F

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMin:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMax:F

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMin:F

    sub-float/2addr v4, v5

    div-float v2, v3, v4

    .local v2, tSlope:F
    iget v3, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMin:F

    neg-float v3, v3

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMin:F

    add-float v1, v3, v4

    .local v1, tIntercept:F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v2

    add-float v0, v3, v1

    .local v0, tIdealVelocity:F
    return v0
.end method

.method private setFlingVelocity(F)F
    .locals 3
    .parameter "velocity"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->setVelocityLimits(F)F

    move-result v0

    .local v0, flingVelocity:F
    iput v0, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mVelocityLatest:F

    iget-wide v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mCurrentTime:J

    iput-wide v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTimeLatest:J

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mScrollDir:I

    return v0

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private setVelocityLimits(F)F
    .locals 4
    .parameter "velocity"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, tVelocity:F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMin:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    cmpl-float v1, p1, v3

    if-lez v1, :cond_0

    iget v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMin:F

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMin:F

    neg-float v1, v1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMax:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    cmpl-float v1, p1, v3

    if-lez v1, :cond_2

    iget v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMax:F

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMax:F

    neg-float v1, v1

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method private updateIntercept(FF)V
    .locals 5
    .parameter "rate"
    .parameter "angle"

    .prologue
    iget-wide v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mCurrentTime:J

    iget-wide v3, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTimeLatest:J

    sub-long/2addr v1, v3

    long-to-float v0, v1

    .local v0, tTimeDelay:F
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    mul-float v2, p1, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    mul-float v2, p1, v0

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    goto :goto_0
.end method


# virtual methods
.method public calculateVelocity(FF)F
    .locals 11
    .parameter "angle"
    .parameter "currentVelocity"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, " intercept:"

    const-string v6, "TiltScroll"

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, absAngle:F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .local v1, absCurrentVelocity:F
    const/4 v2, 0x0

    .local v2, flingVelocity:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mCurrentTime:J

    const-string v4, "TiltScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateVelocity angle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " slope:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mSlope:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intercept:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v4, p1, v8

    if-lez v4, :cond_0

    move v4, v7

    :goto_0
    iput v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltDir:I

    iget-boolean v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mScrollStopped:Z

    if-ne v4, v7, :cond_1

    move v4, v8

    :goto_1
    return v4

    :cond_0
    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    const/high16 v4, 0x4248

    cmpl-float v4, v1, v4

    if-lez v4, :cond_f

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMin:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_f

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMax:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_f

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mScrollDir:I

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltDir:I

    if-ne v4, v5, :cond_9

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltScrollState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iput v7, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltScrollState:I

    :cond_2
    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltScrollState:I

    if-ne v4, v7, :cond_5

    iget-boolean v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mModelled:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMax:F

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMax:F

    invoke-direct {p0, v4, p2, v5, p1}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->findSlopeIntercept(FFFF)V

    iput-boolean v7, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mModelled:Z

    const-string v4, "TiltScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcVel SAME_SIGN currentVelocity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " slope:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mSlope:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intercept:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->rampRate:F

    invoke-direct {p0, v4, p1}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->updateIntercept(FF)V

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mSlope:F

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    add-float v2, v4, v5

    invoke-direct {p0, v2}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->setFlingVelocity(F)F

    move-result v2

    const-string v4, "TiltScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcVel SAME_SIGN flingVelocity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Intercept:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    const-string v4, "TiltScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateVelocity FOR_PLOT angle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " velocity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    goto/16 :goto_1

    :cond_5
    iget-boolean v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mModelled:Z

    if-nez v4, :cond_6

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMax:F

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMax:F

    invoke-direct {p0, v4, v8, v5, p1}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->findSlopeIntercept(FFFF)V

    iput-boolean v7, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mModelled:Z

    const-string v4, "TiltScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcVel SAME_SIGN_RAMP slope:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mSlope:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intercept:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->decayRate:F

    invoke-direct {p0, v4, p1}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->updateIntercept(FF)V

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mSlope:F

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    add-float v2, v4, v5

    invoke-direct {p0, p1}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->getIdealVelocity(F)F

    move-result v3

    .local v3, tIdealVelocity:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    const-string v4, "TiltScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcVel SAME_SIGN_RAMP flingVelocity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v4, v2, v8

    if-lez v4, :cond_8

    move v2, v3

    :goto_3
    iput v7, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltScrollState:I

    iput-boolean v10, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mModelled:Z

    :cond_7
    invoke-direct {p0, v2}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->setFlingVelocity(F)F

    move-result v2

    const-string v4, "TiltScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcVel SAME_SIGN_RAMP flingVelocity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intercept:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    neg-float v4, v3

    move v2, v4

    goto :goto_3

    .end local v3           #tIdealVelocity:F
    :cond_9
    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltScrollState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_a

    const/4 v4, 0x2

    iput v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltScrollState:I

    iput-boolean v10, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mModelled:Z

    :cond_a
    iget-boolean v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mModelled:Z

    if-nez v4, :cond_b

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMax:F

    invoke-direct {p0, v8, p2, v4, p1}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->findSlopeIntercept(FFFF)V

    iput-boolean v7, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mModelled:Z

    const-string v4, "TiltScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcVel DIFF_SIGN currentVelocity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " slope:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mSlope:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intercept:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->decayRate:F

    invoke-direct {p0, v4, p1}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->updateIntercept(FF)V

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mSlope:F

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    add-float v2, v4, v5

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mScrollDir:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    cmpg-float v4, v4, v8

    if-gez v4, :cond_c

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mScrollDir:I

    if-lez v4, :cond_e

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMin:F

    move v2, v4

    :goto_4
    const-string v4, "TiltScroll"

    const-string v4, "calcVel DIFF_SIGN sign changed"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-direct {p0, v2}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->setVelocityLimits(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMin:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_d

    const-string v4, "TiltScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcVel DIFF_SIGN flingVelocity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    neg-float v2, v2

    const/4 v4, 0x3

    iput v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltScrollState:I

    iput-boolean v10, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mModelled:Z

    :cond_d
    invoke-direct {p0, v2}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->setFlingVelocity(F)F

    move-result v2

    const-string v4, "TiltScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcVel DIFF_SIGN flingVelocity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intercept:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_e
    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->velocityMin:F

    neg-float v4, v4

    move v2, v4

    goto :goto_4

    :cond_f
    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->angleMax:F

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_4

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mVelocityLatest:F

    invoke-direct {p0, v4}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->setFlingVelocity(F)F

    move-result v2

    const/4 v4, 0x4

    iput v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTiltScrollState:I

    const-string v4, "TiltScroll"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcVel MAX_ANGLE flingVelocity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public calculateVelocity(FJ)F
    .locals 5
    .parameter "angle"
    .parameter "timeRemaining"

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mCurrentTime:J

    const-string v2, "TiltScroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateVelocity angle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slope:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mSlope:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intercept:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mIntercept:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mVelocityLatest:F

    iget-wide v3, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTimeLatest:J

    long-to-float v3, v3

    long-to-float v4, p2

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->calculateCurrentVelocity(FFF)F

    move-result v0

    .local v0, currentVelocity:F
    invoke-virtual {p0, p1, v0}, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->calculateVelocity(FF)F

    move-result v1

    .local v1, newVel:F
    return v1
.end method

.method public setStartVelocity(F)V
    .locals 4
    .parameter "sVelocity"

    .prologue
    const/4 v3, 0x0

    const-string v0, "TiltScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartVel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mScrollDir:I

    iput p1, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mVelocityLatest:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTimeLatest:J

    iget-wide v0, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mTimeLatest:J

    iput-wide v0, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mUserFlingTime:J

    iput-boolean v3, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mModelled:Z

    iput-boolean v3, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mScrollStopped:Z

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public stopScroll()V
    .locals 2

    .prologue
    const-string v0, "TiltScroll"

    const-string v1, "StopScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mModelled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/widget/tiltscroll/TiltScroll;->mScrollStopped:Z

    return-void
.end method
