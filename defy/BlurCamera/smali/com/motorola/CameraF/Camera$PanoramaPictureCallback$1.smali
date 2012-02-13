.class Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->onPictureTaken([BLcom/motorola/android/camera/Panorama;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 4534
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v7, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v9, "MotoCamera"

    .line 4535
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v4, 0x3

    #setter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$2402(Lcom/motorola/CameraF/Camera;I)I

    .line 4536
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$5200(Lcom/motorola/CameraF/Camera;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4537
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$5300(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4538
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPostText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1600(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0b0035

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 4539
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v3, v6}, Lcom/motorola/CameraF/Camera;->access$3902(Lcom/motorola/CameraF/Camera;I)I

    .line 4540
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v3, v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updatePanoramaCaptureStatus(Z)V

    .line 4542
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v1, v3

    .line 4544
    .local v1, reviewtime:J
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v3

    if-nez v3, :cond_1

    cmp-long v3, v1, v7

    if-eqz v3, :cond_1

    .line 4546
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCamera"

    const-string v3, "PanoramaPictureCallback:onPictureTaken:Toast shown"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    :cond_0
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPostText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1600(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4548
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v3, v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 4549
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideTopStatusSet()V

    .line 4550
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 4552
    :cond_1
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 4553
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4555
    :try_start_0
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$5800(Lcom/motorola/CameraF/Camera;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 4556
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v4, v4, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v4}, Lcom/motorola/CameraF/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020127

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    #setter for: Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$5802(Lcom/motorola/CameraF/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4561
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v4, v4, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/motorola/CameraF/Camera;->access$5800(Lcom/motorola/CameraF/Camera;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4563
    :cond_3
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$7100(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    cmp-long v3, v1, v7

    if-eqz v3, :cond_4

    .line 4564
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v4, v4, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/motorola/CameraF/Camera;->access$7100(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4565
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4568
    :cond_4
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mKeepAndRestartPreview:Z
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$9300(Lcom/motorola/CameraF/Camera;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4569
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_5

    const-string v3, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PanoramaPictureCallback:onPictureTaken:ReviewTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    :cond_5
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4575
    :cond_6
    return-void

    .line 4557
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 4558
    .local v0, e:Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;->this$1:Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v4, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$5802(Lcom/motorola/CameraF/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 4559
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method
