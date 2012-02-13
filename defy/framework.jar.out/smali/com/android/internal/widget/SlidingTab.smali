.class public Lcom/android/internal/widget/SlidingTab;
.super Landroid/view/ViewGroup;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SlidingTab$Slider;,
        Lcom/android/internal/widget/SlidingTab$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xfa

.field private static final ANIM_TARGET_TIME:I = 0x1f4

.field private static final DBG:Z = false

.field private static final HORIZONTAL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SlidingTab"

.field private static final THRESHOLD:F = 0.6666667f

.field private static final TRACKING_MARGIN:I = 0x32

.field private static final VERTICAL:I = 0x1

.field private static final VIBRATE_LONG:J = 0x28L

.field private static final VIBRATE_SHORT:J = 0x1eL


# instance fields
.field private mAnimating:Z

.field private final mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mDensity:F

.field private mGrabbedState:I

.field private mHoldLeftOnTransition:Z

.field private mHoldRightOnTransition:Z

.field private mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

.field private mOrientation:I

.field private mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mThreshold:F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mTriggered:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v5, 0x108023e

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    iput v3, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    new-instance v2, Lcom/android/internal/widget/SlidingTab$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SlidingTab$1;-><init>(Lcom/android/internal/widget/SlidingTab;)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/internal/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mDensity:F

    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    const v3, 0x1080230

    const v4, 0x108021f

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    const v3, 0x1080239

    const v4, 0x1080228

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->onAnimationDone()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/widget/SlidingTab;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object v0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private isHorizontal()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "SlidingTab"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private moveHandle(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .local v3, handle:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->access$700(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v0

    .local v0, content:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_0

    float-to-int v4, p1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .local v1, deltaX:I
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .end local v1           #deltaX:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->invalidate()V

    return-void

    :cond_0
    float-to-int v4, p2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .local v2, deltaY:I
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    goto :goto_0
.end method

.method private onAnimationDone()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    return-void
.end method

.method private resetView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private withinView(FFLandroid/view/View;)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "view"

    .prologue
    const/high16 v1, -0x3db8

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const v13, 0x3f2aaaab

    const v12, 0x3eaaaaaa

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .local v6, y:F
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    if-eqz v7, :cond_0

    move v7, v11

    :goto_0
    return v7

    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v1

    .local v1, leftHandle:Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .local v2, leftHit:Z
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .local v3, rightHandle:Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    .local v4, rightHit:Z
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v7, :cond_1

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    move v7, v11

    goto :goto_0

    :cond_1
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v7, v10

    goto :goto_0

    :pswitch_0
    iput-boolean v10, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    iput-boolean v11, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    const-wide/16 v7, 0x1e

    invoke-direct {p0, v7, v8}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v13

    :goto_2
    iput v7, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    invoke-direct {p0, v10}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    :goto_3
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->showTarget()V

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->hide()V

    goto :goto_1

    :cond_2
    move v7, v12

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v12

    :goto_4
    iput v7, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto :goto_3

    :cond_4
    move v7, v13

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v5, v1

    :goto_2
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    move v5, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    move v5, v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .local v8, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .local v9, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, heightSpecSize:I
    if-eqz v8, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v10, "SlidingTab"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SlidingTab cannot have UNSPECIFIED MeasureSpec(wspec="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", hspec="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "SlidingTabstack:"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->measure()V

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->measure()V

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v4

    .local v4, leftTabWidth:I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v6

    .local v6, rightTabWidth:I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v3

    .local v3, leftTabHeight:I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v5

    .local v5, rightTabHeight:I
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_2

    add-int v10, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .local v7, width:I
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, height:I
    :goto_0
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/widget/SlidingTab;->setMeasuredDimension(II)V

    return-void

    .end local v0           #height:I
    .end local v7           #width:I
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #width:I
    add-int v10, v3, v5

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0       #height:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .local v6, y:F
    packed-switch v0, :pswitch_data_0

    .end local v0           #action:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v7, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_1
    move v7, v10

    :goto_1
    return v7

    .restart local v0       #action:I
    .restart local v5       #x:F
    .restart local v6       #y:F
    :pswitch_0
    invoke-direct {p0, v5, v6, p0}, Lcom/android/internal/widget/SlidingTab;->withinView(FFLandroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/SlidingTab;->moveHandle(FF)V

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .local v2, position:F
    :goto_2
    iget v7, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v8

    :goto_3
    int-to-float v8, v8

    mul-float v3, v7, v8

    .local v3, target:F
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v8, :cond_5

    cmpl-float v7, v2, v3

    if-lez v7, :cond_4

    move v4, v10

    .local v4, thresholdReached:Z
    :goto_4
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    if-nez v7, :cond_0

    if-eqz v4, :cond_0

    iput-boolean v10, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    iput-boolean v9, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7, v11}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v8, :cond_b

    move v1, v10

    .local v1, isLeft:Z
    :goto_5
    if-eqz v1, :cond_c

    move v7, v10

    :goto_6
    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTab;->dispatchTriggerEvent(I)V

    if-eqz v1, :cond_d

    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    :goto_7
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V

    invoke-direct {p0, v9}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto :goto_0

    .end local v1           #isLeft:Z
    .end local v2           #position:F
    .end local v3           #target:F
    .end local v4           #thresholdReached:Z
    :cond_2
    move v2, v6

    goto :goto_2

    .restart local v2       #position:F
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v8

    goto :goto_3

    .restart local v3       #target:F
    :cond_4
    move v4, v9

    goto :goto_4

    :cond_5
    cmpg-float v7, v2, v3

    if-gez v7, :cond_6

    move v4, v10

    goto :goto_4

    :cond_6
    move v4, v9

    goto :goto_4

    :cond_7
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v8, :cond_9

    cmpg-float v7, v2, v3

    if-gez v7, :cond_8

    move v4, v10

    .restart local v4       #thresholdReached:Z
    :goto_8
    goto :goto_4

    .end local v4           #thresholdReached:Z
    :cond_8
    move v4, v9

    goto :goto_8

    :cond_9
    cmpl-float v7, v2, v3

    if-lez v7, :cond_a

    move v4, v10

    goto :goto_8

    :cond_a
    move v4, v9

    goto :goto_8

    .restart local v4       #thresholdReached:Z
    :cond_b
    move v1, v9

    goto :goto_5

    .restart local v1       #isLeft:Z
    :cond_c
    move v7, v11

    goto :goto_6

    :cond_d
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    goto :goto_7

    .end local v1           #isLeft:Z
    .end local v2           #position:F
    .end local v3           #target:F
    .end local v4           #thresholdReached:Z
    :cond_e
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    iput-boolean v9, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    iput-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0, v9}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto/16 :goto_0

    .end local v0           #action:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_f
    move v7, v9

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    :cond_0
    return-void
.end method

.method public setHoldAfterTrigger(ZZ)V
    .locals 0
    .parameter "holdLeft"
    .parameter "holdRight"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    return-void
.end method

.method public setLeftHintText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    :cond_0
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 1
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    return-void
.end method

.method public setRightHintText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    :cond_0
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 1
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method startAnimating(Z)V
    .locals 24
    .parameter "holdAfter"

    .prologue
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object v13, v0

    .local v13, slider:Lcom/android/internal/widget/SlidingTab$Slider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object v11, v0

    .local v11, other:Lcom/android/internal/widget/SlidingTab$Slider;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v20

    if-eqz v20, :cond_2

    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getRight()I

    move-result v12

    .local v12, right:I
    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v19

    .local v19, width:I
    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getLeft()I

    move-result v10

    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v18

    .local v18, viewWidth:I
    if-eqz p1, :cond_0

    const/16 v20, 0x0

    move/from16 v9, v20

    .local v9, holdOffset:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object/from16 v20, v0

    move-object v0, v13

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    add-int v20, v12, v18

    sub-int v20, v20, v9

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v6, v20

    .local v6, dx:I
    :goto_1
    const/4 v7, 0x0

    .end local v10           #left:I
    .end local v12           #right:I
    .end local v18           #viewWidth:I
    .end local v19           #width:I
    .local v7, dy:I
    :goto_2
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    move v0, v6

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move v0, v7

    int-to-float v0, v0

    move/from16 v23, v0

    move-object v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v15, trans1:Landroid/view/animation/Animation;
    const-wide/16 v20, 0xfa

    move-object v0, v15

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v20, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v20, 0x1

    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v16, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    move v0, v6

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move v0, v7

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v16, trans2:Landroid/view/animation/Animation;
    const-wide/16 v20, 0xfa

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v20, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v20, Lcom/android/internal/widget/SlidingTab$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab$2;-><init>(Lcom/android/internal/widget/SlidingTab;ZII)V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void

    .end local v6           #dx:I
    .end local v7           #dy:I
    .end local v9           #holdOffset:I
    .end local v15           #trans1:Landroid/view/animation/Animation;
    .end local v16           #trans2:Landroid/view/animation/Animation;
    .restart local v10       #left:I
    .restart local v12       #right:I
    .restart local v18       #viewWidth:I
    .restart local v19       #width:I
    :cond_0
    move/from16 v9, v19

    goto/16 :goto_0

    .restart local v9       #holdOffset:I
    :cond_1
    sub-int v20, v18, v10

    add-int v20, v20, v18

    sub-int v20, v20, v9

    move/from16 v6, v20

    goto/16 :goto_1

    .end local v9           #holdOffset:I
    .end local v10           #left:I
    .end local v12           #right:I
    .end local v18           #viewWidth:I
    .end local v19           #width:I
    :cond_2
    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getTop()I

    move-result v14

    .local v14, top:I
    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    .local v5, bottom:I
    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v17

    .local v17, viewHeight:I
    if-eqz p1, :cond_3

    const/16 v20, 0x0

    move/from16 v9, v20

    .restart local v9       #holdOffset:I
    :goto_3
    const/4 v6, 0x0

    .restart local v6       #dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object/from16 v20, v0

    move-object v0, v13

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    add-int v20, v14, v17

    sub-int v20, v20, v9

    move/from16 v7, v20

    .restart local v7       #dy:I
    :goto_4
    goto/16 :goto_2

    .end local v6           #dx:I
    .end local v7           #dy:I
    .end local v9           #holdOffset:I
    :cond_3
    move v9, v8

    goto :goto_3

    .restart local v6       #dx:I
    .restart local v9       #holdOffset:I
    :cond_4
    sub-int v20, v17, v5

    add-int v20, v20, v17

    sub-int v20, v20, v9

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v7, v20

    goto :goto_4
.end method
