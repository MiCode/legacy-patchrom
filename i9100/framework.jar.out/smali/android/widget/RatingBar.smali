.class public Landroid/widget/RatingBar;
.super Landroid/widget/AbsSeekBar;
.source "RatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RatingBar$OnRatingBarChangeListener;
    }
.end annotation


# instance fields
.field private mNumStars:I

.field private mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field private mProgressOnStartTracking:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 117
    const v0, 0x101007c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, -0x4080

    const/4 v6, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 89
    sget-object v4, Lcom/android/internal/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, a:Landroid/content/res/TypedArray;
    iget v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 92
    .local v1, numStars:I
    const/4 v4, 0x3

    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-nez v5, :cond_2

    move v5, v9

    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 93
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 94
    .local v2, rating:F
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 95
    .local v3, stepSize:F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    if-lez v1, :cond_0

    iget v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-eq v1, v4, :cond_0

    .line 98
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 101
    :cond_0
    cmpl-float v4, v3, v8

    if-ltz v4, :cond_3

    .line 102
    invoke-virtual {p0, v3}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 107
    :goto_1
    cmpl-float v4, v2, v8

    if-ltz v4, :cond_1

    .line 108
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 113
    :cond_1
    const v4, 0x3f8ccccd

    iput v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 114
    return-void

    .end local v2           #rating:F
    .end local v3           #stepSize:F
    :cond_2
    move v5, v6

    .line 92
    goto :goto_0

    .line 104
    .restart local v2       #rating:F
    .restart local v3       #stepSize:F
    :cond_3
    const/high16 v4, 0x3f00

    invoke-virtual {p0, v4}, Landroid/widget/RatingBar;->setStepSize(F)V

    goto :goto_1
.end method

.method private getProgressPerStar()F
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 233
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-lez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 236
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateSecondaryProgress(I)V
    .locals 7
    .parameter "progress"

    .prologue
    .line 267
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v1

    .line 268
    .local v1, ratio:F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 269
    int-to-float v3, p1

    div-float v0, v3, v1

    .line 270
    .local v0, progressInStars:F
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    float-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-int v2, v3

    .line 271
    .local v2, secondaryProgress:I
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setSecondaryProgress(I)V

    .line 273
    .end local v0           #progressInStars:F
    .end local v2           #secondaryProgress:I
    :cond_0
    return-void
.end method


# virtual methods
.method dispatchRatingChange(Z)V
    .locals 2
    .parameter "fromUser"

    .prologue
    .line 310
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    .line 314
    :cond_0
    return-void
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .prologue
    .line 243
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    return-object v0
.end method

.method public getNumStars()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    return v0
.end method

.method public getOnRatingBarChangeListener()Landroid/widget/RatingBar$OnRatingBarChangeListener;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    return-object v0
.end method

.method public getRating()F
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getStepSize()F
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isIndicator()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onKeyChange()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 307
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    .line 279
    iget-object v1, p0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/RatingBar;->mNumStars:I

    mul-int v0, v1, v2

    .line 283
    .local v0, width:I
    invoke-static {v0, p1}, Landroid/widget/RatingBar;->resolveSize(II)I

    move-result v1

    iget v2, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {p0, v1, v2}, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .end local v0           #width:I
    :cond_0
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method onProgressRefresh(FZ)V
    .locals 1
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZ)V

    .line 251
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/RatingBar;->updateSecondaryProgress(I)V

    .line 253
    if-nez p2, :cond_0

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 257
    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    .line 291
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 292
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 298
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    if-eq v0, v1, :cond_0

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 301
    :cond_0
    return-void
.end method

.method public setIsIndicator(Z)V
    .locals 3
    .parameter "isIndicator"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 149
    if-nez p1, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setFocusable(Z)V

    .line 150
    return-void

    :cond_0
    move v0, v1

    .line 148
    goto :goto_0

    :cond_1
    move v0, v1

    .line 149
    goto :goto_1
.end method

.method public declared-synchronized setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 319
    monitor-enter p0

    if-gtz p1, :cond_0

    .line 324
    :goto_0
    monitor-exit p0

    return-void

    .line 323
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNumStars(I)V
    .locals 0
    .parameter "numStars"

    .prologue
    .line 167
    if-gtz p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    iput p1, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 174
    invoke-virtual {p0}, Landroid/widget/RatingBar;->requestLayout()V

    goto :goto_0
.end method

.method public setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 130
    iput-object p1, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .line 131
    return-void
.end method

.method public setRating(F)V
    .locals 1
    .parameter "rating"

    .prologue
    .line 191
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setProgress(I)V

    .line 192
    return-void
.end method

.method public setStepSize(F)V
    .locals 4
    .parameter "stepSize"

    .prologue
    .line 210
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    iget v2, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v2, v2

    div-float v0, v2, p1

    .line 215
    .local v0, newMax:F
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 216
    .local v1, newProgress:I
    float-to-int v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setMax(I)V

    .line 217
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setProgress(I)V

    goto :goto_0
.end method
