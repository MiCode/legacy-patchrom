.class public Lcom/android/phone/PhoneSlidingTab;
.super Landroid/view/ViewGroup;
.source "PhoneSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneSlidingTab$Slider;,
        Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimationWillBeCanceled:Z

.field private mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

.field private mDensity:F

.field private mGrabbedState:I

.field private mHoldLeftOnTransition:Z

.field private mHoldRightOnTransition:Z

.field private mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

.field private mOnTriggerListener:Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;

.field private mOrientation:I

.field private mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

.field private mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

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
    .line 558
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/PhoneSlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 559
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v4, 0x108022f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 565
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-boolean v9, p0, Lcom/android/phone/PhoneSlidingTab;->mHoldLeftOnTransition:Z

    .line 67
    iput-boolean v9, p0, Lcom/android/phone/PhoneSlidingTab;->mHoldRightOnTransition:Z

    .line 73
    iput v8, p0, Lcom/android/phone/PhoneSlidingTab;->mGrabbedState:I

    .line 74
    iput-boolean v8, p0, Lcom/android/phone/PhoneSlidingTab;->mTriggered:Z

    .line 101
    new-instance v0, Lcom/android/phone/PhoneSlidingTab$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneSlidingTab$1;-><init>(Lcom/android/phone/PhoneSlidingTab;)V

    iput-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 568
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    .line 570
    sget-object v0, Lcom/android/internal/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 571
    .local v6, a:Landroid/content/res/TypedArray;
    invoke-virtual {v6, v8, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneSlidingTab;->mOrientation:I

    .line 572
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 574
    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 575
    .local v7, r:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/PhoneSlidingTab;->mDensity:F

    .line 578
    new-instance v0, Lcom/android/phone/PhoneSlidingTab$Slider;

    const v2, 0x108021f

    const v3, 0x108020c

    const/16 v5, 0xa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneSlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIII)V

    iput-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 583
    new-instance v0, Lcom/android/phone/PhoneSlidingTab$Slider;

    const v2, 0x1080229

    const v3, 0x1080216

    const/16 v5, 0xb

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneSlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIII)V

    iput-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 590
    iput-boolean v9, p0, Lcom/android/phone/PhoneSlidingTab;->mShowLeftSlider:Z

    .line 591
    iput-boolean v9, p0, Lcom/android/phone/PhoneSlidingTab;->mShowRightSlider:Z

    .line 593
    iput-boolean v8, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimationWillBeCanceled:Z

    .line 595
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneSlidingTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->onAnimationDone()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/PhoneSlidingTab;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneSlidingTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->resetView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneSlidingTab;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneSlidingTab;)Lcom/android/phone/PhoneSlidingTab$Slider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneSlidingTab;)Lcom/android/phone/PhoneSlidingTab$Slider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    return-object v0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 1139
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneSlidingTab;->vibrate(J)V

    .line 1140
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mOnTriggerListener:Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mOnTriggerListener:Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 1143
    :cond_0
    return-void
.end method

.method private isHorizontal()Z
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Lcom/android/phone/PhoneSlidingTab;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveHandle(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 974
    iget-object v6, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .line 975
    .local v3, handle:Landroid/view/View;
    iget-object v6, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->text:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$700(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v0

    .line 976
    .local v0, content:Landroid/view/View;
    iget-object v6, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->icon:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$800(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v4

    .line 977
    .local v4, icon:Landroid/view/View;
    iget-object v6, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->iconText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$900(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v5

    .line 978
    .local v5, iconText:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 979
    float-to-int v6, p1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v6, v7

    .line 980
    .local v1, deltaX:I
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 981
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 982
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 989
    .end local v1           #deltaX:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->invalidate()V

    .line 990
    return-void

    .line 984
    :cond_0
    float-to-int v6, p2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    .line 985
    .local v2, deltaY:I
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 986
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 987
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    goto :goto_0
.end method

.method private onAnimationDone()V
    .locals 1

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->resetView()V

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimating:Z

    .line 931
    return-void
.end method

.method private processMoveEvent(FF)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 776
    invoke-direct {p0, p1, p2, p0}, Lcom/android/phone/PhoneSlidingTab;->withinView(FFLandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 777
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneSlidingTab;->moveHandle(FF)V

    .line 778
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, p1

    .line 779
    .local v1, position:F
    :goto_0
    iget v4, p0, Lcom/android/phone/PhoneSlidingTab;->mThreshold:F

    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->getWidth()I

    move-result v5

    :goto_1
    int-to-float v5, v5

    mul-float v2, v4, v5

    .line 781
    .local v2, target:F
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 782
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iget-object v5, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    if-ne v4, v5, :cond_4

    cmpl-float v4, v1, v2

    if-lez v4, :cond_3

    move v3, v7

    .line 788
    .local v3, thresholdReached:Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/phone/PhoneSlidingTab;->mTriggered:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 789
    iput-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTriggered:Z

    .line 790
    iput-boolean v6, p0, Lcom/android/phone/PhoneSlidingTab;->mTracking:Z

    .line 791
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v4, v8}, Lcom/android/phone/PhoneSlidingTab$Slider;->setState(I)V

    .line 792
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iget-object v5, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    if-ne v4, v5, :cond_a

    move v0, v7

    .line 793
    .local v0, isLeft:Z
    :goto_3
    const-string v4, "SlidingTab"

    const-string v5, "onTouchEvent() : thresholdReached !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    if-eqz v0, :cond_b

    move v4, v7

    :goto_4
    invoke-direct {p0, v4}, Lcom/android/phone/PhoneSlidingTab;->dispatchTriggerEvent(I)V

    .line 797
    iget-boolean v4, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimationWillBeCanceled:Z

    if-eqz v4, :cond_d

    .line 798
    iget-boolean v4, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimationWillBeCanceled:Z

    if-nez v4, :cond_c

    move v4, v7

    :goto_5
    iput-boolean v4, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimationWillBeCanceled:Z

    .line 799
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->resetView()V

    .line 803
    :goto_6
    invoke-direct {p0, v6}, Lcom/android/phone/PhoneSlidingTab;->setGrabbedState(I)V

    .end local v0           #isLeft:Z
    :cond_0
    move v4, v7

    .line 807
    .end local v1           #position:F
    .end local v2           #target:F
    .end local v3           #thresholdReached:Z
    :goto_7
    return v4

    :cond_1
    move v1, p2

    .line 778
    goto :goto_0

    .line 779
    .restart local v1       #position:F
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->getHeight()I

    move-result v5

    goto :goto_1

    .restart local v2       #target:F
    :cond_3
    move v3, v6

    .line 782
    goto :goto_2

    :cond_4
    cmpg-float v4, v1, v2

    if-gez v4, :cond_5

    move v3, v7

    goto :goto_2

    :cond_5
    move v3, v6

    goto :goto_2

    .line 785
    :cond_6
    iget-object v4, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iget-object v5, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    if-ne v4, v5, :cond_8

    cmpg-float v4, v1, v2

    if-gez v4, :cond_7

    move v3, v7

    .restart local v3       #thresholdReached:Z
    :goto_8
    goto :goto_2

    .end local v3           #thresholdReached:Z
    :cond_7
    move v3, v6

    goto :goto_8

    :cond_8
    cmpl-float v4, v1, v2

    if-lez v4, :cond_9

    move v3, v7

    goto :goto_8

    :cond_9
    move v3, v6

    goto :goto_8

    .restart local v3       #thresholdReached:Z
    :cond_a
    move v0, v6

    .line 792
    goto :goto_3

    .restart local v0       #isLeft:Z
    :cond_b
    move v4, v8

    .line 794
    goto :goto_4

    :cond_c
    move v4, v6

    .line 798
    goto :goto_5

    .line 801
    :cond_d
    if-eqz v0, :cond_e

    iget-boolean v4, p0, Lcom/android/phone/PhoneSlidingTab;->mHoldLeftOnTransition:Z

    :goto_9
    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneSlidingTab;->startAnimating(Z)V

    goto :goto_6

    :cond_e
    iget-boolean v4, p0, Lcom/android/phone/PhoneSlidingTab;->mHoldRightOnTransition:Z

    goto :goto_9

    .end local v0           #isLeft:Z
    .end local v1           #position:F
    .end local v2           #target:F
    .end local v3           #thresholdReached:Z
    :cond_f
    move v4, v6

    .line 807
    goto :goto_7
.end method

.method private resetView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 943
    iget-boolean v0, p0, Lcom/android/phone/PhoneSlidingTab;->mShowLeftSlider:Z

    if-ne v0, v2, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneSlidingTab$Slider;->reset(Z)V

    .line 947
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/PhoneSlidingTab;->mShowRightSlider:Z

    if-ne v0, v2, :cond_1

    .line 948
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneSlidingTab$Slider;->reset(Z)V

    .line 950
    :cond_1
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 1150
    iget v0, p0, Lcom/android/phone/PhoneSlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 1151
    iput p1, p0, Lcom/android/phone/PhoneSlidingTab;->mGrabbedState:I

    .line 1152
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mOnTriggerListener:Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mOnTriggerListener:Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/PhoneSlidingTab;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1156
    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 1118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 1119
    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    monitor-exit p0

    return-void

    .line 1118
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

    .line 934
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

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
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

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

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 632
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 633
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 635
    .local v6, y:F
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimating:Z

    if-eqz v7, :cond_0

    move v7, v11

    .line 704
    :goto_0
    return v7

    .line 639
    :cond_0
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v1

    .line 640
    .local v1, leftHandle:Landroid/view/View;
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 641
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 643
    .local v2, leftHit:Z
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .line 644
    .local v3, rightHandle:Landroid/view/View;
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 645
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    .line 647
    .local v4, rightHit:Z
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTracking:Z

    if-nez v7, :cond_1

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    move v7, v11

    .line 648
    goto :goto_0

    .line 651
    :cond_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v7, v10

    .line 704
    goto :goto_0

    .line 653
    :pswitch_0
    iput-boolean v10, p0, Lcom/android/phone/PhoneSlidingTab;->mTracking:Z

    .line 654
    iput-boolean v11, p0, Lcom/android/phone/PhoneSlidingTab;->mTriggered:Z

    .line 655
    const-wide/16 v7, 0x1e

    invoke-direct {p0, v7, v8}, Lcom/android/phone/PhoneSlidingTab;->vibrate(J)V

    .line 656
    if-eqz v2, :cond_6

    .line 658
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mShowLeftSlider:Z

    if-nez v7, :cond_3

    move v7, v11

    .line 659
    goto :goto_0

    .line 662
    :cond_3
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iput-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 665
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mShowRightSlider:Z

    if-ne v7, v10, :cond_4

    .line 666
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iput-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 669
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v13

    :goto_2
    iput v7, p0, Lcom/android/phone/PhoneSlidingTab;->mThreshold:F

    .line 670
    invoke-direct {p0, v10}, Lcom/android/phone/PhoneSlidingTab;->setGrabbedState(I)V

    .line 687
    :goto_3
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v7, v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->setState(I)V

    .line 696
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    if-eqz v7, :cond_2

    .line 697
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/phone/PhoneSlidingTab$Slider;->hide()V

    goto :goto_1

    :cond_5
    move v7, v12

    .line 669
    goto :goto_2

    .line 673
    :cond_6
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mShowRightSlider:Z

    if-nez v7, :cond_7

    move v7, v11

    .line 674
    goto :goto_0

    .line 677
    :cond_7
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iput-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 680
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mShowLeftSlider:Z

    if-ne v7, v10, :cond_8

    .line 681
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    iput-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 684
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v12

    :goto_4
    iput v7, p0, Lcom/android/phone/PhoneSlidingTab;->mThreshold:F

    .line 685
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/phone/PhoneSlidingTab;->setGrabbedState(I)V

    goto :goto_3

    :cond_9
    move v7, v13

    .line 684
    goto :goto_4

    .line 651
    nop

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

    .line 954
    if-nez p1, :cond_0

    .line 971
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    move v5, v6

    :goto_1
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/PhoneSlidingTab$Slider;->layout(IIIII)V

    .line 958
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    move v5, v7

    :goto_2
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/PhoneSlidingTab$Slider;->layout(IIIII)V

    .line 960
    iget-boolean v0, p0, Lcom/android/phone/PhoneSlidingTab;->mShowLeftSlider:Z

    if-ne v0, v7, :cond_3

    .line 961
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneSlidingTab$Slider;->show(Z)V

    .line 966
    :goto_3
    iget-boolean v0, p0, Lcom/android/phone/PhoneSlidingTab;->mShowRightSlider:Z

    if-ne v0, v7, :cond_4

    .line 967
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneSlidingTab$Slider;->show(Z)V

    goto :goto_0

    .line 957
    :cond_1
    const/4 v1, 0x3

    move v5, v1

    goto :goto_1

    .line 958
    :cond_2
    const/4 v1, 0x2

    move v5, v1

    goto :goto_2

    .line 963
    :cond_3
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/phone/PhoneSlidingTab$Slider;->setInvisible()V

    goto :goto_3

    .line 969
    :cond_4
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/phone/PhoneSlidingTab$Slider;->setInvisible()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 599
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 600
    .local v8, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 602
    .local v9, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 603
    .local v1, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 605
    .local v2, heightSpecSize:I
    if-eqz v8, :cond_0

    if-nez v1, :cond_1

    .line 606
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

    const-string v13, "PhoneSlidingTabstack:"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    :cond_1
    iget-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->measure()V

    .line 612
    iget-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->measure()V

    .line 613
    iget-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->getTabWidth()I

    move-result v4

    .line 614
    .local v4, leftTabWidth:I
    iget-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->getTabWidth()I

    move-result v6

    .line 615
    .local v6, rightTabWidth:I
    iget-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->getTabHeight()I

    move-result v3

    .line 616
    .local v3, leftTabHeight:I
    iget-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/phone/PhoneSlidingTab$Slider;->getTabHeight()I

    move-result v5

    .line 619
    .local v5, rightTabHeight:I
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 620
    add-int v10, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 621
    .local v7, width:I
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 626
    .local v0, height:I
    :goto_0
    invoke-virtual {p0, v7, v0}, Lcom/android/phone/PhoneSlidingTab;->setMeasuredDimension(II)V

    .line 627
    return-void

    .line 623
    .end local v0           #height:I
    .end local v7           #width:I
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 624
    .restart local v7       #width:I
    add-int v10, v3, v5

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0       #height:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 812
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTracking:Z

    if-eqz v7, :cond_1

    .line 813
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 814
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 815
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 818
    .local v6, y:F
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    if-nez v7, :cond_0

    .line 819
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 856
    .end local v0           #action:I
    .end local v5           #x:F
    .end local v6           #y:F
    :goto_0
    return v7

    .line 823
    .restart local v0       #action:I
    .restart local v5       #x:F
    .restart local v6       #y:F
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 856
    .end local v0           #action:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_1
    :goto_1
    iget-boolean v7, p0, Lcom/android/phone/PhoneSlidingTab;->mTracking:Z

    if-nez v7, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    move v7, v9

    goto :goto_0

    .line 825
    .restart local v0       #action:I
    .restart local v5       #x:F
    .restart local v6       #y:F
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    .line 826
    .local v4, nHistoryCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 827
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    .line 828
    .local v1, batchX:F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    .line 829
    .local v2, batchY:F
    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneSlidingTab;->processMoveEvent(FF)Z

    .line 826
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 831
    .end local v1           #batchX:F
    .end local v2           #batchY:F
    :cond_3
    invoke-direct {p0, v5, v6}, Lcom/android/phone/PhoneSlidingTab;->processMoveEvent(FF)Z

    move-result v7

    if-nez v7, :cond_1

    .line 836
    .end local v3           #i:I
    .end local v4           #nHistoryCount:I
    :pswitch_1
    iput-boolean v8, p0, Lcom/android/phone/PhoneSlidingTab;->mTracking:Z

    .line 837
    iput-boolean v8, p0, Lcom/android/phone/PhoneSlidingTab;->mTriggered:Z

    .line 840
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    if-eqz v7, :cond_4

    .line 841
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v7, v9}, Lcom/android/phone/PhoneSlidingTab$Slider;->show(Z)V

    .line 845
    :cond_4
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneSlidingTab$Slider;->reset(Z)V

    .line 846
    iget-object v7, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/phone/PhoneSlidingTab$Slider;->hideTarget()V

    .line 847
    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->invalidate()V

    .line 849
    iput-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 850
    iput-object v10, p0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    .line 851
    invoke-direct {p0, v8}, Lcom/android/phone/PhoneSlidingTab;->setGrabbedState(I)V

    goto :goto_1

    .end local v0           #action:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_5
    move v7, v8

    .line 856
    goto :goto_0

    .line 823
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

    .line 714
    iget-boolean v0, p0, Lcom/android/phone/PhoneSlidingTab;->mShowLeftSlider:Z

    if-ne v0, v1, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneSlidingTab$Slider;->reset(Z)V

    .line 718
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/PhoneSlidingTab;->mShowRightSlider:Z

    if-ne v0, v1, :cond_1

    .line 719
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneSlidingTab$Slider;->reset(Z)V

    .line 721
    :cond_1
    if-nez p1, :cond_2

    .line 722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneSlidingTab;->mAnimating:Z

    .line 724
    :cond_2
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1027
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneSlidingTab$Slider;->setHintText(I)V

    .line 1030
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
    .line 1004
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneSlidingTab$Slider;->setIcon(I)V

    .line 1005
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/phone/PhoneSlidingTab$Slider;->setTarget(I)V

    .line 1006
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/phone/PhoneSlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 1007
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/phone/PhoneSlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mLeftSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/phone/PhoneSlidingTab$Slider;->updateDrawableStates()V

    .line 1009
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/android/phone/PhoneSlidingTab;->mOnTriggerListener:Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;

    .line 1132
    return-void
.end method

.method public setRightHintText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneSlidingTab$Slider;->setHintText(I)V

    .line 1089
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
    .line 1063
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneSlidingTab$Slider;->setIcon(I)V

    .line 1064
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/phone/PhoneSlidingTab$Slider;->setTarget(I)V

    .line 1065
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/phone/PhoneSlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 1066
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/phone/PhoneSlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 1067
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/phone/PhoneSlidingTab$Slider;->updateDrawableStates()V

    .line 1068
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/android/phone/PhoneSlidingTab;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneSlidingTab;->reset(Z)V

    .line 750
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 751
    return-void
.end method

.method startAnimating(Z)V
    .locals 24
    .parameter "holdAfter"

    .prologue
    .line 860
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneSlidingTab;->mAnimating:Z

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab;->mCurrentSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    move-object v13, v0

    .line 864
    .local v13, slider:Lcom/android/phone/PhoneSlidingTab$Slider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab;->mOtherSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

    move-object v11, v0

    .line 867
    .local v11, other:Lcom/android/phone/PhoneSlidingTab$Slider;
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/PhoneSlidingTab;->isHorizontal()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 868
    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getRight()I

    move-result v12

    .line 869
    .local v12, right:I
    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v19

    .line 870
    .local v19, width:I
    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getLeft()I

    move-result v10

    .line 871
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneSlidingTab;->getWidth()I

    move-result v18

    .line 872
    .local v18, viewWidth:I
    if-eqz p1, :cond_0

    const/16 v20, 0x0

    move/from16 v9, v20

    .line 873
    .local v9, holdOffset:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

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

    .line 875
    .local v6, dx:I
    :goto_1
    const/4 v7, 0x0

    .line 886
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

    .line 887
    .local v15, trans1:Landroid/view/animation/Animation;
    const-wide/16 v20, 0xfa

    move-object v0, v15

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 888
    new-instance v20, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 889
    const/16 v20, 0x1

    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 890
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

    .line 891
    .local v16, trans2:Landroid/view/animation/Animation;
    const-wide/16 v20, 0xfa

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 892
    new-instance v20, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 893
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 895
    new-instance v20, Lcom/android/phone/PhoneSlidingTab$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneSlidingTab$2;-><init>(Lcom/android/phone/PhoneSlidingTab;ZII)V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 924
    invoke-virtual {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->hideTarget()V

    .line 925
    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneSlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 926
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

    .line 872
    goto/16 :goto_0

    .line 873
    .restart local v9       #holdOffset:I
    :cond_1
    sub-int v20, v18, v10

    add-int v20, v20, v18

    sub-int v20, v20, v9

    move/from16 v6, v20

    goto/16 :goto_1

    .line 877
    .end local v9           #holdOffset:I
    .end local v10           #left:I
    .end local v12           #right:I
    .end local v18           #viewWidth:I
    .end local v19           #width:I
    :cond_2
    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getTop()I

    move-result v14

    .line 878
    .local v14, top:I
    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    .line 879
    .local v5, bottom:I
    #getter for: Lcom/android/phone/PhoneSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/android/phone/PhoneSlidingTab$Slider;->access$100(Lcom/android/phone/PhoneSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    .line 880
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneSlidingTab;->getHeight()I

    move-result v17

    .line 881
    .local v17, viewHeight:I
    if-eqz p1, :cond_3

    const/16 v20, 0x0

    move/from16 v9, v20

    .line 882
    .restart local v9       #holdOffset:I
    :goto_3
    const/4 v6, 0x0

    .line 883
    .restart local v6       #dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneSlidingTab;->mRightSlider:Lcom/android/phone/PhoneSlidingTab$Slider;

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

    .line 881
    goto :goto_3

    .line 883
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
