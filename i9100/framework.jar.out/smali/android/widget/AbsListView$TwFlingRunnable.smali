.class Landroid/widget/AbsListView$TwFlingRunnable;
.super Landroid/widget/AbsListView$FlingRunnable;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwFlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3275
    iput-object p1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    .line 3277
    iget-object v0, p1, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v0}, Landroid/widget/BounceController;->makeScroller()Landroid/widget/OverScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 3284
    return-void
.end method

.method private endFling()V
    .locals 2

    .prologue
    .line 3321
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3323
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3324
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;)V

    .line 3326
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3328
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3329
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3331
    :cond_0
    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .locals 0
    .parameter "delta"

    .prologue
    .line 3436
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3334
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_0

    .line 3430
    :cond_0
    :goto_0
    return-void

    .line 3339
    :pswitch_0
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 3340
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView$TwFlingRunnable;->endFling()V

    goto :goto_0

    .line 3344
    :cond_2
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v7, v10, Landroid/widget/BounceController;->mBounceExtent:F

    .line 3345
    .local v7, prevBounceExtent:F
    iget-object v8, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 3346
    .local v8, scroller:Landroid/widget/OverScroller;
    invoke-virtual {v8}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v5

    .line 3347
    .local v5, more:Z
    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v9

    .line 3353
    .local v9, y:I
    iget v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    sub-int v1, v10, v9

    .line 3357
    .local v1, delta:I
    if-lez v1, :cond_6

    .line 3360
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v11, v11, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v11, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3361
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3362
    .local v2, firstView:Landroid/view/View;
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3365
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v11}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v11}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v13

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3379
    .end local v2           #firstView:Landroid/view/View;
    :goto_1
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 3381
    .local v0, atEnd:Z
    cmpg-float v10, v7, v12

    if-gtz v10, :cond_3

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v10, v10, Landroid/widget/BounceController;->mBounceExtent:F

    cmpg-float v10, v10, v7

    if-ltz v10, :cond_4

    :cond_3
    cmpl-float v10, v7, v12

    if-ltz v10, :cond_5

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v10, v10, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v10, v10, v7

    if-lez v10, :cond_5

    .line 3384
    :cond_4
    const/4 v5, 0x0

    .line 3387
    :cond_5
    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    .line 3388
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->invalidate()V

    .line 3389
    iput v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 3390
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3369
    .end local v0           #atEnd:Z
    :cond_6
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v10

    sub-int v6, v10, v13

    .line 3370
    .local v6, offsetToLast:I
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v11, v11, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v11, v6

    iput v11, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3372
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3373
    .local v4, lastView:Landroid/view/View;
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3376
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v11}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v11}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v13

    neg-int v10, v10

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 3391
    .end local v4           #lastView:Landroid/view/View;
    .end local v6           #offsetToLast:I
    .restart local v0       #atEnd:Z
    :cond_7
    if-eqz v0, :cond_9

    .line 3392
    invoke-direct {p0}, Landroid/widget/AbsListView$TwFlingRunnable;->endFling()V

    .line 3401
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mBounceBlocked:Z

    if-nez v10, :cond_0

    .line 3402
    invoke-virtual {v8, v13}, Landroid/widget/OverScroller;->getCurrVelocity(Z)F

    move-result v3

    .line 3404
    .local v3, lastFlingSpeed:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mMinimumVelocity:I
    invoke-static {v11}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    .line 3410
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    invoke-interface {v10, v3}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    goto/16 :goto_0

    .line 3412
    :cond_8
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v10, v10, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_0

    .line 3413
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    invoke-interface {v10, v12}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    goto/16 :goto_0

    .line 3418
    .end local v3           #lastFlingSpeed:F
    :cond_9
    invoke-direct {p0}, Landroid/widget/AbsListView$TwFlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 3334
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 3295
    if-gez p1, :cond_0

    move v2, v6

    .line 3296
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 3297
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 3299
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3301
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3309
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 3295
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 0
    .parameter "initialVelocity"

    .prologue
    .line 3442
    return-void
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 3312
    if-gez p1, :cond_0

    const v0, 0x7fffffff

    move v2, v0

    .line 3313
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 3314
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 3315
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3317
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3318
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 3312
    goto :goto_0
.end method

.method startSpringback()V
    .locals 0

    .prologue
    .line 3448
    return-void
.end method
