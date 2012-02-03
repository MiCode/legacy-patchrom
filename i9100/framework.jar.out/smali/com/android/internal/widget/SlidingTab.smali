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

.field private mAnimationWillBeCanceled:Z

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

.field private mShowLeftSlider:Z

.field private mShowRightSlider:Z

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
    .line 536
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 537
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v7, 0x108022f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 543
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-boolean v6, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    .line 67
    iput-boolean v6, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    .line 70
    iput v5, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    .line 71
    iput-boolean v5, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 98
    new-instance v2, Lcom/android/internal/widget/SlidingTab$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SlidingTab$1;-><init>(Lcom/android/internal/widget/SlidingTab;)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 546
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    .line 548
    sget-object v2, Lcom/android/internal/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 549
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    .line 550
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 553
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mDensity:F

    .line 556
    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    const v3, 0x108021f

    const v4, 0x108020c

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 560
    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    const v3, 0x1080229

    const v4, 0x1080216

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 566
    iput-boolean v6, p0, Lcom/android/internal/widget/SlidingTab;->mShowLeftSlider:Z

    .line 567
    iput-boolean v6, p0, Lcom/android/internal/widget/SlidingTab;->mShowRightSlider:Z

    .line 569
    iput-boolean v5, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationWillBeCanceled:Z

    .line 571
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->onAnimationDone()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/widget/SlidingTab;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object v0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichHandle"

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 1096
    :cond_0
    return-void
.end method

.method private isHorizontal()Z
    .locals 1

    .prologue
    .line 904
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
    .line 1112
    const-string v0, "SlidingTab"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return-void
.end method

.method private moveHandle(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 939
    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .line 940
    .local v3, handle:Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/internal/widget/SlidingTab$Slider;->access$200(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v0

    .line 941
    .local v0, content:Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->icon:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/internal/widget/SlidingTab$Slider;->access$800(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v4

    .line 942
    .local v4, icon:Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->iconText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/internal/widget/SlidingTab$Slider;->access$900(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v5

    .line 943
    .local v5, iconText:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 944
    float-to-int v6, p1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v6, v7

    .line 945
    .local v1, deltaX:I
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 946
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 947
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 954
    .end local v1           #deltaX:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->invalidate()V

    .line 955
    return-void

    .line 949
    :cond_0
    float-to-int v6, p2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    .line 950
    .local v2, deltaY:I
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 951
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 952
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    goto :goto_0
.end method

.method private onAnimationDone()V
    .locals 1

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    .line 895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 896
    return-void
.end method

.method private resetView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 908
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mShowLeftSlider:Z

    if-ne v0, v2, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 912
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mShowRightSlider:Z

    if-ne v0, v2, :cond_1

    .line 913
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 915
    :cond_1
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 1103
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 1104
    iput p1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    .line 1105
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1109
    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 1071
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    monitor-exit p0

    return-void

    .line 1071
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

    .line 899
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
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationWillBeCanceled:Z

    .line 703
    return-void
.end method

.method public forceResetSlidingTab()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 706
    const-string v0, "SlidingTab"

    const-string v1, "forceResetSlidingTab()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 708
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 709
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 713
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    .line 715
    :cond_1
    iput-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 716
    iput-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 717
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const v13, 0x3f2aaaab

    const v12, 0x3eaaaaaa

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 608
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 609
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 611
    .local v6, y:F
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    if-eqz v7, :cond_0

    move v7, v11

    .line 679
    :goto_0
    return v7

    .line 615
    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v1

    .line 616
    .local v1, leftHandle:Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 617
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 619
    .local v2, leftHit:Z
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .line 620
    .local v3, rightHandle:Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 621
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    .line 623
    .local v4, rightHit:Z
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v7, :cond_1

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    move v7, v11

    .line 624
    goto :goto_0

    .line 627
    :cond_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v7, v10

    .line 679
    goto :goto_0

    .line 629
    :pswitch_0
    iput-boolean v10, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 630
    iput-boolean v11, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 632
    if-eqz v2, :cond_6

    .line 634
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mShowLeftSlider:Z

    if-nez v7, :cond_3

    move v7, v11

    .line 635
    goto :goto_0

    .line 638
    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 641
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mShowRightSlider:Z

    if-ne v7, v10, :cond_4

    .line 642
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 645
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v13

    :goto_2
    iput v7, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    .line 646
    invoke-direct {p0, v10}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 663
    :goto_3
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->access$200(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    .line 664
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 669
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->showTarget()V

    .line 671
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-eqz v7, :cond_2

    .line 672
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->hide()V

    goto :goto_1

    :cond_5
    move v7, v12

    .line 645
    goto :goto_2

    .line 649
    :cond_6
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mShowRightSlider:Z

    if-nez v7, :cond_7

    move v7, v11

    .line 650
    goto :goto_0

    .line 653
    :cond_7
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 656
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mShowLeftSlider:Z

    if-ne v7, v10, :cond_8

    .line 657
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 660
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v12

    :goto_4
    iput v7, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    .line 661
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto :goto_3

    :cond_9
    move v7, v13

    .line 660
    goto :goto_4

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 919
    if-nez p1, :cond_0

    .line 936
    :goto_0
    return-void

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    move v5, v6

    :goto_1
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    .line 923
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    move v5, v7

    :goto_2
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    .line 925
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mShowLeftSlider:Z

    if-ne v0, v7, :cond_3

    .line 926
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    .line 931
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mShowRightSlider:Z

    if-ne v0, v7, :cond_4

    .line 932
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    goto :goto_0

    .line 922
    :cond_1
    const/4 v1, 0x3

    move v5, v1

    goto :goto_1

    .line 923
    :cond_2
    const/4 v1, 0x2

    move v5, v1

    goto :goto_2

    .line 928
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setInvisible()V

    goto :goto_3

    .line 934
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setInvisible()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 575
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 576
    .local v8, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 578
    .local v9, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 579
    .local v1, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 581
    .local v2, heightSpecSize:I
    if-eqz v8, :cond_0

    if-nez v1, :cond_1

    .line 582
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

    .line 587
    :cond_1
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->measure()V

    .line 588
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->measure()V

    .line 589
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v4

    .line 590
    .local v4, leftTabWidth:I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v6

    .line 591
    .local v6, rightTabWidth:I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v3

    .line 592
    .local v3, leftTabHeight:I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v5

    .line 595
    .local v5, rightTabHeight:I
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 596
    add-int v10, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 597
    .local v7, width:I
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 602
    .local v0, height:I
    :goto_0
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/widget/SlidingTab;->setMeasuredDimension(II)V

    .line 603
    return-void

    .line 599
    .end local v0           #height:I
    .end local v7           #width:I
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 600
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

    .line 753
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-eqz v7, :cond_1

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 755
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 756
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 759
    .local v6, y:F
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-nez v7, :cond_0

    .line 760
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 821
    .end local v0           #action:I
    .end local v5           #x:F
    .end local v6           #y:F
    :goto_0
    return v7

    .line 764
    .restart local v0       #action:I
    .restart local v5       #x:F
    .restart local v6       #y:F
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 821
    .end local v0           #action:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_1
    :goto_1
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v7, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_13

    :cond_2
    move v7, v10

    goto :goto_0

    .line 766
    .restart local v0       #action:I
    .restart local v5       #x:F
    .restart local v6       #y:F
    :pswitch_0
    invoke-direct {p0, v5, v6, p0}, Lcom/android/internal/widget/SlidingTab;->withinView(FFLandroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 767
    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/SlidingTab;->moveHandle(FF)V

    .line 768
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v5

    .line 769
    .local v2, position:F
    :goto_2
    iget v7, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v8

    :goto_3
    int-to-float v8, v8

    mul-float v3, v7, v8

    .line 771
    .local v3, target:F
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 772
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v8, :cond_6

    cmpl-float v7, v2, v3

    if-lez v7, :cond_5

    move v4, v10

    .line 778
    .local v4, thresholdReached:Z
    :goto_4
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    if-nez v7, :cond_1

    if-eqz v4, :cond_1

    .line 779
    iput-boolean v10, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 780
    iput-boolean v9, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 781
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7, v11}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 782
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v8, :cond_c

    move v1, v10

    .line 783
    .local v1, isLeft:Z
    :goto_5
    const-string v7, "SlidingTab"

    const-string/jumbo v8, "onTouchEvent() : thresholdReached !"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    if-eqz v1, :cond_d

    move v7, v10

    :goto_6
    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTab;->dispatchTriggerEvent(I)V

    .line 787
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationWillBeCanceled:Z

    if-eqz v7, :cond_f

    .line 788
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationWillBeCanceled:Z

    if-nez v7, :cond_e

    move v7, v10

    :goto_7
    iput-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationWillBeCanceled:Z

    .line 789
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    .line 793
    :goto_8
    invoke-direct {p0, v9}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto :goto_1

    .end local v1           #isLeft:Z
    .end local v2           #position:F
    .end local v3           #target:F
    .end local v4           #thresholdReached:Z
    :cond_3
    move v2, v6

    .line 768
    goto :goto_2

    .line 769
    .restart local v2       #position:F
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v8

    goto :goto_3

    .restart local v3       #target:F
    :cond_5
    move v4, v9

    .line 772
    goto :goto_4

    :cond_6
    cmpg-float v7, v2, v3

    if-gez v7, :cond_7

    move v4, v10

    goto :goto_4

    :cond_7
    move v4, v9

    goto :goto_4

    .line 775
    :cond_8
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v8, :cond_a

    cmpg-float v7, v2, v3

    if-gez v7, :cond_9

    move v4, v10

    .restart local v4       #thresholdReached:Z
    :goto_9
    goto :goto_4

    .end local v4           #thresholdReached:Z
    :cond_9
    move v4, v9

    goto :goto_9

    :cond_a
    cmpl-float v7, v2, v3

    if-lez v7, :cond_b

    move v4, v10

    goto :goto_9

    :cond_b
    move v4, v9

    goto :goto_9

    .restart local v4       #thresholdReached:Z
    :cond_c
    move v1, v9

    .line 782
    goto :goto_5

    .restart local v1       #isLeft:Z
    :cond_d
    move v7, v11

    .line 784
    goto :goto_6

    :cond_e
    move v7, v9

    .line 788
    goto :goto_7

    .line 791
    :cond_f
    if-eqz v1, :cond_10

    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    :goto_a
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V

    goto :goto_8

    :cond_10
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    goto :goto_a

    .line 801
    .end local v1           #isLeft:Z
    .end local v2           #position:F
    .end local v3           #target:F
    .end local v4           #thresholdReached:Z
    :cond_11
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 802
    iput-boolean v9, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 805
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-eqz v7, :cond_12

    .line 806
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    .line 810
    :cond_12
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 811
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    .line 812
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->invalidate()V

    .line 814
    iput-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 815
    iput-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 816
    invoke-direct {p0, v9}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto/16 :goto_1

    .end local v0           #action:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_13
    move v7, v9

    .line 821
    goto/16 :goto_0

    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x1

    .line 689
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mShowLeftSlider:Z

    if-ne v0, v1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 693
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mShowRightSlider:Z

    if-ne v0, v1, :cond_1

    .line 694
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 696
    :cond_1
    if-nez p1, :cond_2

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 699
    :cond_2
    return-void
.end method

.method public setHoldAfterTrigger(ZZ)V
    .locals 0
    .parameter "holdLeft"
    .parameter "holdRight"

    .prologue
    .line 1063
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    .line 1064
    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    .line 1065
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    .line 995
    :cond_0
    return-void
.end method

.method public setLeftHintText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "CharSeq"

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(Ljava/lang/CharSequence;)V

    .line 1001
    :cond_0
    return-void
.end method

.method public setLeftIconText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "CharSeq"

    .prologue
    .line 1004
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIconText(Ljava/lang/CharSequence;)V

    .line 1007
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
    .line 969
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    .line 970
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    .line 971
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 972
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 973
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    .line 974
    return-void
.end method

.method public setLeftTabResources(IIIILjava/lang/CharSequence;)V
    .locals 2
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"
    .parameter "iconTextId"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    .line 978
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    .line 979
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 980
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 981
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    .line 982
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p5}, Lcom/android/internal/widget/SlidingTab$Slider;->setIconText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIconWithText(I)V

    .line 984
    return-void
.end method

.method public setLeftVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    const/4 v1, 0x1

    .line 730
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setInvisible()V

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mShowLeftSlider:Z

    .line 737
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    .line 735
    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTab;->mShowLeftSlider:Z

    goto :goto_0
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    .line 1085
    return-void
.end method

.method public setRightHintText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1045
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    .line 1048
    :cond_0
    return-void
.end method

.method public setRightHintText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "CharSeq"

    .prologue
    .line 1051
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(Ljava/lang/CharSequence;)V

    .line 1054
    :cond_0
    return-void
.end method

.method public setRightIconText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "CharSeq"

    .prologue
    .line 1057
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIconText(Ljava/lang/CharSequence;)V

    .line 1060
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
    .line 1022
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    .line 1024
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 1025
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 1026
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    .line 1027
    return-void
.end method

.method public setRightTabResources(IIIILjava/lang/CharSequence;)V
    .locals 2
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"
    .parameter "iconTextId"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    .line 1031
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    .line 1032
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 1033
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 1034
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p5}, Lcom/android/internal/widget/SlidingTab$Slider;->setIconText(Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIconWithText(I)V

    .line 1037
    return-void
.end method

.method public setRightVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    const/4 v1, 0x1

    .line 740
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setInvisible()V

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mShowRightSlider:Z

    .line 747
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    .line 745
    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTab;->mShowRightSlider:Z

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 723
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 725
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 726
    return-void
.end method

.method startAnimating(Z)V
    .locals 24
    .parameter "holdAfter"

    .prologue
    .line 825
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object v13, v0

    .line 829
    .local v13, slider:Lcom/android/internal/widget/SlidingTab$Slider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object v11, v0

    .line 832
    .local v11, other:Lcom/android/internal/widget/SlidingTab$Slider;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 833
    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getRight()I

    move-result v12

    .line 834
    .local v12, right:I
    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v19

    .line 835
    .local v19, width:I
    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getLeft()I

    move-result v10

    .line 836
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v18

    .line 837
    .local v18, viewWidth:I
    if-eqz p1, :cond_0

    const/16 v20, 0x0

    move/from16 v9, v20

    .line 838
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

    .line 840
    .local v6, dx:I
    :goto_1
    const/4 v7, 0x0

    .line 851
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

    .line 852
    .local v15, trans1:Landroid/view/animation/Animation;
    const-wide/16 v20, 0xfa

    move-object v0, v15

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 853
    new-instance v20, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 854
    const/16 v20, 0x1

    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 855
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

    .line 856
    .local v16, trans2:Landroid/view/animation/Animation;
    const-wide/16 v20, 0xfa

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 857
    new-instance v20, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 858
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 860
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

    .line 889
    invoke-virtual {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    .line 890
    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 891
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

    .line 837
    goto/16 :goto_0

    .line 838
    .restart local v9       #holdOffset:I
    :cond_1
    sub-int v20, v18, v10

    add-int v20, v20, v18

    sub-int v20, v20, v9

    move/from16 v6, v20

    goto/16 :goto_1

    .line 842
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

    .line 843
    .local v14, top:I
    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    .line 844
    .local v5, bottom:I
    #getter for: Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/internal/widget/SlidingTab$Slider;->access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    .line 845
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v17

    .line 846
    .local v17, viewHeight:I
    if-eqz p1, :cond_3

    const/16 v20, 0x0

    move/from16 v9, v20

    .line 847
    .restart local v9       #holdOffset:I
    :goto_3
    const/4 v6, 0x0

    .line 848
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

    .line 846
    goto :goto_3

    .line 848
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
