.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 36
    const/high16 v0, 0x3f00

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 41
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 47
    iput v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/high16 v0, 0x3f00

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 41
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 47
    iput v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v6, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 41
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 47
    iput v5, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 63
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 66
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 70
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 349
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 226
    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v7, p1, v7

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v7, v8

    .line 227
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 228
    .local v5, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 229
    .local v3, thumbHeight:I
    sub-int/2addr v0, v5

    .line 232
    iget v7, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 234
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 237
    .local v4, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_0

    .line 238
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 239
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 240
    .local v6, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 247
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 248
    return-void

    .line 242
    .end local v1           #bottomBound:I
    .end local v6           #topBound:I
    :cond_0
    move v6, p4

    .line 243
    .restart local v6       #topBound:I
    add-int v1, p4, v3

    .restart local v1       #bottomBound:I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 322
    .local v4, width:I
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 323
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 325
    .local v5, x:I
    const/4 v2, 0x0

    .line 326
    .local v2, progress:F
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v5, v6, :cond_0

    .line 327
    const/4 v3, 0x0

    .line 335
    .local v3, scale:F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 336
    .local v1, max:I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 338
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 339
    return-void

    .line 328
    .end local v1           #max:I
    .end local v3           #scale:F
    :cond_0
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_1

    .line 329
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 331
    .end local v3           #scale:F
    :cond_1
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 332
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 160
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 161
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 165
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 167
    .local v1, state:[I
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 169
    .end local v1           #state:[I
    :cond_1
    return-void

    .line 162
    :cond_2
    const/high16 v2, 0x437f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 253
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 257
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 258
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 372
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 374
    .local v0, progress:I
    packed-switch p1, :pswitch_data_0

    .line 389
    .end local v0           #progress:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 376
    .restart local v0       #progress:I
    :pswitch_0
    if-lez v0, :cond_0

    .line 377
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 378
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    move v1, v2

    .line 379
    goto :goto_0

    .line 382
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 383
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 384
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    move v1, v2

    .line 385
    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v3, v4

    .line 268
    .local v3, thumbHeight:I
    :goto_0
    const/4 v2, 0x0

    .line 269
    .local v2, dw:I
    const/4 v1, 0x0

    .line 270
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 271
    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 272
    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 273
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 275
    :cond_0
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 276
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 278
    invoke-static {v2, p1}, Landroid/widget/AbsSeekBar;->resolveSize(II)I

    move-result v4

    invoke-static {v1, p2}, Landroid/widget/AbsSeekBar;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 267
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    move v3, v4

    goto :goto_0

    .line 265
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 173
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 174
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 181
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 183
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 13
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 190
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    const/4 v8, 0x0

    move v6, v8

    .line 193
    .local v6, thumbHeight:I
    :goto_0
    iget v8, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v9, p2, v9

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 195
    .local v7, trackHeight:I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 196
    .local v3, max:I
    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    div-float/2addr v8, v9

    move v4, v8

    .line 198
    .local v4, scale:F
    :goto_1
    if-le v6, v7, :cond_4

    .line 199
    if-eqz v5, :cond_0

    .line 200
    const/4 v8, 0x0

    invoke-direct {p0, p1, v5, v4, v8}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 202
    :cond_0
    sub-int v8, v6, v7

    div-int/lit8 v2, v8, 0x2

    .line 203
    .local v2, gapForCenteringTrack:I
    if-eqz v0, :cond_1

    .line 205
    const/4 v8, 0x0

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    .end local v2           #gapForCenteringTrack:I
    :cond_1
    :goto_2
    return-void

    .line 190
    .end local v3           #max:I
    .end local v4           #scale:F
    .end local v6           #thumbHeight:I
    .end local v7           #trackHeight:I
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    move v6, v8

    goto :goto_0

    .line 196
    .restart local v3       #max:I
    .restart local v6       #thumbHeight:I
    .restart local v7       #trackHeight:I
    :cond_3
    const/4 v8, 0x0

    move v4, v8

    goto :goto_1

    .line 210
    .restart local v4       #scale:F
    :cond_4
    if-eqz v0, :cond_5

    .line 212
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v10, p1, v10

    iget v11, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v11, p2, v11

    iget v12, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v11, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    :cond_5
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 216
    .local v1, gap:I
    if-eqz v5, :cond_1

    .line 217
    invoke-direct {p0, p1, v5, v4, v1}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method

.method onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 284
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 317
    :goto_0
    return v0

    .line 288
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v2

    .line 317
    goto :goto_0

    .line 290
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 291
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 292
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 293
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_1

    .line 297
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 298
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 302
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 303
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 304
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 308
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_1

    .line 312
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 313
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 314
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_1

    .line 288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 1
    .parameter "increment"

    .prologue
    .line 125
    if-gez p1, :cond_0

    neg-int v0, p1

    :goto_0
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 126
    return-void

    :cond_0
    move v0, p1

    .line 125
    goto :goto_0
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 144
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 147
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_1
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "thumb"

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 96
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 98
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 114
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 115
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 116
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 153
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
