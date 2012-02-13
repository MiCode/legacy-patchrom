.class Lcom/motorola/android/widget/TextViewHelper$3;
.super Ljava/lang/Object;
.source "TextViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/widget/TextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/widget/TextViewHelper;


# direct methods
.method constructor <init>(Lcom/motorola/android/widget/TextViewHelper;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, now:J
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mLastScrollTime:J
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1300(Lcom/motorola/android/widget/TextViewHelper;)J

    move-result-wide v7

    sub-long v7, v2, v7

    long-to-float v7, v7

    const/high16 v8, 0x447a

    div-float v6, v7, v8

    .local v6, t:F
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1400(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    const/high16 v8, 0x3f00

    add-float v0, v7, v8

    .local v0, displacement:F
    const/high16 v7, 0x3f80

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1700(Lcom/motorola/android/widget/TextViewHelper;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/motorola/android/widget/TextViewHelper;->access$1500(Lcom/motorola/android/widget/TextViewHelper;)Ljava/lang/Runnable;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mResScrollFrameDuration:I
    invoke-static {v9}, Lcom/motorola/android/widget/TextViewHelper;->access$1600(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #setter for: Lcom/motorola/android/widget/TextViewHelper;->mLastScrollTime:J
    invoke-static {v7, v2, v3}, Lcom/motorola/android/widget/TextViewHelper;->access$1302(Lcom/motorola/android/widget/TextViewHelper;J)J

    const/4 v1, 0x1

    .local v1, more:Z
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$200(Lcom/motorola/android/widget/TextViewHelper;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    .local v4, sx:I
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$200(Lcom/motorola/android/widget/TextViewHelper;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    .local v5, sy:I
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1800(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    const/4 v8, 0x1

    #setter for: Lcom/motorola/android/widget/TextViewHelper;->mAllowScrolling:Z
    invoke-static {v7, v8}, Lcom/motorola/android/widget/TextViewHelper;->access$2102(Lcom/motorola/android/widget/TextViewHelper;Z)Z

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$200(Lcom/motorola/android/widget/TextViewHelper;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/widget/TextView;->scrollTo(II)V

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #setter for: Lcom/motorola/android/widget/TextViewHelper;->mAllowScrolling:Z
    invoke-static {v7, v12}, Lcom/motorola/android/widget/TextViewHelper;->access$2102(Lcom/motorola/android/widget/TextViewHelper;Z)Z

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mLastTouchEvent:Landroid/view/MotionEvent;
    invoke-static {v9}, Lcom/motorola/android/widget/TextViewHelper;->access$2200(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mLastTouchEvent:Landroid/view/MotionEvent;
    invoke-static {v10}, Lcom/motorola/android/widget/TextViewHelper;->access$2200(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget-object v11, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mLastTouchControlOffsetY:I
    invoke-static {v11}, Lcom/motorola/android/widget/TextViewHelper;->access$2300(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    #calls: Lcom/motorola/android/widget/TextViewHelper;->getCursorOffset(FF)I
    invoke-static {v8, v9, v10}, Lcom/motorola/android/widget/TextViewHelper;->access$1000(Lcom/motorola/android/widget/TextViewHelper;FF)I

    move-result v8

    #calls: Lcom/motorola/android/widget/TextViewHelper;->updateSelection(I)Z
    invoke-static {v7, v8}, Lcom/motorola/android/widget/TextViewHelper;->access$1100(Lcom/motorola/android/widget/TextViewHelper;I)Z

    sget-boolean v7, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$2400(Lcom/motorola/android/widget/TextViewHelper;)Lcom/motorola/android/widget/TextOverlay;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$2400(Lcom/motorola/android/widget/TextViewHelper;)Lcom/motorola/android/widget/TextOverlay;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/android/widget/TextOverlay;->isShown()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mLastTouchEvent:Landroid/view/MotionEvent;
    invoke-static {v8}, Lcom/motorola/android/widget/TextViewHelper;->access$2200(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v8

    #calls: Lcom/motorola/android/widget/TextViewHelper;->showTextOverlayAt(Landroid/view/MotionEvent;)V
    invoke-static {v7, v8}, Lcom/motorola/android/widget/TextViewHelper;->access$2500(Lcom/motorola/android/widget/TextViewHelper;Landroid/view/MotionEvent;)V

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$2400(Lcom/motorola/android/widget/TextViewHelper;)Lcom/motorola/android/widget/TextOverlay;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/android/widget/TextOverlay;->invalidate()V

    :cond_2
    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1700(Lcom/motorola/android/widget/TextViewHelper;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/motorola/android/widget/TextViewHelper;->access$1500(Lcom/motorola/android/widget/TextViewHelper;)Ljava/lang/Runnable;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mResScrollFrameDuration:I
    invoke-static {v9}, Lcom/motorola/android/widget/TextViewHelper;->access$1600(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :pswitch_0
    float-to-int v7, v0

    sub-int/2addr v5, v7

    if-gtz v5, :cond_1

    const/4 v5, 0x0

    const/4 v1, 0x0

    goto/16 :goto_1

    :pswitch_1
    float-to-int v7, v0

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollY:I
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1900(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v7

    if-lt v5, v7, :cond_1

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollY:I
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$1900(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v5

    const/4 v1, 0x0

    goto/16 :goto_1

    :pswitch_2
    float-to-int v7, v0

    sub-int/2addr v4, v7

    if-gtz v4, :cond_1

    const/4 v4, 0x0

    const/4 v1, 0x0

    goto/16 :goto_1

    :pswitch_3
    float-to-int v7, v0

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollX:I
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$2000(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v7

    if-lt v4, v7, :cond_1

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollX:I
    invoke-static {v7}, Lcom/motorola/android/widget/TextViewHelper;->access$2000(Lcom/motorola/android/widget/TextViewHelper;)I

    move-result v4

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_3
    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper$3;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #setter for: Lcom/motorola/android/widget/TextViewHelper;->mScrollTimerRunning:Z
    invoke-static {v7, v12}, Lcom/motorola/android/widget/TextViewHelper;->access$2602(Lcom/motorola/android/widget/TextViewHelper;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
