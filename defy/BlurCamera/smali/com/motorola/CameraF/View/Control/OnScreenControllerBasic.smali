.class public Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;
.super Lcom/motorola/CameraF/View/Control/OnScreenController;
.source "OnScreenControllerBasic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final DefaultTimeout:I = 0x1388

.field private static final EFFECTS:I = 0x2

.field private static final NOSETTING:I = 0x0

.field private static final SCENES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MotoOnScreenControllerBasic"


# instance fields
.field private mBasicRightSetDivider1:Landroid/widget/ImageView;

.field private mBasicRightSetDivider2:Landroid/widget/ImageView;

.field private mCaptureButton:Landroid/widget/Button;

.field private mKeywordTagsView:Landroid/widget/TextView;

.field private mLocationTagsView:Landroid/widget/TextView;

.field private mLockRightSet:Z

.field private mNeedSwitchContentView:Z

.field private mOnScreenMenuShowing:Z

.field private mPanCapturing:Z

.field private mRecording:Z

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mShowAlltimes:Z

.field private mStatus:I

.field private mStatusFlashImg:Landroid/widget/ImageView;

.field private mStatusLocationImg:Landroid/widget/ImageView;

.field private mStatusModeImg:Landroid/widget/ImageView;

.field private mStatusResolutionImg:Landroid/widget/ImageView;

.field private mStatusTagEnableImg:Landroid/widget/ImageView;

.field private mThumbnailImageView:Landroid/widget/ImageButton;

.field private mZoomInButton:Landroid/widget/Button;

.field private mZoomOutButton:Landroid/widget/Button;

.field thumbLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private trayDrawable:Landroid/graphics/drawable/Drawable;

.field private xCurrent:J

.field private xPrevious:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/Control/OnScreenController;-><init>(Landroid/content/Context;)V

    .line 69
    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatus:I

    .line 73
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowAlltimes:Z

    .line 75
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLockRightSet:Z

    .line 77
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mOnScreenMenuShowing:Z

    .line 80
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mNeedSwitchContentView:Z

    .line 104
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecording:Z

    .line 105
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mPanCapturing:Z

    .line 124
    iput-wide v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xCurrent:J

    iput-wide v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xPrevious:J

    .line 121
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainContext:Landroid/content/Context;

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/motorola/CameraF/View/Control/OnScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatus:I

    .line 73
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowAlltimes:Z

    .line 75
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLockRightSet:Z

    .line 77
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mOnScreenMenuShowing:Z

    .line 80
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mNeedSwitchContentView:Z

    .line 104
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecording:Z

    .line 105
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mPanCapturing:Z

    .line 124
    iput-wide v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xCurrent:J

    iput-wide v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xPrevious:J

    .line 116
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/CameraF/View/Control/OnScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatus:I

    .line 73
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowAlltimes:Z

    .line 75
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLockRightSet:Z

    .line 77
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mOnScreenMenuShowing:Z

    .line 80
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mNeedSwitchContentView:Z

    .line 104
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecording:Z

    .line 105
    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mPanCapturing:Z

    .line 124
    iput-wide v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xCurrent:J

    iput-wide v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xPrevious:J

    .line 111
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method private initLeftStatusSet()V
    .locals 1

    .prologue
    .line 293
    const v0, 0x7f0e0039

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mleftStatusSet:Landroid/view/View;

    .line 294
    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusFlashImg:Landroid/widget/ImageView;

    .line 295
    const v0, 0x7f0e003e

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusResolutionImg:Landroid/widget/ImageView;

    .line 296
    const v0, 0x7f0e003c

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusLocationImg:Landroid/widget/ImageView;

    .line 297
    const v0, 0x7f0e003b

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusTagEnableImg:Landroid/widget/ImageView;

    .line 298
    const v0, 0x7f0e003d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusModeImg:Landroid/widget/ImageView;

    .line 299
    return-void
.end method

.method private rightSetFadeIn()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 537
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 538
    const-string v2, "MotoOnScreenControllerBasic"

    const-string v3, "OnScreenController::rightSetFadeIn:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRightSet:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 543
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v2

    if-ne v2, v5, :cond_6

    iget-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mPanCapturing:Z

    if-eqz v2, :cond_6

    .line 546
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 560
    :goto_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v1

    .line 561
    .local v1, isLocationOn:Z
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn()Z

    move-result v0

    .line 562
    .local v0, isKeywordsOn:Z
    iget-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mOnScreenMenuShowing:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 564
    :cond_1
    iput-boolean v5, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mOnScreenMenuShowing:Z

    .line 565
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 566
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 567
    :cond_2
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mTagsSet:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 572
    :cond_3
    iget-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLockRightSet:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomInButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 576
    :cond_4
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->camHardKeyPresent:Z

    if-ne v2, v5, :cond_8

    .line 577
    const v2, 0x7f0e0031

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 599
    :cond_5
    :goto_1
    return-void

    .line 549
    .end local v0           #isKeywordsOn:Z
    .end local v1           #isLocationOn:Z
    :cond_6
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 550
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 554
    :cond_7
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 578
    .restart local v0       #isKeywordsOn:Z
    .restart local v1       #isLocationOn:Z
    :cond_8
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->correctVolumeKeyPlacement:Z

    if-nez v2, :cond_5

    .line 579
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v2

    if-eq v2, v5, :cond_9

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v2

    if-ne v2, v5, :cond_a

    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v2, :cond_a

    .line 583
    :cond_9
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 584
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomInButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 585
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomOutButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 586
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mBasicRightSetDivider1:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mBasicRightSetDivider2:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 589
    :cond_a
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 590
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomInButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 591
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomOutButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 592
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mBasicRightSetDivider1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mBasicRightSetDivider2:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private updateButtons()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "MotoOnScreenControllerBasic"

    .line 906
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 907
    const-string v1, "MotoOnScreenControllerBasic"

    const-string v1, "updateButtons() - Enter"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->trayDrawable:Landroid/graphics/drawable/Drawable;

    .line 918
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const v2, 0x7f0200b3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 919
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 921
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 929
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 930
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomInButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 931
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomInButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 934
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_4

    .line 935
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 936
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 937
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 947
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomOutButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 949
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomOutButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 951
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 952
    const-string v1, "MotoOnScreenControllerBasic"

    const-string v1, "updateButtons() - Exit"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_2
    return-void

    .line 925
    .end local v0           #draw:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 939
    .restart local v0       #draw:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 940
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 941
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 942
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private updateResImg()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const-string v7, "MotoOnScreenControllerBasic"

    .line 304
    const/4 v1, 0x0

    .line 305
    .local v1, currentRes:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v5

    if-nez v5, :cond_4

    .line 307
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 309
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getPanoramaResolution()Ljava/lang/String;

    move-result-object v1

    .line 317
    :goto_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 319
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 321
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 323
    iget-object v5, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusResolutionImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/CameraF/CamSetting/CamSetting;->picResolutionImgs:[Ljava/lang/Integer;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 380
    .end local v2           #i:I
    :cond_0
    :goto_2
    return-void

    .line 313
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 319
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 332
    .end local v2           #i:I
    :cond_3
    iget-object v5, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusResolutionImg:Landroid/widget/ImageView;

    const v6, 0x7f0200ca

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 335
    :cond_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v5

    if-ne v5, v6, :cond_9

    .line 338
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    .line 343
    .local v0, camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    monitor-enter v0

    .line 344
    :try_start_0
    iget-object v5, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    if-nez v5, :cond_5

    .line 345
    const-string v5, "MotoOnScreenControllerBasic"

    const-string v6, "Waiting for the resolution setup"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    :cond_5
    :goto_3
    :try_start_2
    iget-object v5, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    if-eqz v5, :cond_8

    .line 356
    iget-object v5, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 357
    .local v3, num:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v3, :cond_6

    .line 359
    iget-object v5, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, tempString:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 362
    iget-object v5, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusResolutionImg:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->videoResolutionImgs:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    .end local v2           #i:I
    .end local v3           #num:I
    .end local v4           #tempString:Ljava/lang/String;
    :cond_6
    :goto_5
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 357
    .restart local v2       #i:I
    .restart local v3       #num:I
    .restart local v4       #tempString:Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 370
    .end local v2           #i:I
    .end local v3           #num:I
    .end local v4           #tempString:Ljava/lang/String;
    :cond_8
    :try_start_3
    iget-object v5, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusResolutionImg:Landroid/widget/ImageView;

    const v6, 0x7f0200b1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 376
    .end local v0           #camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    :cond_9
    const/4 v1, 0x0

    .line 377
    const-string v5, "MotoOnScreenControllerBasic"

    const-string v5, "Invalide state!"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 348
    .restart local v0       #camSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    :catch_0
    move-exception v5

    goto :goto_3
.end method

.method private updateTagImg()V
    .locals 2

    .prologue
    .line 437
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusTagEnableImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusTagEnableImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeCaptureResource(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 810
    return-void
.end method

.method public getThumbImageView()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public hideControllerPanel(Z)V
    .locals 4
    .parameter "needsave"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 813
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowAlltimes:Z

    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {p0, p1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->hideStatusSet(Z)V

    .line 815
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 818
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowing:Z

    if-eqz v0, :cond_1

    .line 819
    iput-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowing:Z

    .line 820
    iput-boolean v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mOnScreenMenuShowing:Z

    .line 821
    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->setVisibility(I)V

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 824
    return-void
.end method

.method public hideRemainText()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRemainText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1054
    return-void
.end method

.method public hideRightSet()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRightSet:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 638
    return-void
.end method

.method public hideSceneDialog()V
    .locals 0

    .prologue
    .line 786
    return-void
.end method

.method public hideStatusSet(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 990
    return-void
.end method

.method public hideTopStatusSet()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1065
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusFlashImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1066
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusResolutionImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1067
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1068
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusTagEnableImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1069
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusModeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecordingIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1072
    return-void
.end method

.method public hideZoomControlSet()V
    .locals 0

    .prologue
    .line 777
    return-void
.end method

.method public hideZoomSet()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 773
    :cond_0
    return-void
.end method

.method public initTagsSet()V
    .locals 2

    .prologue
    .line 464
    const v0, 0x7f0e0042

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mTagsSet:Landroid/view/View;

    .line 465
    const v0, 0x7f0e0043

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    .line 466
    const v0, 0x7f0e0044

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mKeywordTagsView:Landroid/widget/TextView;

    .line 467
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mTagsSet:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 468
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    return-void
.end method

.method public initZoomSet()V
    .locals 4

    .prologue
    .line 449
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v0

    .line 451
    .local v0, currentZoom:I
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 453
    const v1, 0x7f0e0045

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    sget v2, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_MAX_VALUE:I

    const/4 v3, 0x0

    sub-int/2addr v2, v3

    sget v3, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 458
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 459
    return-void
.end method

.method public isAdjusting()Z
    .locals 1

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowAlltimes:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowing:Z

    return v0
.end method

.method public needCenterVF()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 865
    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatus:I

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x4

    const-string v2, "MotoOnScreenControllerBasic"

    .line 191
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "MotoOnScreenControllerBasic"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnScreenController:onClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 197
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 203
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 206
    :sswitch_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 208
    const-string v0, "MotoOnScreenControllerBasic"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnScreenController:onClick:btnCapture, status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 216
    :cond_3
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 219
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecording:Z

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 225
    :cond_4
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    .line 226
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v0, "OnScreenController:onClick:btnCapture, startRecording"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->rightSetFadeOut()V

    .line 228
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->showTopStatusSet()V

    .line 229
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 236
    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->hideControllerPanel(Z)V

    .line 237
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 238
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v0, "OnScreenController:onClick:send message"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_6
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0030 -> :sswitch_0
        0x7f0e0042 -> :sswitch_2
        0x7f0e004c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const-string v3, "MotoOnScreenControllerBasic"

    .line 247
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v0, "onFinishInflate() - Enter"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    const v0, 0x7f0e0031

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRightSet:Landroid/view/View;

    .line 252
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRightSet:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomInButton:Landroid/widget/Button;

    .line 256
    const v0, 0x7f0e004e

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomOutButton:Landroid/widget/Button;

    .line 257
    const v0, 0x7f0e004c

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    .line 258
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mBasicRightSetDivider1:Landroid/widget/ImageView;

    .line 259
    const v0, 0x7f0e004d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mBasicRightSetDivider2:Landroid/widget/ImageView;

    .line 260
    const v0, 0x7f0e0030

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    .line 261
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRemainText:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f0e003f

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecordingIndicatorView:Landroid/widget/ImageView;

    .line 265
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 270
    :cond_1
    const v0, 0x7f0e0041

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecordingTimeView:Landroid/widget/TextView;

    .line 271
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->initLeftStatusSet()V

    .line 277
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->initTagsSet()V

    .line 279
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->initZoomSet()V

    .line 282
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->updateController()V

    .line 284
    invoke-super {p0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->onFinishInflate()V

    .line 286
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 287
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v0, "onFinishInflate() - Exit"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    const-wide/16 v9, 0xc8

    const/16 v8, 0x19

    const/16 v7, 0x18

    const/4 v6, 0x1

    const-string v5, "MotoOnScreenControllerBasic"

    .line 127
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "MotoOnScreenControllerBasic"

    const-string v1, "onTouch:enter"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 131
    .local v0, action:I
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 132
    const-string v1, "MotoOnScreenControllerBasic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch: Action is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 135
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 137
    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoOnScreenControllerBasic"

    const-string v1, "onTouch:exit"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_3
    invoke-super {p0, p2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 141
    :pswitch_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoOnScreenControllerBasic"

    const-string v1, "onTouch: TouchDown pressed"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xPrevious:J

    goto :goto_0

    .line 149
    :pswitch_1
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    const-string v1, "MotoOnScreenControllerBasic"

    const-string v1, "onTouch: TouchUp pressed / Press and Hold"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_5
    if-ne v0, v6, :cond_6

    .line 151
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 152
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xCurrent:J

    .line 153
    if-ne v0, v6, :cond_7

    iget-wide v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xCurrent:J

    iget-wide v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xPrevious:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, v9

    if-lez v1, :cond_8

    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-wide v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xCurrent:J

    iget-wide v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xPrevious:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, v9

    if-ltz v1, :cond_2

    .line 156
    :cond_8
    iget-wide v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xCurrent:J

    iput-wide v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->xPrevious:J

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 161
    :sswitch_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    const-string v1, "MotoOnScreenControllerBasic"

    const-string v1, "onTouch: ZOOM_IN"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_9
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v1, v6

    .line 164
    goto :goto_1

    .line 169
    :sswitch_1
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_a

    const-string v1, "MotoOnScreenControllerBasic"

    const-string v1, "onTouch: ZOOM_OUT"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_a
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v1, v6

    .line 172
    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x7f0e004a -> :sswitch_0
        0x7f0e004e -> :sswitch_1
    .end sparse-switch
.end method

.method public rightSetFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x8

    .line 603
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 604
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v1, "OnScreenController:rightSetFadeout:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mOnScreenMenuShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowAlltimes:Z

    if-nez v0, :cond_3

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mOnScreenMenuShowing:Z

    .line 609
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 616
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLockRightSet:Z

    if-nez v0, :cond_2

    .line 618
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->camHardKeyPresent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 619
    const v0, 0x7f0e0031

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 629
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    :cond_3
    return-void

    .line 621
    :cond_4
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->correctVolumeKeyPlacement:Z

    if-nez v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomInButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomOutButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mBasicRightSetDivider1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mBasicRightSetDivider2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setParams(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    .line 533
    return-void
.end method

.method public setRecordButton(Z)V
    .locals 7
    .parameter "recording"

    .prologue
    const v6, 0x7f0b0086

    const v5, 0x7f020064

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "MotoOnScreenControllerBasic"

    .line 384
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 386
    if-nez p1, :cond_2

    .line 388
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "MotoOnScreenControllerBasic"

    const-string v1, "OnScreenController:setRecordButton, stop recording"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 392
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 393
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    const v2, 0x7f0b0085

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 394
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecording:Z

    .line 397
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const v2, 0x7f0200b3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 433
    .end local v0           #draw:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 402
    const-string v1, "MotoOnScreenControllerBasic"

    const-string v1, "OnScreenController:setRecordButton, start recording"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 405
    .restart local v0       #draw:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 407
    iput-boolean v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecording:Z

    .line 410
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecordingIndicatorView:Landroid/widget/ImageView;

    const v2, 0x7f0200da

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 412
    .end local v0           #draw:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 414
    if-nez p1, :cond_6

    .line 416
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    .line 417
    const-string v1, "MotoOnScreenControllerBasic"

    const-string v1, "Panorama, stop"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 420
    .restart local v0       #draw:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    const v2, 0x7f0b0084

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 425
    .end local v0           #draw:Landroid/graphics/drawable/Drawable;
    :cond_6
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    .line 426
    const-string v1, "MotoOnScreenControllerBasic"

    const-string v1, "Panorama, Start"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_7
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 429
    .restart local v0       #draw:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 430
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 794
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->show(I)V

    .line 795
    return-void
.end method

.method public show(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 835
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowing:Z

    if-nez v0, :cond_1

    .line 836
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mNeedSwitchContentView:Z

    if-eqz v0, :cond_0

    .line 837
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mNeedSwitchContentView:Z

    .line 854
    :goto_0
    return-void

    .line 840
    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->setVisibility(I)V

    .line 841
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->invalidate()V

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowing:Z

    .line 845
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowing:Z

    if-eqz v0, :cond_2

    .line 846
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->rightSetFadeIn()V

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 849
    if-gtz p1, :cond_3

    .line 850
    const/16 p1, 0x1388

    .line 852
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public show(Z)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 799
    iput-boolean p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLockRightSet:Z

    .line 800
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->show(I)V

    .line 801
    return-void
.end method

.method public showCameraCaptureControl(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 806
    return-void
.end method

.method public showRemainText()V
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRemainText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1060
    return-void
.end method

.method public showRightSet()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 644
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mPanCapturing:Z

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 660
    :goto_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRightSet:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 661
    return-void

    .line 652
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTopStatusSet()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1077
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusFlashImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1078
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusResolutionImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1079
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusLocationImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusTagEnableImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusModeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1082
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mTagsSet:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mRecordingIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1084
    return-void
.end method

.method public showZoomControlSet()V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public startZoom()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 665
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v1, "OnScreenController:adjustZoom:mZoomProgressBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public toggleMediaControlsVisibility()V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowAlltimes:Z

    if-nez v0, :cond_0

    .line 880
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mShowing:Z

    if-nez v0, :cond_2

    .line 881
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->show()V

    goto :goto_0

    .line 883
    :cond_2
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mOnScreenMenuShowing:Z

    if-eqz v0, :cond_3

    .line 884
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->rightSetFadeOut()V

    goto :goto_0

    .line 886
    :cond_3
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->rightSetFadeIn()V

    goto :goto_0
.end method

.method public touchZoomStatusUpdate()V
    .locals 0

    .prologue
    .line 675
    return-void
.end method

.method public updateController()V
    .locals 2

    .prologue
    const-string v1, "MotoOnScreenControllerBasic"

    .line 893
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 894
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v0, "updateController() - Enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->updateButtons()V

    .line 898
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->updateStatusIcons()V

    .line 900
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 901
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v0, "updateController() - Exit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_1
    return-void
.end method

.method public updateLocationText()V
    .locals 6

    .prologue
    const v4, 0x7f0b004d

    const/16 v5, 0x8

    .line 716
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    .line 718
    .local v1, setting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLocStatus()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 724
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 729
    :cond_2
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLocStatus()I

    move-result v2

    if-nez v2, :cond_3

    .line 731
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 736
    :cond_3
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLocStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 738
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 743
    :cond_4
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLocStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 745
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 752
    :cond_5
    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAddress()Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, adr:Ljava/lang/String;
    if-nez v0, :cond_6

    .line 755
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    :goto_1
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 763
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 760
    :cond_6
    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public updatePanoramaCaptureStatus(Z)V
    .locals 0
    .parameter "capturing"

    .prologue
    .line 710
    iput-boolean p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mPanCapturing:Z

    .line 711
    return-void
.end method

.method public updateStatusIcons()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const-string v3, "MotoOnScreenControllerBasic"

    .line 957
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 958
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v0, "updateStatusIcons() - Enter"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusFlashImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusFlashImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 968
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 970
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusModeImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/CameraF/CameraGlobalTools;->getStatusModeResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 971
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusModeImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 978
    :goto_0
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->updateResImg()V

    .line 979
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->updateTagsSet()V

    .line 980
    invoke-direct {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->updateTagImg()V

    .line 982
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 983
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v0, "updateStatusIcons() - Exit"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_2
    return-void

    .line 975
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusModeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateTagsSet()V
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    const-string v11, ","

    .line 473
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v1

    .line 474
    .local v1, isLocationOn:Z
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn()Z

    move-result v0

    .line 475
    .local v0, isKeywordsOn:Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_7

    .line 477
    :cond_0
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mTagsSet:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 478
    if-eqz v1, :cond_2

    .line 480
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->updateLocationText()V

    .line 489
    :goto_0
    if-eqz v0, :cond_6

    .line 491
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getAllTags()Ljava/util/List;

    move-result-object v3

    .line 493
    .local v3, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 494
    .local v2, loadedTags:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v10, :cond_3

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b003f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 512
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    .end local v2           #loadedTags:Ljava/lang/String;
    .end local v3           #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 485
    :cond_2
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 499
    .restart local v2       #loadedTags:Ljava/lang/String;
    .restart local v3       #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v10, :cond_4

    .line 501
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 503
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 505
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #loadedTags:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #loadedTags:Ljava/lang/String;
    goto :goto_1

    .line 507
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 516
    .end local v2           #loadedTags:Ljava/lang/String;
    .end local v3           #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 522
    :cond_7
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mTagsSet:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mKeywordTagsView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v4, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mStatusLocationImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 12
    .parameter "image"
    .parameter "orientation"

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x0

    const-string v11, ", "

    const-string v10, "MotoOnScreenControllerBasic"

    .line 1001
    const/4 v7, 0x0

    .line 1003
    .local v7, finalBitmap:Landroid/graphics/Bitmap;
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1004
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v0, "updateThumbnail() - Enter"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v9

    .line 1007
    .local v9, width:I
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v8

    .line 1009
    .local v8, height:I
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 1010
    const-string v0, "MotoOnScreenControllerBasic"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnail - mThumbnailImageView measured width x height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_1
    if-eqz v9, :cond_2

    if-eqz v8, :cond_2

    if-nez p1, :cond_4

    .line 1017
    :cond_2
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 1018
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v0, "updateThumbnail() - either thumbnail is null or widthxheight of our VIEW isn\'t valid"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_3
    const/4 v7, 0x0

    .line 1046
    :goto_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1047
    return-void

    .line 1024
    :cond_4
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    .line 1025
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v0, "updateThumbnail() - everything is valid, set mini thumbnail"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_5
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 1028
    const-string v0, "MotoOnScreenControllerBasic"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnail() - everything is valid, scale is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v9

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v8

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_6
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    .line 1031
    const-string v0, "MotoOnScreenControllerBasic"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnail() - everything is valid, w and h is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_7
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1035
    .local v5, rotationMatrix:Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1036
    sub-int v0, v9, v4

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-int v2, v8, v4

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1039
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1040
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_8

    .line 1041
    const-string v0, "MotoOnScreenControllerBasic"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE_THUMBNAIL() - everything is valid, scaled w and h is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method public updateZoom()V
    .locals 5

    .prologue
    .line 677
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v0

    .line 678
    .local v0, currentZoom:I
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 679
    const-string v1, "MotoOnScreenControllerBasic"

    const-string v2, "OnScreenController:adjustZoom:mZoomProgressBar is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    sub-int v2, v0, v2

    sget v3, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 686
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updateZoom(I)V
    .locals 4
    .parameter "zoomNum"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 695
    const-string v0, "MotoOnScreenControllerBasic"

    const-string v1, "OnScreenController:adjustZoom:mZoomProgressBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mZoomBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    sub-int v1, p1, v1

    sget v2, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 702
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerBasic;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
