.class final Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/android/camera/Panorama$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanoramaPictureCallback"
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
    .line 4471
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4472
    iput-object p2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->mLocation:Landroid/location/Location;

    .line 4473
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/motorola/android/camera/Panorama;)V
    .locals 9
    .parameter "jpegData"
    .parameter "panorama"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "MotoCamera"

    .line 4477
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    const-string v2, "PanoramaPictureCallback, Enter"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    :cond_0
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4481
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v2, v5}, Lcom/motorola/CameraF/Camera;->access$3902(Lcom/motorola/CameraF/Camera;I)I

    .line 4482
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2, v5}, Lcom/motorola/CameraF/View/Control/OnScreenController;->changeCaptureResource(I)V

    .line 4483
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mIsStitching:Z
    invoke-static {v2, v5}, Lcom/motorola/CameraF/Camera;->access$5602(Lcom/motorola/CameraF/Camera;Z)Z

    .line 4484
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2, v5}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 4486
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v2, v2, Lcom/motorola/CameraF/Camera;->mPausing:Z

    if-eqz v2, :cond_5

    .line 4488
    if-eqz p1, :cond_1

    .line 4489
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, p1, v8, v3}, Lcom/motorola/CameraF/Camera$ImageCapture;->storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V

    .line 4490
    :cond_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v3, 0x3

    #setter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v2, v3}, Lcom/motorola/CameraF/Camera;->access$2402(Lcom/motorola/CameraF/Camera;I)I

    .line 4491
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoCamera"

    const-string v2, "PanoramaPictureCallback, Paused, release camera"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    :cond_2
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->closeCamera()V
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1500(Lcom/motorola/CameraF/Camera;)V

    .line 4494
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterToneOn()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4495
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v2

    if-nez v2, :cond_3

    .line 4496
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Lcom/motorola/CameraF/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v3, v2}, Lcom/motorola/CameraF/Camera;->access$1302(Lcom/motorola/CameraF/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 4498
    :cond_3
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 4593
    :cond_4
    :goto_0
    return-void

    .line 4503
    :cond_5
    if-eqz p1, :cond_9

    .line 4505
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_6

    const-string v2, "MotoCamera"

    const-string v2, "PanoramaPictureCallback, Valid jpegData"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    :cond_6
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$7100(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_7

    .line 4511
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4512
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x4

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4513
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 4517
    :try_start_0
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/motorola/CameraF/Camera;->access$7102(Lcom/motorola/CameraF/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4526
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, p1, v8, v3}, Lcom/motorola/CameraF/Camera$ImageCapture;->storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V

    .line 4529
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->interruptThumbnailThread()V
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$9100(Lcom/motorola/CameraF/Camera;)V

    .line 4530
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    new-instance v3, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {v3, v4, p1}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;-><init>(Lcom/motorola/CameraF/Camera;[B)V

    #setter for: Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;
    invoke-static {v2, v3}, Lcom/motorola/CameraF/Camera;->access$9202(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;)Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    .line 4531
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$9200(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->start()V

    .line 4533
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;

    invoke-direct {v3, p0}, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback$1;-><init>(Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4586
    :goto_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterToneOn()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4587
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v2

    if-nez v2, :cond_8

    .line 4588
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Lcom/motorola/CameraF/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v3, v2}, Lcom/motorola/CameraF/Camera;->access$1302(Lcom/motorola/CameraF/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 4590
    :cond_8
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto/16 :goto_0

    .line 4520
    .restart local v1       #option:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 4522
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 4580
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_9
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v2, v4}, Lcom/motorola/CameraF/Camera;->access$2402(Lcom/motorola/CameraF/Camera;I)I

    .line 4582
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2, v4}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 4583
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v2}, Lcom/motorola/CameraF/Camera$ImageCapture;->dismissFreezeFrame()V

    goto :goto_2
.end method
