.class final Lcom/motorola/CameraF/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/CameraF/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 4698
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4699
    iput-object p2, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 4700
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 10
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x0

    const-string v5, "MotoCamera"

    .line 4705
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCamera"

    const-string v3, "JpegPictureCallback:  onPictureTaken() - Enter"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4706
    :cond_0
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$8600(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$8600(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 4707
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$8600(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4711
    :cond_1
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mSaveImageProcessingView:Landroid/view/View;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$9500(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mSaveImageProcessingView:Landroid/view/View;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$9500(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 4712
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mSaveImageProcessingView:Landroid/view/View;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$9500(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4715
    :cond_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v0, v3

    .line 4718
    .local v0, reviewTime:J
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->clearFocus()V
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$6500(Lcom/motorola/CameraF/Camera;)V

    .line 4721
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v3, v3, Lcom/motorola/CameraF/Camera;->mPausing:Z

    if-eqz v3, :cond_5

    .line 4723
    const-string v3, "MotoCamera"

    const-string v3, "JpegPictureCallback:  onPictureTaken, paused, so return"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterToneOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4726
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v3

    if-nez v3, :cond_3

    .line 4727
    iget-object v4, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Lcom/motorola/CameraF/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v4, v3}, Lcom/motorola/CameraF/Camera;->access$1302(Lcom/motorola/CameraF/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 4729
    :cond_3
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v9, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 4796
    :cond_4
    :goto_0
    return-void

    .line 4735
    :cond_5
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4737
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureOnFaceDetect:Z
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$6400(Lcom/motorola/CameraF/Camera;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4739
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mCaptureOnFaceDetect:Z
    invoke-static {v3, v6}, Lcom/motorola/CameraF/Camera;->access$6402(Lcom/motorola/CameraF/Camera;Z)Z

    .line 4743
    :cond_6
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v4, 0x3

    #setter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$2402(Lcom/motorola/CameraF/Camera;I)I

    .line 4747
    if-eqz p1, :cond_c

    .line 4749
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v3

    if-nez v3, :cond_7

    .line 4751
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_a

    .line 4754
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4774
    :cond_7
    :goto_1
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_8

    const-string v3, "MotoCamera"

    const-string v3, "JpegPictureCallback:  onPictureTaken() - spawning thread to save image"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    :cond_8
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/motorola/CameraF/Camera$storeImageRunnable;

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v5, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-direct {v3, v4, p1, p2, v5}, Lcom/motorola/CameraF/Camera$storeImageRunnable;-><init>(Lcom/motorola/CameraF/Camera;[BLandroid/hardware/Camera;Landroid/location/Location;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4776
    .local v2, t:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 4779
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->interruptThumbnailThread()V
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$9100(Lcom/motorola/CameraF/Camera;)V

    .line 4780
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    new-instance v4, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    iget-object v5, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {v4, v5, p1}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;-><init>(Lcom/motorola/CameraF/Camera;[B)V

    #setter for: Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$9202(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;)Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    .line 4781
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$9200(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->start()V

    .line 4789
    .end local v2           #t:Ljava/lang/Thread;
    :goto_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterToneOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4790
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v3

    if-nez v3, :cond_9

    .line 4791
    iget-object v4, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Lcom/motorola/CameraF/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v4, v3}, Lcom/motorola/CameraF/Camera;->access$1302(Lcom/motorola/CameraF/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 4793
    :cond_9
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v9, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto/16 :goto_0

    .line 4756
    :cond_a
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_7

    .line 4759
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPostText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1600(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4761
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v3, v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 4762
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideTopStatusSet()V

    .line 4763
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 4765
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 4766
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/motorola/CameraF/View/FaceTrackingView;->setVisibility(I)V

    .line 4769
    :cond_b
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$JpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 4785
    :cond_c
    const-string v3, "MotoCamera"

    const-string v3, "onPictureTaken() - JPEG data is NULL!  Restarting viewfinder to recover"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
