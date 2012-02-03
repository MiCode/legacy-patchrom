.class public Landroid/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$1;,
        Landroid/widget/ProgressBar$SavedState;,
        Landroid/widget/ProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATION_RESOLUTION:I = 0xc8

.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastDrawTime:J

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 166
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    .line 172
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initProgressBar()V

    .line 174
    sget-object v3, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 177
    .local v0, a:Landroid/content/res/TypedArray;
    iput-boolean v6, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 179
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 180
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 181
    invoke-direct {p0, v1, v5}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 184
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_0
    const/16 v3, 0x9

    iget v4, p0, Landroid/widget/ProgressBar;->mDuration:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 190
    const/16 v3, 0xb

    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 191
    iget v3, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 192
    const/16 v3, 0xc

    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 193
    iget v3, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 195
    const/16 v3, 0xa

    iget v4, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 197
    const/16 v3, 0xd

    const v4, 0x10a000b

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 200
    .local v2, resID:I
    if-lez v2, :cond_1

    .line 201
    invoke-virtual {p0, p1, v2}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 204
    :cond_1
    const/4 v3, 0x2

    iget v4, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 206
    const/4 v3, 0x3

    iget v4, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 208
    const/4 v3, 0x4

    iget v4, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 211
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_2

    .line 213
    invoke-direct {p0, v1}, Landroid/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 214
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_2
    const/4 v3, 0x6

    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 220
    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 222
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v3, :cond_3

    const/4 v3, 0x5

    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v3, v6

    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 225
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    return-void

    :cond_4
    move v3, v5

    .line 222
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/ProgressBar;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZ)V

    return-void
.end method

.method static synthetic access$102(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$RefreshProgressRunnable;)Landroid/widget/ProgressBar$RefreshProgressRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZ)V
    .locals 7
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    iget v5, p0, Landroid/widget/ProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Landroid/widget/ProgressBar;->mMax:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v4, v5

    .line 492
    .local v4, scale:F
    :goto_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 493
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 494
    const/4 v3, 0x0

    .line 496
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 497
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 500
    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 501
    .local v2, level:I
    if-eqz v3, :cond_3

    move-object v5, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 506
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 507
    invoke-virtual {p0, v4, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :cond_1
    monitor-exit p0

    return-void

    .line 491
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_2
    const/4 v5, 0x0

    move v4, v5

    goto :goto_0

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_3
    move-object v5, v1

    .line 501
    goto :goto_1

    .line 503
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 491
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 322
    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 323
    iput v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 324
    iput v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 325
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 326
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 327
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 328
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 329
    iput v2, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 330
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 331
    iput v2, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 332
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 333
    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 5
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 516
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :goto_0
    monitor-exit p0

    return-void

    .line 519
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    .line 521
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    .line 523
    .local v0, r:Landroid/widget/ProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    .line 524
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/ProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    .line 529
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    .end local v0           #r:Landroid/widget/ProgressBar$RefreshProgressRunnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 527
    :cond_1
    :try_start_2
    new-instance v0, Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #r:Landroid/widget/ProgressBar$RefreshProgressRunnable;
    goto :goto_1
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 19
    .parameter "drawable"
    .parameter "clip"

    .prologue
    .line 234
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 235
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    .line 236
    .local v5, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 237
    .local v4, N:I
    new-array v13, v4, [Landroid/graphics/drawable/Drawable;

    .line 239
    .local v13, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v4, :cond_2

    .line 240
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v8

    .line 241
    .local v8, id:I
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const v17, 0x102000d

    move v0, v8

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    const v17, 0x102000f

    move v0, v8

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    aput-object v16, v13, v7

    .line 239
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 241
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 245
    .end local v8           #id:I
    :cond_2
    new-instance v10, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v10, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 247
    .local v10, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_3

    .line 248
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v16

    move-object v0, v10

    move v1, v7

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 247
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v16, v10

    .line 278
    .end local v4           #N:I
    .end local v5           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v7           #i:I
    .end local v10           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v13           #outDrawables:[Landroid/graphics/drawable/Drawable;
    .end local p1
    :goto_3
    return-object v16

    .line 253
    .restart local p1
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 254
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    move-object v9, v0

    .line 255
    .local v9, in:Landroid/graphics/drawable/StateListDrawable;
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 256
    .local v12, out:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v11

    .line 257
    .local v11, numStates:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    if-ge v7, v11, :cond_5

    .line 258
    invoke-virtual {v9, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v16

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 257
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v16, v12

    .line 260
    goto :goto_3

    .line 262
    .end local v7           #i:I
    .end local v9           #in:Landroid/graphics/drawable/StateListDrawable;
    .end local v11           #numStates:I
    .end local v12           #out:Landroid/graphics/drawable/StateListDrawable;
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 263
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 264
    .local v15, tileBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    .line 265
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 268
    :cond_7
    new-instance v14, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 270
    .local v14, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v16, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v6

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 272
    .local v6, bitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v14}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 274
    if-eqz p2, :cond_8

    new-instance v16, Landroid/graphics/drawable/ClipDrawable;

    const/16 v17, 0x3

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move-object v1, v14

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    goto/16 :goto_3

    :cond_8
    move-object/from16 v16, v14

    goto/16 :goto_3

    .end local v6           #bitmapShader:Landroid/graphics/BitmapShader;
    .end local v14           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    .end local v15           #tileBitmap:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_9
    move-object/from16 v16, p1

    .line 278
    goto/16 :goto_3
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "drawable"

    .prologue
    const/16 v8, 0x2710

    .line 292
    instance-of v6, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v6, :cond_1

    .line 293
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    move-object v2, v0

    .line 294
    .local v2, background:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 295
    .local v1, N:I
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 296
    .local v5, newBg:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 298
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 299
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 300
    .local v3, frame:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 301
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 298
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 303
    .end local v3           #frame:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 304
    move-object p1, v5

    .line 306
    .end local v1           #N:I
    .end local v2           #background:Landroid/graphics/drawable/AnimationDrawable;
    .end local v4           #i:I
    .end local v5           #newBg:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 880
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 882
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 884
    .local v0, state:[I
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 888
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 891
    :cond_1
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 283
    .local v0, roundedCorners:[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 282
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    monitor-exit p0

    return-void

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "dr"

    .prologue
    .line 798
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 799
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 800
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 801
    .local v0, dirty:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mScrollX:I

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    add-int v1, v3, v4

    .line 802
    .local v1, scrollX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    add-int v2, v3, v4

    .line 804
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->invalidate(IIII)V

    .line 810
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 955
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 956
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    .line 959
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 963
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 964
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 967
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const-wide/16 v8, 0xc8

    .line 829
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 831
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 832
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 835
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 836
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 837
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v2

    .line 838
    .local v2, time:J
    iget-object v4, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_0

    .line 839
    iget-object v4, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v5}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 840
    iget-object v4, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 842
    .local v1, scale:F
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 843
    const v4, 0x461c4000

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 845
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 847
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/ProgressBar;->mLastDrawTime:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-ltz v4, :cond_0

    .line 848
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/ProgressBar;->mLastDrawTime:J

    .line 849
    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v4, v5}, Landroid/widget/ProgressBar;->postInvalidateDelayed(J)V

    .line 852
    .end local v1           #scale:F
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 853
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 854
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v4, :cond_1

    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_1

    .line 855
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 856
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 859
    .end local v2           #time:J
    :cond_1
    monitor-exit p0

    return-void

    .line 845
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #scale:F
    .restart local v2       #time:J
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 829
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #scale:F
    .end local v2           #time:J
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 863
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 865
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 866
    .local v2, dw:I
    const/4 v1, 0x0

    .line 867
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 868
    iget v3, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 869
    iget v3, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 871
    :cond_0
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 872
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 874
    invoke-static {v2, p1}, Landroid/widget/ProgressBar;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Landroid/widget/ProgressBar;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    monitor-exit p0

    return-void

    .line 863
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #dh:I
    .end local v2           #dw:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 0
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 512
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 946
    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar$SavedState;

    move-object v1, v0

    .line 947
    .local v1, ss:Landroid/widget/ProgressBar$SavedState;
    invoke-virtual {v1}, Landroid/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 949
    iget v2, v1, Landroid/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 950
    iget v2, v1, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 951
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 935
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 936
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 938
    .local v0, ss:Landroid/widget/ProgressBar$SavedState;
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    .line 939
    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 941
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    .line 815
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v1, v2, v3

    .line 816
    .local v1, right:I
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v0, v2, v3

    .line 818
    .local v0, bottom:I
    iget-object v2, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 819
    iget-object v2, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 822
    :cond_0
    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 823
    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 825
    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 784
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 786
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 788
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 789
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 794
    :cond_1
    :goto_0
    return-void

    .line 791
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 460
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 462
    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .parameter "indeterminate"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    .line 358
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 360
    if-eqz p1, :cond_2

    .line 362
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 363
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 365
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 394
    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 397
    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 398
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 399
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 400
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 402
    :cond_1
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resID"

    .prologue
    .line 743
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 744
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 753
    iput-object p1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 754
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 660
    monitor-enter p0

    if-gez p1, :cond_0

    .line 661
    const/4 p1, 0x0

    .line 663
    :cond_0
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_1

    .line 664
    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 665
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 667
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 668
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 669
    const v0, 0x102000d

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    :cond_1
    monitor-exit p0

    return-void

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .parameter "progress"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 546
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 555
    :cond_1
    if-gez p1, :cond_2

    .line 556
    const/4 p1, 0x0

    .line 559
    :cond_2
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 560
    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 563
    :cond_3
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-eq p1, v0, :cond_0

    .line 564
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 565
    const v0, 0x102000d

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 427
    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 432
    .local v0, drawableHeight:I
    iget v1, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_0

    .line 433
    iput v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 434
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 437
    .end local v0           #drawableHeight:I
    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 438
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v1, :cond_1

    .line 439
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 440
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 442
    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .parameter "secondaryProgress"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 583
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 587
    :cond_1
    if-gez p1, :cond_2

    .line 588
    const/4 p1, 0x0

    .line 591
    :cond_2
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 592
    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 595
    :cond_3
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_0

    .line 596
    iput p1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 597
    const v0, 0x102000f

    iget v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "v"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 768
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 769
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 771
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 773
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 774
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 780
    :cond_1
    :goto_0
    return-void

    .line 776
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 3

    .prologue
    .line 700
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    .line 708
    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 709
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 712
    :cond_2
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 713
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 714
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 715
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 716
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 717
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 718
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 719
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    goto :goto_0
.end method

.method stopAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 727
    iput-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 728
    iput-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 729
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 733
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 453
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
