.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$Description;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field mCycleFlip:Z

.field private mDetachWallpaper:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mMore:Z

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Landroid/view/animation/Transformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field mTransformation:Landroid/view/animation/Transformation;

.field private mZAdjustment:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 98
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 104
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 110
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 116
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 122
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 127
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 149
    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 154
    iput v2, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 161
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 181
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 183
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 184
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 186
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 187
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 188
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 189
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 196
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 98
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 104
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 110
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 116
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 122
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 127
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 132
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 149
    iput v4, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 154
    iput v4, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 161
    iput v5, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 181
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 183
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 184
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 186
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 187
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 188
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 189
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 207
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 209
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 210
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 212
    const/16 v2, 0x8

    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 213
    const/4 v2, 0x2

    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 214
    const/4 v2, 0x3

    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 216
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 217
    .local v1, resID:I
    if-lez v1, :cond_0

    .line 218
    invoke-virtual {p0, p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 221
    :cond_0
    const/4 v2, 0x5

    iget v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 222
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 224
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 226
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 228
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 230
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 840
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 270
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 272
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 275
    :cond_1
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 277
    return-void
.end method

.method protected clone()Landroid/view/animation/Animation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 236
    .local v0, animation:Landroid/view/animation/Animation;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 237
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 238
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 239
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 240
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 4

    .prologue
    .line 724
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 285
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 287
    :cond_0
    return-void
.end method

.method protected ensureInterpolator()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 713
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 715
    :cond_0
    return-void
.end method

.method public getDetachWallpaper()Z
    .locals 1

    .prologue
    .line 669
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 596
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    return-wide v0
.end method

.method public getFillAfter()Z
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return v0
.end method

.method public getFillBefore()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .locals 9
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "invalidate"
    .parameter "transformation"

    .prologue
    const/high16 v8, -0x4080

    .line 879
    iget-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 880
    .local v2, tempRegion:Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 882
    .local v0, previousRegion:Landroid/graphics/RectF;
    int-to-float v4, p1

    int-to-float v5, p2

    int-to-float v6, p3

    int-to-float v7, p4

    invoke-virtual {p5, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 883
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 885
    invoke-virtual {p5, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 886
    invoke-virtual {v2, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 887
    invoke-virtual {p5, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 889
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 891
    iget-object v3, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 892
    .local v3, tempTransformation:Landroid/view/animation/Transformation;
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 894
    .local v1, previousTransformation:Landroid/view/animation/Transformation;
    invoke-virtual {v3, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 895
    invoke-virtual {p6, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 896
    invoke-virtual {v1, v3}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 897
    return-void
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    .prologue
    .line 606
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 586
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 11
    .parameter "currentTime"
    .parameter "outTransformation"

    .prologue
    .line 738
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 739
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 742
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v5

    .line 743
    .local v5, startOffset:J
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 745
    .local v0, duration:J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-eqz v7, :cond_a

    .line 746
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    add-long/2addr v7, v5

    sub-long v7, p1, v7

    long-to-float v7, v7

    long-to-float v8, v0

    div-float v4, v7, v8

    .line 753
    .local v4, normalizedTime:F
    :goto_0
    const/high16 v7, 0x3f80

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_c

    const/4 v7, 0x1

    move v2, v7

    .line 754
    .local v2, expired:Z
    :goto_1
    if-nez v2, :cond_d

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 756
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-nez v7, :cond_1

    const/high16 v7, 0x3f80

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 758
    :cond_1
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-gez v7, :cond_2

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v7, :cond_8

    :cond_2
    const/high16 v7, 0x3f80

    cmpg-float v7, v4, v7

    if-lez v7, :cond_3

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    if-eqz v7, :cond_8

    .line 759
    :cond_3
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez v7, :cond_5

    .line 760
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v7, :cond_4

    .line 761
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v7, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 763
    :cond_4
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 766
    :cond_5
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-eqz v7, :cond_6

    const/high16 v7, 0x3f80

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 768
    :cond_6
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-eqz v7, :cond_7

    .line 769
    const/high16 v7, 0x3f80

    sub-float v4, v7, v4

    .line 772
    :cond_7
    iget-object v7, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 773
    .local v3, interpolatedTime:F
    invoke-virtual {p0, v3, p3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 776
    .end local v3           #interpolatedTime:F
    :cond_8
    if-eqz v2, :cond_9

    .line 777
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    iget v8, p0, Landroid/view/animation/Animation;->mRepeated:I

    if-ne v7, v8, :cond_e

    .line 778
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v7, :cond_9

    .line 779
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 780
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v7, :cond_9

    .line 781
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v7, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 802
    :cond_9
    :goto_3
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    if-nez v7, :cond_12

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    if-eqz v7, :cond_12

    .line 803
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 804
    const/4 v7, 0x1

    .line 807
    :goto_4
    return v7

    .line 750
    .end local v2           #expired:Z
    .end local v4           #normalizedTime:F
    :cond_a
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    cmp-long v7, p1, v7

    if-gez v7, :cond_b

    const/4 v7, 0x0

    move v4, v7

    .restart local v4       #normalizedTime:F
    :goto_5
    goto/16 :goto_0

    .end local v4           #normalizedTime:F
    :cond_b
    const/high16 v7, 0x3f80

    move v4, v7

    goto :goto_5

    .line 753
    .restart local v4       #normalizedTime:F
    :cond_c
    const/4 v7, 0x0

    move v2, v7

    goto/16 :goto_1

    .line 754
    .restart local v2       #expired:Z
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 785
    :cond_e
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-lez v7, :cond_f

    .line 786
    iget v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 789
    :cond_f
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    .line 790
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-nez v7, :cond_11

    const/4 v7, 0x1

    :goto_6
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 793
    :cond_10
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 794
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 796
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v7, :cond_9

    .line 797
    iget-object v7, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v7, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 790
    :cond_11
    const/4 v7, 0x0

    goto :goto_6

    .line 807
    :cond_12
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    goto :goto_4
.end method

.method public getZAdjustment()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return v0
.end method

.method public hasEnded()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    return v0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 317
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v6, -0x4080

    .line 908
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 909
    .local v1, region:Landroid/graphics/RectF;
    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 911
    invoke-virtual {v1, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 912
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v2, :cond_0

    .line 913
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 914
    .local v0, previousTransformation:Landroid/view/animation/Transformation;
    iget-object v2, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p0, v2, v0}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 916
    .end local v0           #previousTransformation:Landroid/view/animation/Transformation;
    :cond_0
    return-void
.end method

.method public isFillEnabled()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 250
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 251
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 252
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 253
    iput v1, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 254
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 255
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 256
    return-void
.end method

.method protected resolveSize(IFII)F
    .locals 1
    .parameter "type"
    .parameter "value"
    .parameter "size"
    .parameter "parentSize"

    .prologue
    .line 854
    packed-switch p1, :pswitch_data_0

    move v0, p2

    .line 862
    :goto_0
    return v0

    :pswitch_0
    move v0, p2

    .line 856
    goto :goto_0

    .line 858
    :pswitch_1
    int-to-float v0, p3

    mul-float/2addr v0, p2

    goto :goto_0

    .line 860
    :pswitch_2
    int-to-float v0, p4

    mul-float/2addr v0, p2

    goto :goto_0

    .line 854
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restrictDuration(J)V
    .locals 9
    .parameter "durationMillis"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 382
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    .line 383
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 384
    iput-wide v7, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 385
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    iget-wide v4, p0, Landroid/view/animation/Animation;->mStartOffset:J

    add-long v0, v2, v4

    .line 390
    .local v0, dur:J
    cmp-long v2, v0, p1

    if-lez v2, :cond_2

    .line 391
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    sub-long v2, p1, v2

    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 392
    move-wide v0, p1

    .line 395
    :cond_2
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_3

    .line 396
    iput-wide v7, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 397
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    goto :goto_0

    .line 403
    :cond_3
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-ltz v2, :cond_4

    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_4

    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    .line 407
    :cond_4
    div-long v2, p1, v0

    long-to-int v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 408
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-gez v2, :cond_0

    .line 409
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    goto :goto_0
.end method

.method public scaleCurrentDuration(F)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 420
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 421
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 704
    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 705
    return-void
.end method

.method public setDetachWallpaper(Z)V
    .locals 0
    .parameter "detachWallpaper"

    .prologue
    .line 565
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 566
    return-void
.end method

.method public setDuration(J)V
    .locals 2
    .parameter "durationMillis"

    .prologue
    .line 365
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 369
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0
    .parameter "fillAfter"

    .prologue
    .line 541
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 542
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0
    .parameter "fillBefore"

    .prologue
    .line 524
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 525
    return-void
.end method

.method public setFillEnabled(Z)V
    .locals 0
    .parameter "fillEnabled"

    .prologue
    .line 507
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 508
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resID"

    .prologue
    .line 328
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 329
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 339
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 340
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .parameter "repeatCount"

    .prologue
    .line 479
    if-gez p1, :cond_0

    .line 480
    const/4 p1, -0x1

    .line 482
    :cond_0
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 483
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .parameter "repeatMode"

    .prologue
    .line 466
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 467
    return-void
.end method

.method public setStartOffset(J)V
    .locals 0
    .parameter "startOffset"

    .prologue
    .line 352
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 353
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .parameter "startTimeMillis"

    .prologue
    const/4 v0, 0x0

    .line 434
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 435
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 436
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 437
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 439
    return-void
.end method

.method public setZAdjustment(I)V
    .locals 0
    .parameter "zAdjustment"

    .prologue
    .line 552
    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    .line 553
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 446
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 447
    return-void
.end method

.method public startNow()V
    .locals 2

    .prologue
    .line 454
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 455
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x1

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x1

    return v0
.end method
