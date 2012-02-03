.class Landroid/webkit/WebView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 6549
    iput-object p1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6549
    invoke-direct {p0, p1}, Landroid/webkit/WebView$ScaleDetectorListener;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 12
    .parameter "detector"

    .prologue
    const-wide v10, 0x408f400000000000L

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6662
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;
    invoke-static {v2}, Landroid/webkit/WebView;->access$3500(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v2

    iget-boolean v2, v2, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v9, v2, :cond_0

    .line 6663
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;
    invoke-static {v2}, Landroid/webkit/WebView;->access$3500(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebMagnifier;->hide()V

    .line 6668
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v9, :cond_3

    .line 6671
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$3100(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 6672
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->cancelTouch()V

    .line 6673
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6675
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iput-boolean v8, v2, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6678
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6679
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6684
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2, p1}, Landroid/webkit/OnPinchZoomListener;->onNewScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v0

    .line 6687
    .local v0, flag:Z
    if-ne v0, v9, :cond_2

    .line 6689
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;Z)Z

    :cond_2
    move v2, v0

    .line 6719
    .end local v0           #flag:Z
    :goto_0
    return v2

    .line 6699
    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 6700
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    const-wide v6, 0x406f400000000000L

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v10

    double-to-float v1, v2

    .line 6703
    .local v1, scale:F
    :goto_1
    invoke-virtual {p1, v8}, Landroid/webkit/WebviewScaleGestureDetector;->setCurrTilt(I)I

    .line 6705
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {}, Landroid/webkit/WebView;->access$2800()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 6706
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;Z)Z

    .line 6708
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    .line 6709
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    const/high16 v3, 0x3fa0

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 6713
    :goto_2
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;F)F

    .line 6714
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2302(Landroid/webkit/WebView;F)F

    .line 6715
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v2, v1, v8, v8, v3}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 6716
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    move v2, v9

    .line 6717
    goto :goto_0

    .line 6702
    .end local v1           #scale:F
    :cond_4
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    double-to-float v1, v2

    .restart local v1       #scale:F
    goto :goto_1

    .line 6711
    :cond_5
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    const v3, 0x3f4ccccd

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_2

    :cond_6
    move v2, v8

    .line 6719
    goto/16 :goto_0
.end method

.method public onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 6554
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 6555
    .local v1, tiltStart:J
    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebviewScaleGestureDetector;->setTiltStartTime(J)J

    .line 6556
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 6558
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->registerTiltListener()V

    .line 6559
    const-string v3, "Webview_tilt"

    const-string/jumbo v4, "tilt is registered in webview"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6561
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->cancelTouch()V

    .line 6562
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6564
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iput-boolean v5, v3, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6567
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v3}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6568
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v3}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6571
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v3}, Landroid/webkit/ViewManager;->startZoom()V

    .line 6575
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 6577
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getPluginMode()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 6579
    new-instance v0, Landroid/webkit/WebView$PluginUpdateData;

    invoke-direct {v0}, Landroid/webkit/WebView$PluginUpdateData;-><init>()V

    .line 6580
    .local v0, data:Landroid/webkit/WebView$PluginUpdateData;
    iput v5, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    .line 6581
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V

    .line 6584
    .end local v0           #data:Landroid/webkit/WebView$PluginUpdateData;
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMaxZoomScale:F
    invoke-static {v4}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v5}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)F

    move-result v5

    invoke-interface {v3, p1, v4, v5}, Landroid/webkit/OnPinchZoomListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;FF)Z

    .line 6589
    :cond_3
    return v6
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .locals 10
    .parameter "detector"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 6596
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-eq v2, v8, :cond_0

    .line 6597
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->unregisterTiltListener()V

    .line 6599
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v8, :cond_2

    .line 6601
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v8}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;Z)Z

    .line 6602
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getCenterX()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;F)F

    .line 6603
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getCenterY()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2302(Landroid/webkit/WebView;F)F

    .line 6604
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getScale()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$1102(Landroid/webkit/WebView;F)F

    .line 6606
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 6607
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$1102(Landroid/webkit/WebView;F)F

    .line 6609
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMaxZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 6610
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMaxZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$1102(Landroid/webkit/WebView;F)F

    .line 6613
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6614
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;Z)Z

    .line 6615
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v4}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    #setter for: Landroid/webkit/WebView;->mAnchorX:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2402(Landroid/webkit/WebView;I)I

    .line 6616
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v4}, Landroid/webkit/WebView;->access$2300(Landroid/webkit/WebView;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$2700(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v3

    #setter for: Landroid/webkit/WebView;->mAnchorY:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2602(Landroid/webkit/WebView;I)I

    .line 6619
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {}, Landroid/webkit/WebView;->access$2800()F

    move-result v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL

    iget-object v6, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mTextWrapScale:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_7

    :cond_3
    move v1, v8

    .line 6624
    .local v1, reflowNow:Z
    :goto_0
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v3

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v2, v3, v1, v8, v4}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 6626
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 6629
    .end local v1           #reflowNow:Z
    :cond_4
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6633
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6638
    :cond_5
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    const/16 v3, 0x8

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$3102(Landroid/webkit/WebView;I)I

    .line 6639
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mConfirmMove:Z
    invoke-static {v2, v8}, Landroid/webkit/WebView;->access$3202(Landroid/webkit/WebView;Z)Z

    .line 6640
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchTime:J
    invoke-static {v5}, Landroid/webkit/WebView;->access$3300(Landroid/webkit/WebView;)J

    move-result-wide v5

    #calls: Landroid/webkit/WebView;->startTouch(FFJ)V
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$3400(Landroid/webkit/WebView;FFJ)V

    .line 6643
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->endZoom()V

    .line 6647
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v8, :cond_6

    .line 6649
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2, p1}, Landroid/webkit/OnPinchZoomListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 6650
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->getPluginMode()I

    move-result v2

    if-ne v2, v8, :cond_6

    .line 6652
    new-instance v0, Landroid/webkit/WebView$PluginUpdateData;

    invoke-direct {v0}, Landroid/webkit/WebView$PluginUpdateData;-><init>()V

    .line 6653
    .local v0, data:Landroid/webkit/WebView$PluginUpdateData;
    iput v8, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    .line 6654
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V

    .line 6657
    .end local v0           #data:Landroid/webkit/WebView$PluginUpdateData;
    :cond_6
    return-void

    :cond_7
    move v1, v9

    .line 6619
    goto/16 :goto_0
.end method
