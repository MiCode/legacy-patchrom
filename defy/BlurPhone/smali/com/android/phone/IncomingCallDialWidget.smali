.class public Lcom/android/phone/IncomingCallDialWidget;
.super Landroid/view/View;
.source "IncomingCallDialWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallDialWidget$OnDialTriggerListener;
    }
.end annotation


# static fields
.field private static final ARROW_YPOS_ADJUST_DIP:I = 0x1e

.field private static final BACKGROUND_BOTTOM_PADDING_DIP:I = 0x0

.field private static final DBG:Z = false

.field private static final EDGE_THRESHOLD_DIP:I = 0x46

.field private static final LEFT_HANDLE_GRABBED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "IncomingCallDialWidget"

.field private static final NOTHING_GRABBED:I = 0x0

.field private static final RIGHT_HANDLE_GRABBED:I = 0x2

.field private static final VIBRATE_LONG:J = 0x64L

.field private static final VIBRATE_SHORT:J = 0x3cL


# instance fields
.field private mArrowLongLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowLongRight:Landroid/graphics/drawable/Drawable;

.field private mArrowShortLeftAndRight:Landroid/graphics/drawable/Drawable;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mDeltaX:I

.field private mDeltaY:I

.field private mDensity:F

.field private mDialTheta:F

.field private mDimple:Landroid/graphics/drawable/Drawable;

.field private mDownX:I

.field private mDownY:I

.field private mGrabbedState:I

.field private mHandleTrackRadius:I

.field private mIconOffsetRadians:F

.field private mKnobRadius:I

.field private mKnobY:I

.field private final mLeftHandleBounds:Landroid/graphics/Rect;

.field private mLeftHandleIcon:Landroid/graphics/drawable/Drawable;

.field private mLeftHandleX:I

.field private mLeftHandleY:I

.field private mOnDialTriggerListener:Lcom/android/phone/IncomingCallDialWidget$OnDialTriggerListener;

.field private final mRightHandleBounds:Landroid/graphics/Rect;

.field private mRightHandleIcon:Landroid/graphics/drawable/Drawable;

.field private mRightHandleX:I

.field private mRightHandleY:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleBounds:Landroid/graphics/Rect;

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleBounds:Landroid/graphics/Rect;

    .line 83
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallDialWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mDensity:F

    .line 124
    const v1, 0x7f020165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 125
    const v1, 0x7f020166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mDimple:Landroid/graphics/drawable/Drawable;

    .line 127
    const v1, 0x7f02015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mArrowLongLeft:Landroid/graphics/drawable/Drawable;

    .line 128
    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mArrowLongRight:Landroid/graphics/drawable/Drawable;

    .line 129
    const v1, 0x7f020163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mArrowShortLeftAndRight:Landroid/graphics/drawable/Drawable;

    .line 130
    return-void
.end method

.method private computeHandlePositions()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 519
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallDialWidget;->getWidth()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    .line 520
    .local v0, handleApogeeX:I
    iget v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mKnobY:I

    iget v7, p0, Lcom/android/phone/IncomingCallDialWidget;->mHandleTrackRadius:I

    sub-int v1, v6, v7

    .line 528
    .local v1, handleApogeeY:I
    iget v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mDialTheta:F

    iget v7, p0, Lcom/android/phone/IncomingCallDialWidget;->mIconOffsetRadians:F

    add-float v2, v6, v7

    .line 529
    .local v2, leftHandleTheta:F
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    neg-double v6, v6

    double-to-float v4, v6

    .line 530
    .local v4, xComponent:F
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float v5, v8, v6

    .line 533
    .local v5, yComponent:F
    iget v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mHandleTrackRadius:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    .line 534
    iget v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mHandleTrackRadius:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 537
    float-to-int v6, v4

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleX:I

    .line 538
    float-to-int v6, v5

    add-int/2addr v6, v1

    iput v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleY:I

    .line 548
    iget v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mDialTheta:F

    iget v7, p0, Lcom/android/phone/IncomingCallDialWidget;->mIconOffsetRadians:F

    sub-float v3, v6, v7

    .line 549
    .local v3, rightHandleTheta:F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    neg-double v6, v6

    double-to-float v4, v6

    .line 550
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float v5, v8, v6

    .line 553
    iget v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mHandleTrackRadius:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    .line 554
    iget v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mHandleTrackRadius:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 557
    float-to-int v6, v4

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleX:I

    .line 558
    float-to-int v6, v5

    add-int/2addr v6, v1

    iput v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleY:I

    .line 565
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichHandle"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/phone/IncomingCallDialWidget;->mOnDialTriggerListener:Lcom/android/phone/IncomingCallDialWidget$OnDialTriggerListener;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/phone/IncomingCallDialWidget;->mOnDialTriggerListener:Lcom/android/phone/IncomingCallDialWidget$OnDialTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/IncomingCallDialWidget$OnDialTriggerListener;->onDialTrigger(Landroid/view/View;I)V

    .line 641
    :cond_0
    return-void
.end method

.method private static drawCentered(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter "d"
    .parameter "c"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 615
    .local v1, w:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 618
    .local v0, h:I
    div-int/lit8 v2, v1, 0x2

    sub-int v2, p2, v2

    div-int/lit8 v3, v0, 0x2

    sub-int v3, p3, v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p2

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, p3

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 620
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 621
    return-void
.end method

.method private drawDimple(FLandroid/graphics/Canvas;)V
    .locals 10
    .parameter "offsetTheta"
    .parameter "canvas"

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallDialWidget;->getWidth()I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    .line 574
    .local v3, handleApogeeX:I
    iget v7, p0, Lcom/android/phone/IncomingCallDialWidget;->mKnobY:I

    iget v8, p0, Lcom/android/phone/IncomingCallDialWidget;->mHandleTrackRadius:I

    sub-int v4, v7, v8

    .line 576
    .local v4, handleApogeeY:I
    iget v7, p0, Lcom/android/phone/IncomingCallDialWidget;->mDialTheta:F

    add-float v0, v7, p1

    .line 578
    .local v0, dimpleTheta:F
    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    neg-double v7, v7

    double-to-float v5, v7

    .line 579
    .local v5, xComponent:F
    const/high16 v7, 0x3f80

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    sub-float v6, v7, v8

    .line 582
    .local v6, yComponent:F
    iget v7, p0, Lcom/android/phone/IncomingCallDialWidget;->mHandleTrackRadius:I

    int-to-float v7, v7

    mul-float/2addr v5, v7

    .line 583
    iget v7, p0, Lcom/android/phone/IncomingCallDialWidget;->mHandleTrackRadius:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    .line 586
    float-to-int v7, v5

    add-int v1, v3, v7

    .line 587
    .local v1, dimpleX:I
    float-to-int v7, v6

    add-int v2, v4, v7

    .line 595
    .local v2, dimpleY:I
    iget-object v7, p0, Lcom/android/phone/IncomingCallDialWidget;->mDimple:Landroid/graphics/drawable/Drawable;

    invoke-static {v7, p2, v1, v2}, Lcom/android/phone/IncomingCallDialWidget;->drawCentered(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;II)V

    .line 596
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 681
    const-string v0, "IncomingCallDialWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void
.end method

.method private onDownEvent(II)V
    .locals 4
    .parameter "eventX"
    .parameter "eventY"

    .prologue
    const-wide/16 v2, 0x3c

    const/4 v1, 0x0

    .line 379
    iput p1, p0, Lcom/android/phone/IncomingCallDialWidget;->mDownX:I

    .line 380
    iput p2, p0, Lcom/android/phone/IncomingCallDialWidget;->mDownY:I

    .line 381
    iput v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mDeltaY:I

    iput v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mDeltaX:I

    .line 395
    iget-object v0, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "- HIT! on left handle..."

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingCallDialWidget;->log(Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    .line 398
    invoke-direct {p0, v2, v3}, Lcom/android/phone/IncomingCallDialWidget;->vibrate(J)V

    .line 408
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallDialWidget;->invalidate()V

    .line 409
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    const-string v0, "- HIT! on right handle..."

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingCallDialWidget;->log(Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    .line 402
    invoke-direct {p0, v2, v3}, Lcom/android/phone/IncomingCallDialWidget;->vibrate(J)V

    goto :goto_0

    .line 405
    :cond_1
    iput v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    goto :goto_0
.end method

.method private onMoveEvent(II)V
    .locals 9
    .parameter "eventX"
    .parameter "eventY"

    .prologue
    .line 421
    iget v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    if-eqz v5, :cond_1

    .line 422
    iget v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mDownX:I

    sub-int v5, p1, v5

    iput v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mDeltaX:I

    .line 423
    iget v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mDownY:I

    sub-int v5, p2, v5

    iput v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mDeltaY:I

    .line 433
    iget v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mDeltaX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mHandleTrackRadius:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 435
    .local v2, normalizedDeltaX:F
    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    invoke-static {v2, v5, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    .line 438
    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mDeltaY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/phone/IncomingCallDialWidget;->mHandleTrackRadius:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v3, v5, v6

    .line 440
    .local v3, normalizedDeltaY:F
    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-static {v3, v5, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    .line 450
    float-to-double v5, v3

    float-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    const-wide v7, 0x3ff921fb54442d18L

    sub-double/2addr v5, v7

    double-to-float v1, v5

    .line 454
    .local v1, newTheta:F
    iput v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mDialTheta:F

    .line 466
    invoke-direct {p0}, Lcom/android/phone/IncomingCallDialWidget;->computeHandlePositions()V

    .line 468
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallDialWidget;->getWidth()I

    move-result v4

    .line 469
    .local v4, width:I
    const/high16 v5, 0x428c

    iget v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 472
    .local v0, EDGE_THRESHOLD:I
    iget v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleX:I

    sub-int v6, v4, v0

    if-le v5, v6, :cond_2

    .line 475
    const-wide/16 v5, 0x64

    invoke-direct {p0, v5, v6}, Lcom/android/phone/IncomingCallDialWidget;->vibrate(J)V

    .line 476
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    .line 477
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/phone/IncomingCallDialWidget;->dispatchTriggerEvent(I)V

    .line 485
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallDialWidget;->invalidate()V

    .line 489
    .end local v0           #EDGE_THRESHOLD:I
    .end local v1           #newTheta:F
    .end local v2           #normalizedDeltaX:F
    .end local v3           #normalizedDeltaY:F
    .end local v4           #width:I
    :cond_1
    return-void

    .line 478
    .restart local v0       #EDGE_THRESHOLD:I
    .restart local v1       #newTheta:F
    .restart local v2       #normalizedDeltaX:F
    .restart local v3       #normalizedDeltaY:F
    .restart local v4       #width:I
    :cond_2
    iget v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleX:I

    if-ge v5, v0, :cond_0

    .line 481
    const-wide/16 v5, 0x64

    invoke-direct {p0, v5, v6}, Lcom/android/phone/IncomingCallDialWidget;->vibrate(J)V

    .line 482
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    .line 483
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/phone/IncomingCallDialWidget;->dispatchTriggerEvent(I)V

    goto :goto_0
.end method

.method private onUpEvent(II)V
    .locals 0
    .parameter "eventX"
    .parameter "eventY"

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/android/phone/IncomingCallDialWidget;->reset()V

    .line 500
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallDialWidget;->invalidate()V

    .line 501
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallDialWidget;->mDialTheta:F

    .line 508
    iput v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    .line 509
    iput v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mDeltaY:I

    iput v1, p0, Lcom/android/phone/IncomingCallDialWidget;->mDeltaX:I

    .line 510
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 602
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallDialWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingCallDialWidget;->mVibrator:Landroid/os/Vibrator;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallDialWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    monitor-exit p0

    return-void

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallDialWidget;->getHeight()I

    move-result v8

    .line 248
    .local v8, height:I
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 249
    .local v6, backgroundW:I
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 250
    .local v5, backgroundH:I
    const/4 v10, 0x0

    iget v11, p0, Lcom/android/phone/IncomingCallDialWidget;->mDensity:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v4, v10

    .line 252
    .local v4, backgroundBottomPadding:I
    sub-int v10, v8, v5

    sub-int v7, v10, v4

    .line 254
    .local v7, backgroundY:I
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    add-int v12, v7, v5

    invoke-virtual {v10, v11, v7, v6, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mArrowShortLeftAndRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 263
    .local v2, arrowW:I
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mArrowShortLeftAndRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 264
    .local v1, arrowH:I
    const/high16 v10, 0x41f0

    iget v11, p0, Lcom/android/phone/IncomingCallDialWidget;->mDensity:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v0, v10

    .line 265
    .local v0, ARROW_YPOS_ADJUST:I
    sub-int v10, v8, v4

    sub-int/2addr v10, v5

    sub-int/2addr v10, v1

    add-int v3, v10, v0

    .line 270
    .local v3, arrowY:I
    iget v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    packed-switch v10, :pswitch_data_0

    .line 281
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid mGrabbedState: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 272
    :pswitch_0
    iget-object v9, p0, Lcom/android/phone/IncomingCallDialWidget;->mArrowShortLeftAndRight:Landroid/graphics/drawable/Drawable;

    .line 283
    .local v9, mCurrentArrow:Landroid/graphics/drawable/Drawable;
    :goto_0
    const/4 v10, 0x0

    add-int v11, v3, v1

    invoke-virtual {v9, v10, v3, v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 285
    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 288
    invoke-direct {p0}, Lcom/android/phone/IncomingCallDialWidget;->computeHandlePositions()V

    .line 296
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mDimple:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleX:I

    iget v12, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleY:I

    invoke-static {v10, p1, v11, v12}, Lcom/android/phone/IncomingCallDialWidget;->drawCentered(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;II)V

    .line 297
    iget v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 298
    :cond_0
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleIcon:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleX:I

    iget v12, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleY:I

    invoke-static {v10, p1, v11, v12}, Lcom/android/phone/IncomingCallDialWidget;->drawCentered(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;II)V

    .line 299
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleIcon:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 304
    :goto_1
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mDimple:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleX:I

    iget v12, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleY:I

    invoke-static {v10, p1, v11, v12}, Lcom/android/phone/IncomingCallDialWidget;->drawCentered(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;II)V

    .line 305
    iget v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    if-eqz v10, :cond_1

    iget v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mGrabbedState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 306
    :cond_1
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleIcon:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleX:I

    iget v12, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleY:I

    invoke-static {v10, p1, v11, v12}, Lcom/android/phone/IncomingCallDialWidget;->drawCentered(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;II)V

    .line 307
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleIcon:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 313
    :goto_2
    const/4 v10, 0x0

    invoke-direct {p0, v10, p1}, Lcom/android/phone/IncomingCallDialWidget;->drawDimple(FLandroid/graphics/Canvas;)V

    .line 315
    const/high16 v10, 0x4000

    iget v11, p0, Lcom/android/phone/IncomingCallDialWidget;->mIconOffsetRadians:F

    mul-float/2addr v10, v11

    invoke-direct {p0, v10, p1}, Lcom/android/phone/IncomingCallDialWidget;->drawDimple(FLandroid/graphics/Canvas;)V

    .line 316
    const/high16 v10, -0x4000

    iget v11, p0, Lcom/android/phone/IncomingCallDialWidget;->mIconOffsetRadians:F

    mul-float/2addr v10, v11

    invoke-direct {p0, v10, p1}, Lcom/android/phone/IncomingCallDialWidget;->drawDimple(FLandroid/graphics/Canvas;)V

    .line 317
    const/high16 v10, 0x4040

    iget v11, p0, Lcom/android/phone/IncomingCallDialWidget;->mIconOffsetRadians:F

    mul-float/2addr v10, v11

    invoke-direct {p0, v10, p1}, Lcom/android/phone/IncomingCallDialWidget;->drawDimple(FLandroid/graphics/Canvas;)V

    .line 318
    const/high16 v10, -0x3fc0

    iget v11, p0, Lcom/android/phone/IncomingCallDialWidget;->mIconOffsetRadians:F

    mul-float/2addr v10, v11

    invoke-direct {p0, v10, p1}, Lcom/android/phone/IncomingCallDialWidget;->drawDimple(FLandroid/graphics/Canvas;)V

    .line 322
    return-void

    .line 275
    .end local v9           #mCurrentArrow:Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v9, p0, Lcom/android/phone/IncomingCallDialWidget;->mArrowLongLeft:Landroid/graphics/drawable/Drawable;

    .line 276
    .restart local v9       #mCurrentArrow:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 278
    .end local v9           #mCurrentArrow:Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v9, p0, Lcom/android/phone/IncomingCallDialWidget;->mArrowLongRight:Landroid/graphics/drawable/Drawable;

    .line 279
    .restart local v9       #mCurrentArrow:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 301
    :cond_2
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 309
    :cond_3
    iget-object v10, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 197
    const v2, 0x3fb9999a

    .line 215
    .local v2, KNOB_CENTER_Y:F
    const/16 v5, 0x320

    if-le p2, v5, :cond_0

    .line 217
    const/16 v3, 0x11

    .line 218
    .local v3, iconOffsetDegrees:I
    const/16 v4, 0x3c

    .line 228
    .local v4, knobYAdjust:I
    :goto_0
    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mIconOffsetRadians:F

    .line 230
    int-to-float v5, p2

    const v6, 0x3fb9999a

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mKnobY:I

    .line 231
    int-to-double v5, p2

    const-wide v7, 0x3feb33334ccccccdL

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mKnobRadius:I

    .line 233
    const/16 v1, 0x28

    .line 234
    .local v1, HANDLE_TRACK_OFFSET_DIP:I
    const/high16 v5, 0x4220

    iget v6, p0, Lcom/android/phone/IncomingCallDialWidget;->mDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 235
    .local v0, HANDLE_TRACK_OFFSET:I
    iget v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mKnobRadius:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/android/phone/IncomingCallDialWidget;->mHandleTrackRadius:I

    .line 237
    invoke-direct {p0}, Lcom/android/phone/IncomingCallDialWidget;->reset()V

    .line 238
    return-void

    .line 219
    .end local v0           #HANDLE_TRACK_OFFSET:I
    .end local v1           #HANDLE_TRACK_OFFSET_DIP:I
    .end local v3           #iconOffsetDegrees:I
    .end local v4           #knobYAdjust:I
    :cond_0
    const/16 v5, 0x1f4

    if-le p2, v5, :cond_1

    .line 221
    const/16 v3, 0x12

    .line 222
    .restart local v3       #iconOffsetDegrees:I
    const/16 v4, 0x28

    .restart local v4       #knobYAdjust:I
    goto :goto_0

    .line 225
    .end local v3           #iconOffsetDegrees:I
    .end local v4           #knobYAdjust:I
    :cond_1
    const/16 v3, 0x14

    .line 226
    .restart local v3       #iconOffsetDegrees:I
    const/4 v4, 0x0

    .restart local v4       #knobYAdjust:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 335
    .local v0, eventX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 337
    .local v1, eventY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 338
    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingCallDialWidget;->onDownEvent(II)V

    .line 370
    :cond_0
    :goto_0
    return v4

    .line 339
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 340
    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingCallDialWidget;->onMoveEvent(II)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 343
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/android/phone/IncomingCallDialWidget;->onUpEvent(II)V

    goto :goto_0
.end method

.method public setLeftHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/phone/IncomingCallDialWidget;->mLeftHandleIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallDialWidget;->invalidate()V

    .line 156
    return-void
.end method

.method public setLeftHandleResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallDialWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallDialWidget;->setLeftHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    return-void
.end method

.method public setOnDialTriggerListener(Lcom/android/phone/IncomingCallDialWidget$OnDialTriggerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/phone/IncomingCallDialWidget;->mOnDialTriggerListener:Lcom/android/phone/IncomingCallDialWidget$OnDialTriggerListener;

    .line 632
    return-void
.end method

.method public setRightHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/phone/IncomingCallDialWidget;->mRightHandleIcon:Landroid/graphics/drawable/Drawable;

    .line 181
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallDialWidget;->invalidate()V

    .line 182
    return-void
.end method

.method public setRightHandleResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/phone/IncomingCallDialWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 171
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingCallDialWidget;->setRightHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void
.end method
