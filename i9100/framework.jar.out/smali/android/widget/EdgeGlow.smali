.class public Landroid/widget/EdgeGlow;
.super Ljava/lang/Object;
.source "EdgeGlow.java"


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 0.8f

.field public static MAX_EDGE_SCALE_Y:F = 0.0f

.field private static final MAX_GLOW_HEIGHT:F = 3.0f

.field public static MAX_GLOW_SCALE_Y:F = 0.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x5

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x5

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeGlow"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private isTouchWiz:Z

.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    const/high16 v0, 0x3f80

    sput v0, Landroid/widget/EdgeGlow;->MAX_EDGE_SCALE_Y:F

    .line 176
    const/high16 v0, 0x4080

    sput v0, Landroid/widget/EdgeGlow;->MAX_GLOW_SCALE_Y:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "edge"
    .parameter "glow"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 178
    iput-boolean v0, p0, Landroid/widget/EdgeGlow;->isTouchWiz:Z

    .line 103
    iput-object p1, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 104
    iput-object p2, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 106
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/EdgeGlow;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 107
    return-void
.end method

.method private update()V
    .locals 11

    .prologue
    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 307
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 308
    .local v3, time:J
    iget-wide v5, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeGlow;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 310
    .local v2, t:F
    iget-object v5, p0, Landroid/widget/EdgeGlow;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 312
    .local v1, interp:F
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    .line 313
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 314
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    .line 315
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 317
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 318
    iget v5, p0, Landroid/widget/EdgeGlow;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 320
    :pswitch_0
    const/4 v5, 0x3

    iput v5, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 321
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 322
    iput v10, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 324
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 325
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    .line 326
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 327
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 330
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 331
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 332
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 333
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    goto :goto_0

    .line 336
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 337
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 338
    iput v10, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 340
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 341
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    .line 342
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 343
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 346
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 347
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 348
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 349
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    goto :goto_0

    .line 354
    :pswitch_2
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v5, v9, v5

    move v0, v5

    .line 357
    .local v0, factor:F
    :goto_1
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    goto :goto_0

    .line 354
    .end local v0           #factor:F
    :cond_1
    const v5, 0x7f7fffff

    move v0, v5

    goto :goto_1

    .line 362
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/EdgeGlow;->mState:I

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x437f

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 282
    iget-boolean v3, p0, Landroid/widget/EdgeGlow;->isTouchWiz:Z

    if-nez v3, :cond_0

    .line 283
    invoke-direct {p0}, Landroid/widget/EdgeGlow;->update()V

    .line 285
    :cond_0
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 286
    .local v1, edgeHeight:I
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 288
    .local v2, glowHeight:I
    iget v3, p0, Landroid/widget/EdgeGlow;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/EdgeGlow;->mWidth:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 290
    .local v0, distScale:F
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 293
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/widget/EdgeGlow;->mWidth:I

    neg-int v4, v4

    iget v5, p0, Landroid/widget/EdgeGlow;->mWidth:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v6, v2

    iget v7, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v0

    const v7, 0x3f19999a

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/widget/EdgeGlow;->mHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x4040

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v4, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 297
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 298
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/widget/EdgeGlow;->mWidth:I

    int-to-float v5, v1

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    iget-boolean v3, p0, Landroid/widget/EdgeGlow;->isTouchWiz:Z

    if-nez v3, :cond_1

    .line 301
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 303
    :cond_1
    iget v3, p0, Landroid/widget/EdgeGlow;->mState:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    move v3, v9

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 124
    return-void
.end method

.method public isFinished()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    iget-boolean v0, p0, Landroid/widget/EdgeGlow;->isTouchWiz:Z

    if-eqz v0, :cond_1

    .line 116
    iget v0, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    move v0, v3

    .line 118
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    iget v0, p0, Landroid/widget/EdgeGlow;->mState:I

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 238
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 239
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 241
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 242
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 246
    iput v3, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 247
    iput v3, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iput v3, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 250
    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 251
    iput v3, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 255
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 257
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 264
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    .line 266
    iget v0, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 268
    return-void
.end method

.method public onPull(F)V
    .locals 11
    .parameter "deltaDistance"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40a0

    const/high16 v8, 0x3f80

    const v6, 0x3f4ccccd

    const/4 v7, 0x0

    .line 132
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 133
    .local v2, now:J
    iget v4, p0, Landroid/widget/EdgeGlow;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeGlow;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 171
    :goto_0
    return-void

    .line 136
    :cond_0
    iget v4, p0, Landroid/widget/EdgeGlow;->mState:I

    if-eq v4, v10, :cond_1

    .line 137
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 139
    :cond_1
    iput v10, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 141
    iput-wide v2, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 142
    const/high16 v4, 0x4327

    iput v4, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 144
    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    .line 145
    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 147
    .local v0, distance:F
    const v4, 0x3f19999a

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    .line 148
    const/high16 v4, 0x3f00

    mul-float v5, v0, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 151
    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    .line 155
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 156
    .local v1, glowChange:F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 157
    neg-float v1, v1

    .line 159
    :cond_2
    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    .line 160
    iput v7, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 164
    :cond_3
    const/high16 v4, 0x4040

    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 167
    iget v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 168
    iget v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 169
    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 170
    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    goto/16 :goto_0
.end method

.method public onPull2(F)V
    .locals 2
    .parameter "factor"

    .prologue
    const/high16 v1, 0x3f80

    .line 190
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 191
    const/high16 p1, 0x3f80

    .line 193
    :cond_0
    iput p1, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    .line 195
    const/high16 v0, 0x4040

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 197
    iput v1, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v1, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    .line 198
    sget v0, Landroid/widget/EdgeGlow;->MAX_EDGE_SCALE_Y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 199
    sget v0, Landroid/widget/EdgeGlow;->MAX_GLOW_SCALE_Y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 200
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    iput v2, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    .line 213
    iget v0, p0, Landroid/widget/EdgeGlow;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/EdgeGlow;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 230
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 218
    iget v0, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 219
    iget v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    .line 220
    iget v0, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 221
    iget v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 223
    iput v2, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 224
    iput v2, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 225
    iput v2, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 226
    iput v2, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    .line 228
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 229
    const/high16 v0, 0x447a

    iput v0, p0, Landroid/widget/EdgeGlow;->mDuration:F

    goto :goto_0
.end method

.method public onRelease2()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 203
    iput v0, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    .line 204
    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 205
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 110
    iput p1, p0, Landroid/widget/EdgeGlow;->mWidth:I

    .line 111
    iput p2, p0, Landroid/widget/EdgeGlow;->mHeight:I

    .line 112
    return-void
.end method

.method public setTouchWiz(Z)V
    .locals 0
    .parameter "touchwiz"

    .prologue
    .line 181
    iput-boolean p1, p0, Landroid/widget/EdgeGlow;->isTouchWiz:Z

    .line 182
    return-void
.end method
