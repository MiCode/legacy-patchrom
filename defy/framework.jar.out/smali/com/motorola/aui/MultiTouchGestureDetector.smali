.class public Lcom/motorola/aui/MultiTouchGestureDetector;
.super Ljava/lang/Object;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;,
        Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z = false

.field private static final MAX_FINGER_ID:I = 0x1

.field private static final MESSAGE_TOUCH_HOLD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MultiTouchGestureDetector"


# instance fields
.field private FLICK_VELOCITY:F

.field private GESTURE_LOCK_RATIO:F

.field private TAP_SLOP_SQUARE:J

.field private TOUCH_HOLD_TIME:J

.field private TWO_DOWN_TIME_DELTA:J

.field private TWO_UP_TIME_DELTA:J

.field private VELOCITY_TIME_DELTA:J

.field private final detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

.field private mDown:[Z

.field private mDownPoint:[Landroid/graphics/Point;

.field private mEventTime:J

.field private mEventsToSkip:I

.field private mFingerPoint:[Landroid/graphics/Point;

.field private mFlickable:Z

.field mGlideGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;

.field private mGlideVelocityX:F

.field private mGlideVelocityY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInMultiTouchState:Z

.field private mLastEventTime:J

.field private mLastNumFingers:I

.field private final mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

.field private mLockoutIndex:I

.field private mLockoutOccurred:Z

.field private mMoved:[Z

.field mPinchGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;

.field private mTappable:Z

.field mTwistGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;

.field mTwoDownDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;

.field mTwoUpDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;


# direct methods
.method public constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    const-wide/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3da3d70a

    iput v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->GESTURE_LOCK_RATIO:F

    const-wide/16 v0, 0x271

    iput-wide v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TAP_SLOP_SQUARE:J

    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TOUCH_HOLD_TIME:J

    iput-wide v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_DOWN_TIME_DELTA:J

    iput-wide v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_UP_TIME_DELTA:J

    iput-wide v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->VELOCITY_TIME_DELTA:J

    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->FLICK_VELOCITY:F

    new-instance v0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;

    invoke-direct {v0, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTwistGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;

    new-instance v0, Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;

    invoke-direct {v0, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mPinchGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;

    new-instance v0, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;

    invoke-direct {v0, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTwistGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mPinchGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    new-instance v0, Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;

    invoke-direct {v0, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTwoDownDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;

    new-instance v0, Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;

    invoke-direct {v0, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTwoUpDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;

    iput-boolean v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    iput-boolean v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFlickable:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    new-array v0, v3, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDownPoint:[Landroid/graphics/Point;

    new-array v0, v3, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    new-array v0, v3, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mMoved:[Z

    iput-boolean v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    iput-boolean v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutOccurred:Z

    iput v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventsToSkip:I

    iput v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastNumFingers:I

    iput-object p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnMultiTouchGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/motorola/aui/MultiTouchGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/motorola/aui/MultiTouchGestureDetector$1;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;)V

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/motorola/aui/MultiTouchGestureDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/motorola/aui/MultiTouchGestureDetector;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/motorola/aui/MultiTouchGestureDetector;->calculateVelocity(FF)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/aui/MultiTouchGestureDetector;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_DOWN_TIME_DELTA:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/motorola/aui/MultiTouchGestureDetector;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_UP_TIME_DELTA:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/motorola/aui/MultiTouchGestureDetector;)Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/aui/MultiTouchGestureDetector;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F

    return p1
.end method

.method static synthetic access$902(Lcom/motorola/aui/MultiTouchGestureDetector;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    return p1
.end method

.method private calculateVelocity(FF)V
    .locals 10
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v9, 0x447a

    const/high16 v8, 0x3f80

    mul-float v3, p1, v9

    iget-wide v4, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    iget-wide v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    div-float v0, v3, v4

    .local v0, vx:F
    mul-float v3, p2, v9

    iget-wide v4, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    iget-wide v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    div-float v1, v3, v4

    .local v1, vy:F
    iget-wide v3, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    iget-wide v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->VELOCITY_TIME_DELTA:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    iget-wide v4, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->VELOCITY_TIME_DELTA:J

    long-to-float v4, v4

    div-float v2, v3, v4

    .local v2, weight:F
    mul-float v3, v0, v2

    sub-float v4, v8, v2

    iget v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F

    mul-float v3, v1, v2

    sub-float v4, v8, v2

    iget v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    return-void
.end method

.method private countFingers(Landroid/view/MotionEvent;)I
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    .local v0, count:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .local v1, fingerId:I
    if-gt v1, v7, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v3, v5

    .local v3, x:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .local v4, y:I
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    aget-object v5, v5, v1

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    aget-object v5, v5, v1

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-eq v4, v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mMoved:[Z

    aput-boolean v7, v5, v1

    :cond_1
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aget-boolean v5, v5, v1

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aput-boolean v7, v5, v1

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDownPoint:[Landroid/graphics/Point;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #fingerId:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v7, v5, :cond_4

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aput-boolean v8, v5, v8

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aput-boolean v8, v5, v7

    :cond_4
    const/4 v5, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aput-boolean v8, v5, v8

    :cond_5
    :goto_1
    const/4 v1, 0x0

    .restart local v1       #fingerId:I
    :goto_2
    if-gt v1, v7, :cond_8

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #fingerId:I
    :cond_7
    const/16 v5, 0x106

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aput-boolean v8, v5, v7

    goto :goto_1

    .restart local v1       #fingerId:I
    :cond_8
    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    move v11, v0

    .local v11, wasMultiTouch:Z
    invoke-direct/range {p0 .. p1}, Lcom/motorola/aui/MultiTouchGestureDetector;->countFingers(Landroid/view/MotionEvent;)I

    move-result v9

    .local v9, numFingers:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTwoDownDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    move-object v13, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;->update([ZJ)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->TOUCH_HOLD_TIME:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_0
    const/4 v4, 0x0

    .local v4, fingerId:I
    :goto_0
    const/4 v12, 0x1

    if-gt v4, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    move-object v12, v0

    aget-boolean v12, v12, v4

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->TAP_SLOP_SQUARE:J

    move-wide v12, v0

    long-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDownPoint:[Landroid/graphics/Point;

    move-object v14, v0

    aget-object v14, v14, v4

    iget v14, v14, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    move-object v15, v0

    aget-object v15, v15, v4

    iget v15, v15, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDownPoint:[Landroid/graphics/Point;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    cmpg-double v12, v12, v14

    if-gez v12, :cond_1

    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTwoUpDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    move-object v13, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;->update([ZJ)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    move v12, v0

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    move-object v12, v0

    invoke-interface {v12}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->onTapUp()V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFlickable:Z

    move v12, v0

    if-eqz v12, :cond_4

    const-string v12, "MultiTouchGestureDetector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "vy  = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/motorola/aui/MultiTouchGestureDetector;->calculateVelocity(FF)V

    const-string v12, "MultiTouchGestureDetector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "vy\' = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    move v12, v0

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F

    move v14, v0

    float-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->FLICK_VELOCITY:F

    move v14, v0

    float-to-double v14, v14

    cmpl-double v12, v12, v14

    if-lez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    move v14, v0

    invoke-interface {v12, v13, v14}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->onFlick(FF)V

    :cond_4
    const/4 v12, 0x2

    if-ne v9, v12, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastNumFingers:I

    move v12, v0

    const/4 v13, 0x2

    if-ge v12, v13, :cond_8

    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    move-object v12, v0

    invoke-interface {v12}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->beginMultiTouch()V

    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mFlickable:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    move-wide v12, v0

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutOccurred:Z

    const/4 v5, 0x0

    .local v5, index:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    move-object v12, v0

    array-length v12, v12

    if-ge v5, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    move-object v12, v0

    aget-object v12, v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    move-object v13, v0

    invoke-virtual {v12, v13}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->initialize([Landroid/graphics/Point;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mMoved:[Z

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mMoved:[Z

    move-object v12, v0

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    const/4 v12, 0x2

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventsToSkip:I

    .end local v5           #index:I
    :cond_6
    :goto_2
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastNumFingers:I

    if-nez v11, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    move v12, v0

    if-eqz v12, :cond_11

    :cond_7
    const/4 v12, 0x1

    :goto_3
    return v12

    :cond_8
    const/4 v12, 0x2

    if-ne v9, v12, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mMoved:[Z

    move-object v12, v0

    const/4 v13, 0x0

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mMoved:[Z

    move-object v12, v0

    const/4 v13, 0x1

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventsToSkip:I

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventsToSkip:I

    move v12, v0

    if-lez v12, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventsToSkip:I

    move v12, v0

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventsToSkip:I

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutOccurred:Z

    move v12, v0

    if-nez v12, :cond_e

    const/4 v7, 0x0

    .local v7, maxDelta:F
    const/4 v10, 0x0

    .local v10, secondDelta:F
    const/4 v8, 0x0

    .local v8, maxDeltaIndex:I
    const/4 v6, 0x0

    .local v6, lockoutIndex:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    move-object v12, v0

    array-length v12, v12

    if-ge v6, v12, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    move-object v12, v0

    aget-object v12, v12, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    move-object v13, v0

    invoke-virtual {v12, v13}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->getDelta([Landroid/graphics/Point;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .local v3, delta:F
    cmpl-float v12, v3, v7

    if-lez v12, :cond_c

    move v10, v7

    move v7, v3

    move v8, v6

    :cond_b
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    cmpl-float v12, v3, v10

    if-lez v12, :cond_b

    move v10, v3

    goto :goto_5

    .end local v3           #delta:F
    :cond_d
    sub-float v12, v7, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->GESTURE_LOCK_RATIO:F

    move v13, v0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    move-object v12, v0

    aget-object v12, v12, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mFlickable:Z

    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutIndex:I

    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutOccurred:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutIndex:I

    move v13, v0

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    move-object v13, v0

    const/high16 v14, 0x3f80

    div-float v15, v10, v7

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->report([Landroid/graphics/Point;F)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    move-wide v12, v0

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    goto/16 :goto_2

    .end local v6           #lockoutIndex:I
    .end local v7           #maxDelta:F
    .end local v8           #maxDeltaIndex:I
    .end local v10           #secondDelta:F
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutIndex:I

    move v13, v0

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    move-object v13, v0

    const/high16 v14, 0x3f80

    invoke-virtual {v12, v13, v14}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->report([Landroid/graphics/Point;F)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    move-wide v12, v0

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    goto/16 :goto_2

    :cond_f
    const/4 v12, 0x1

    if-ne v9, v12, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    move v12, v0

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_2

    :cond_10
    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    move v12, v0

    if-eqz v12, :cond_6

    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mFlickable:Z

    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    move-object v12, v0

    invoke-interface {v12}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->endMultiTouch()V

    goto/16 :goto_2

    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_3
.end method

.method public setFlickVelocity(F)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->FLICK_VELOCITY:F

    return-void
.end method

.method public setThreshold(F)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->GESTURE_LOCK_RATIO:F

    return-void
.end method

.method public setTouchHoldTime(J)V
    .locals 0
    .parameter "value"

    .prologue
    iput-wide p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TOUCH_HOLD_TIME:J

    return-void
.end method

.method public setTwoDownTimeDelta(J)V
    .locals 0
    .parameter "value"

    .prologue
    iput-wide p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_DOWN_TIME_DELTA:J

    return-void
.end method

.method public setTwoUpTimeDelta(J)V
    .locals 0
    .parameter "value"

    .prologue
    iput-wide p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_UP_TIME_DELTA:J

    return-void
.end method

.method public setVelocityTimeDelta(J)V
    .locals 0
    .parameter "value"

    .prologue
    iput-wide p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->VELOCITY_TIME_DELTA:J

    return-void
.end method
