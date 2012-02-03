.class public Landroid/webkit/WebviewScaleGestureDetector;
.super Ljava/lang/Object;
.source "WebviewScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebviewScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f


# instance fields
.field private mBottomSlopEdge:F

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field mCurrTilt:I

.field private final mEdgeSlop:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

.field mOnScaleBeginStart:J

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field mPrevTilt:I

.field private mRightSlopEdge:F

.field private mScaleFactor:F

.field private mSloppyGesture:Z

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevTilt:I

    .line 148
    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 149
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    .line 189
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 190
    .local v0, config:Landroid/view/ViewConfiguration;
    iput-object p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    .line 192
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    .line 193
    return-void
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 347
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v0, v1, v2

    .line 348
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v0, v1, v2

    .line 357
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 398
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 400
    iput-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 402
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 404
    iput-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 406
    :cond_1
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    .line 407
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 408
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 20
    .parameter "curr"

    .prologue
    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 364
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 366
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    .line 367
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    .line 368
    const/high16 v16, -0x4080

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object v9, v0

    .line 372
    .local v9, prev:Landroid/view/MotionEvent;
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 373
    .local v12, px0:F
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 374
    .local v14, py0:F
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 375
    .local v13, px1:F
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    .line 376
    .local v15, py1:F
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 377
    .local v5, cx0:F
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 378
    .local v7, cy0:F
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 379
    .local v6, cx1:F
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 381
    .local v8, cy1:F
    sub-float v10, v13, v12

    .line 382
    .local v10, pvx:F
    sub-float v11, v15, v14

    .line 383
    .local v11, pvy:F
    sub-float v3, v6, v5

    .line 384
    .local v3, cvx:F
    sub-float v4, v8, v7

    .line 385
    .local v4, cvy:F
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffX:F

    .line 386
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffY:F

    .line 387
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffX:F

    .line 388
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffY:F

    .line 390
    const/high16 v16, 0x3f00

    mul-float v16, v16, v3

    add-float v16, v16, v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 391
    const/high16 v16, 0x3f00

    mul-float v16, v16, v4

    add-float v16, v16, v7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebviewScaleGestureDetector;->mTimeDelta:J

    .line 393
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v16

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v17

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrPressure:F

    .line 394
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v16

    const/16 v17, 0x1

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v17

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevPressure:F

    .line 395
    return-void
.end method


# virtual methods
.method public getCurrTilt()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    return v0
.end method

.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 439
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 440
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffX:F

    .line 441
    .local v0, cvx:F
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffY:F

    .line 442
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    .line 444
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_0
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPrevTilt()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevTilt:I

    return v0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 454
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 455
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffX:F

    .line 456
    .local v0, pvx:F
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffY:F

    .line 457
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    .line 459
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_0
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 464
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 465
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    .line 467
    :cond_0
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 2

    .prologue
    .line 477
    iget-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onMREvent(Landroid/hardware/motion/MREvent;)V
    .locals 6
    .parameter "motionEvent"

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    .line 174
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    if-eqz v0, :cond_0

    .line 176
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevTilt:I

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getTilt()I

    move-result v0

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 182
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    .line 185
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 197
    .local v3, action:I
    const/4 v6, 0x1

    .line 199
    .local v6, handled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 200
    move v0, v3

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 205
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 206
    .local v8, metrics:Landroid/util/DisplayMetrics;
    move-object v0, v8

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    .line 207
    move-object v0, v8

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    .line 210
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    .line 212
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 213
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebviewScaleGestureDetector;->mTimeDelta:J

    .line 215
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    move v5, v0

    .line 222
    .local v5, edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    move v11, v0

    .line 223
    .local v11, rightSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    move v4, v0

    .line 224
    .local v4, bottomSlop:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 225
    .local v13, x0:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    .line 226
    .local v15, y0:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v14

    .line 227
    .local v14, x1:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 229
    .local v16, y1:F
    cmpg-float v17, v13, v5

    if-ltz v17, :cond_1

    cmpg-float v17, v15, v5

    if-ltz v17, :cond_1

    cmpl-float v17, v13, v11

    if-gtz v17, :cond_1

    cmpl-float v17, v15, v4

    if-lez v17, :cond_3

    :cond_1
    const/16 v17, 0x1

    move/from16 v9, v17

    .line 231
    .local v9, p0sloppy:Z
    :goto_1
    cmpg-float v17, v14, v5

    if-ltz v17, :cond_2

    cmpg-float v17, v16, v5

    if-ltz v17, :cond_2

    cmpl-float v17, v14, v11

    if-gtz v17, :cond_2

    cmpl-float v17, v16, v4

    if-lez v17, :cond_4

    :cond_2
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 234
    .local v10, p1sloppy:Z
    :goto_2
    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    .line 235
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 236
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 237
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 229
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    :cond_3
    const/16 v17, 0x0

    move/from16 v9, v17

    goto :goto_1

    .line 231
    .restart local v9       #p0sloppy:Z
    :cond_4
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_2

    .line 238
    .restart local v10       #p1sloppy:Z
    :cond_5
    if-eqz v9, :cond_6

    .line 239
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 240
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 241
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 242
    :cond_6
    if-eqz v10, :cond_7

    .line 243
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 244
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 245
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 247
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 253
    .end local v4           #bottomSlop:F
    .end local v5           #edgeSlop:F
    .end local v8           #metrics:Landroid/util/DisplayMetrics;
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    .end local v11           #rightSlop:F
    .end local v13           #x0:F
    .end local v14           #x1:F
    .end local v15           #y0:F
    .end local v16           #y1:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    move v5, v0

    .line 256
    .restart local v5       #edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    move v11, v0

    .line 257
    .restart local v11       #rightSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    move v4, v0

    .line 258
    .restart local v4       #bottomSlop:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 259
    .restart local v13       #x0:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    .line 260
    .restart local v15       #y0:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v14

    .line 261
    .restart local v14       #x1:F
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 263
    .restart local v16       #y1:F
    cmpg-float v17, v13, v5

    if-ltz v17, :cond_8

    cmpg-float v17, v15, v5

    if-ltz v17, :cond_8

    cmpl-float v17, v13, v11

    if-gtz v17, :cond_8

    cmpl-float v17, v15, v4

    if-lez v17, :cond_a

    :cond_8
    const/16 v17, 0x1

    move/from16 v9, v17

    .line 265
    .restart local v9       #p0sloppy:Z
    :goto_3
    cmpg-float v17, v14, v5

    if-ltz v17, :cond_9

    cmpg-float v17, v16, v5

    if-ltz v17, :cond_9

    cmpl-float v17, v14, v11

    if-gtz v17, :cond_9

    cmpl-float v17, v16, v4

    if-lez v17, :cond_b

    :cond_9
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 268
    .restart local v10       #p1sloppy:Z
    :goto_4
    if-eqz v9, :cond_c

    if-eqz v10, :cond_c

    .line 269
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 270
    const/high16 v17, -0x4080

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 263
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    :cond_a
    const/16 v17, 0x0

    move/from16 v9, v17

    goto :goto_3

    .line 265
    .restart local v9       #p0sloppy:Z
    :cond_b
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_4

    .line 271
    .restart local v10       #p1sloppy:Z
    :cond_c
    if-eqz v9, :cond_d

    .line 272
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 273
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 274
    :cond_d
    if-eqz v10, :cond_e

    .line 275
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 276
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 278
    :cond_e
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 285
    .end local v4           #bottomSlop:F
    .end local v5           #edgeSlop:F
    .end local v9           #p0sloppy:Z
    .end local v10           #p1sloppy:Z
    .end local v11           #rightSlop:F
    .end local v13           #x0:F
    .end local v14           #x1:F
    .end local v15           #y0:F
    .end local v16           #y1:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 287
    const v17, 0xff00

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x8

    if-nez v17, :cond_f

    const/16 v17, 0x1

    move/from16 v7, v17

    .line 289
    .local v7, id:I
    :goto_5
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 290
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 287
    .end local v7           #id:I
    :cond_f
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_5

    .line 296
    :cond_10
    move v0, v3

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    .line 323
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrPressure:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevPressure:F

    move/from16 v18, v0

    div-float v17, v17, v18

    const v18, 0x3f2b851f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v12

    .line 331
    .local v12, updatePrevious:Z
    if-eqz v12, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->recycle()V

    .line 333
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 299
    .end local v12           #updatePrevious:Z
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 302
    const v17, 0xff00

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x8

    if-nez v17, :cond_12

    const/16 v17, 0x1

    move/from16 v7, v17

    .line 304
    .restart local v7       #id:I
    :goto_6
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 305
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 307
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-nez v17, :cond_11

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 311
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 302
    .end local v7           #id:I
    :cond_12
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_6

    .line 315
    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v17, v0

    if-nez v17, :cond_13

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 319
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 296
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public setCurrTilt(I)I
    .locals 1
    .parameter "newTilt"

    .prologue
    .line 161
    iput p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 162
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    return v0
.end method

.method public setIsInProgress(Z)V
    .locals 0
    .parameter "InProgress"

    .prologue
    .line 419
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 420
    return-void
.end method

.method public setTiltStartTime(J)J
    .locals 2
    .parameter "start"

    .prologue
    .line 166
    iput-wide p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    .line 167
    iget-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    return-wide v0
.end method
