.class Lcom/motorola/CameraF/Camera$ImageCapture;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/CameraF/Camera$Capturer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCapture"
.end annotation


# instance fields
.field private mAddImageCancelable:Lcom/motorola/CameraF/ImageManager$IAddImage_cancelable;

.field private mCancel:Z

.field mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

.field private mCapturing:Z

.field private mLastContentUri:Landroid/net/Uri;

.field private mNewFileName:Ljava/lang/String;

.field private mThreadTimeEnd:J

.field private mThreadTimeStart:J

.field private mWallTimeEnd:J

.field private mWallTimeStart:J

.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3362
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3346
    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCancel:Z

    .line 3347
    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCapturing:Z

    .line 3363
    return-void
.end method

.method static synthetic access$8500(Lcom/motorola/CameraF/Camera$ImageCapture;[BLandroid/location/Location;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 3344
    invoke-direct {p0, p1, p2}, Lcom/motorola/CameraF/Camera$ImageCapture;->storeImage([BLandroid/location/Location;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private capture(Z)V
    .locals 12
    .parameter "captureOnly"

    .prologue
    .line 3594
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    const-string v6, "MotoCamera"

    const-string v7, "capture() - Enter"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    :cond_0
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;

    move-result-object v6

    if-nez v6, :cond_2

    .line 3597
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamera"

    const-string v7, "ERROR camera isn\'t opened"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 3601
    .restart local p1
    :cond_2
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    .line 3602
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 3603
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideZoomControlSet()V

    .line 3606
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget v2, v6, Lcom/motorola/CameraF/Camera;->mLastOrientation:I

    .line 3611
    .local v2, orientation:I
    invoke-static {v2}, Lcom/motorola/CameraF/ImageManager;->roundOrientation(I)I

    move-result v2

    .line 3614
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v6, v6, Lcom/motorola/CameraF/Camera;->mIsRotatorClosed:Z

    if-eqz v6, :cond_3

    .line 3616
    add-int/lit8 v2, v2, 0x5a

    .line 3620
    :cond_3
    add-int/lit8 v2, v2, 0x5a

    .line 3622
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_4

    const-string v6, "MotoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLastOrientation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget v8, v8, Lcom/motorola/CameraF/Camera;->mLastOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " roundOrientation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    :cond_4
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$6000(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CameraUtility;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v7}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/motorola/CameraF/CameraUtility;->setPictureRotation(Landroid/hardware/Camera$Parameters;I)V

    .line 3629
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 3632
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 3633
    .local v3, recordLocation:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mLocUtil:Lcom/motorola/CameraF/LocUtility;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1100(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/LocUtility;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/LocUtility;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    move-object v1, v6

    .line 3637
    .local v1, loc:Landroid/location/Location;
    :goto_1
    if-eqz v1, :cond_5

    .line 3639
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 3640
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 3641
    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3642
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 3652
    :goto_2
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 3653
    .local v4, utcTimeSeconds:J
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 3657
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v7, "gps-processing-method"

    const-string v8, "Unknown"

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3658
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v7, "mot-gps-map-datum"

    const-string v8, "Unknown"

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3662
    .end local v4           #utcTimeSeconds:J
    :cond_5
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v7, "face-detect-areas"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3663
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v7, "mot-face-detect-areas"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3666
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v7}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3670
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterToneOn()Z

    move-result v6

    if-nez v6, :cond_7

    .line 3671
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v6

    if-nez v6, :cond_6

    .line 3672
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v7, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Lcom/motorola/CameraF/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v6, p1}, Lcom/motorola/CameraF/Camera;->access$1302(Lcom/motorola/CameraF/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 3674
    :cond_6
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v6

    const/4 v7, 0x7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 3678
    :cond_7
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v6

    if-nez v6, :cond_a

    .line 3680
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraView:Lcom/motorola/CameraF/View/CameraView;
    invoke-static {v7}, Lcom/motorola/CameraF/Camera;->access$7500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/CameraView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/CameraF/View/CameraView;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraView:Lcom/motorola/CameraF/View/CameraView;
    invoke-static {v8}, Lcom/motorola/CameraF/Camera;->access$7500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/CameraView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/CameraF/View/CameraView;->getHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->setScreenSize(II)V

    .line 3683
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x14

    const-wide/16 v8, 0x4e20

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3685
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/motorola/CameraF/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 3689
    :try_start_0
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$7900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/android/camera/Panorama;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaShutterCallback:Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;
    invoke-static {v7}, Lcom/motorola/CameraF/Camera;->access$7600(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;

    move-result-object v7

    new-instance v8, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {v8, v9, v1}, Lcom/motorola/CameraF/Camera$PanoramaPictureCallback;-><init>(Lcom/motorola/CameraF/Camera;Landroid/location/Location;)V

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaPostviewCallback:Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$7700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaViewfinderInfoCallback:Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$7800(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/motorola/android/camera/Panorama;->takePicture(Lcom/motorola/android/camera/Panorama$ShutterCallback;Lcom/motorola/android/camera/Panorama$PictureCallback;Lcom/motorola/android/camera/Panorama$PostviewCallback;Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;)V

    .line 3691
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3692
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideTopStatusSet()V

    .line 3693
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3747
    :goto_3
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    goto/16 :goto_0

    .line 3633
    .end local v1           #loc:Landroid/location/Location;
    .restart local p1
    :cond_8
    const/4 v6, 0x0

    move-object v1, v6

    goto/16 :goto_1

    .line 3647
    .restart local v1       #loc:Landroid/location/Location;
    :cond_9
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto/16 :goto_2

    .line 3696
    .end local p1
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 3697
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "MotoCamera"

    const-string v7, "Panorama - take picture failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3700
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 3703
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isMultishotMode()Z
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1900(Lcom/motorola/CameraF/Camera;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v6

    if-nez v6, :cond_b

    .line 3706
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x6a

    const-wide/32 v8, 0xea60

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3711
    :try_start_1
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mShutterCallback:Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;
    invoke-static {v7}, Lcom/motorola/CameraF/Camera;->access$8000(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {v9, v10, v1}, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;-><init>(Lcom/motorola/CameraF/Camera;Landroid/location/Location;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 3713
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3714
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideTopStatusSet()V

    .line 3715
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 3716
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideZoomSet()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 3717
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 3718
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v6, "MotoCamera"

    const-string v7, "Burst Capture : take picture failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x6a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3721
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x6a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 3726
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_b
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x14

    const-wide/16 v8, 0x4e20

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3729
    const-string v6, "MotoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Flash value before taking picture"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v8}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    :try_start_2
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mShutterCallback:Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;
    invoke-static {v7}, Lcom/motorola/CameraF/Camera;->access$8000(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;-><init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V

    new-instance v10, Lcom/motorola/CameraF/Camera$JpegPictureCallback;

    iget-object v11, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {v10, v11, v1}, Lcom/motorola/CameraF/Camera$JpegPictureCallback;-><init>(Lcom/motorola/CameraF/Camera;Landroid/location/Location;)V

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 3733
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3734
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideTopStatusSet()V

    .line 3735
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 3736
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v6, v6, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideZoomSet()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 3737
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 3738
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v6, "MotoCamera"

    const-string v7, "take picture failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3741
    iget-object v6, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3
.end method

.method private startTiming()V
    .locals 2

    .prologue
    .line 3408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mWallTimeStart:J

    .line 3409
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mThreadTimeStart:J

    .line 3410
    return-void
.end method

.method private stopTiming()V
    .locals 2

    .prologue
    .line 3413
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mThreadTimeEnd:J

    .line 3414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mWallTimeEnd:J

    .line 3415
    return-void
.end method

.method private storeImage([BLandroid/location/Location;)Ljava/lang/Integer;
    .locals 25
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 3419
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 3421
    .local v22, mediaID:Ljava/lang/Integer;
    :try_start_0
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    .line 3422
    invoke-direct/range {p0 .. p0}, Lcom/motorola/CameraF/Camera$ImageCapture;->startTiming()V

    .line 3425
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3426
    .local v10, dateTaken:J
    invoke-static {v10, v11}, Lcom/motorola/CameraF/CameraGlobalTools;->createName(J)Ljava/lang/String;

    move-result-object v8

    .line 3427
    .local v8, title:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/Camera$ImageCapture;->mNewFileName:Ljava/lang/String;

    .line 3428
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_1

    .line 3429
    const-string v5, "MotoCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImageCapture:storeImage:newFileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->mNewFileName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v5, v0

    iget v13, v5, Lcom/motorola/CameraF/Camera;->mLastOrientation:I

    .line 3434
    .local v13, orientation:I
    invoke-static {v13}, Lcom/motorola/CameraF/ImageManager;->roundOrientation(I)I

    move-result v13

    .line 3436
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    .line 3437
    const-string v5, "MotoCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ImageCapture:storeImage - orientation is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/motorola/CameraF/Camera;->mIsRotatorClosed:Z

    if-eqz v5, :cond_3

    .line 3441
    add-int/lit8 v13, v13, 0x5a

    .line 3444
    :cond_3
    const/16 v5, 0x10e

    if-ne v13, v5, :cond_a

    const/4 v13, 0x0

    .line 3448
    :goto_0
    invoke-static {}, Lcom/motorola/CameraF/ImageManager;->instance()Lcom/motorola/CameraF/ImageManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v7, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/motorola/CameraF/Camera;->access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, ""

    sget-object v14, Lcom/motorola/CameraF/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->mNewFileName:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v12, p2

    invoke-virtual/range {v5 .. v15}, Lcom/motorola/CameraF/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    .line 3455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    move-object v5, v0

    if-nez v5, :cond_4

    .line 3457
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/CameraF/Camera$ImageCapture;->mCancel:Z

    .line 3459
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCancel:Z

    move v5, v0

    if-nez v5, :cond_6

    .line 3464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v5, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 3466
    invoke-static {}, Lcom/motorola/CameraF/ImageManager;->instance()Lcom/motorola/CameraF/ImageManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v7, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/motorola/CameraF/Camera;->access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v8, v0

    .end local v8           #title:Ljava/lang/String;
    #getter for: Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/motorola/CameraF/Camera;->access$7100(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/motorola/CameraF/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/ContentResolver;[BLandroid/graphics/Bitmap;)Lcom/motorola/CameraF/ImageManager$IAddImage_cancelable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/Camera$ImageCapture;->mAddImageCancelable:Lcom/motorola/CameraF/ImageManager$IAddImage_cancelable;

    .line 3468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->mAddImageCancelable:Lcom/motorola/CameraF/ImageManager$IAddImage_cancelable;

    move-object v5, v0

    invoke-interface {v5}, Lcom/motorola/CameraF/ImageManager$IAddImage_cancelable;->get()V

    .line 3469
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/Camera$ImageCapture;->mAddImageCancelable:Lcom/motorola/CameraF/ImageManager$IAddImage_cancelable;

    .line 3471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v5, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/motorola/CameraF/Camera;->access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    move-object v15, v0

    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v16, v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 3473
    .local v20, c:Landroid/database/Cursor;
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3474
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 3478
    :cond_5
    if-eqz v20, :cond_6

    .line 3480
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 3486
    .end local v20           #c:Landroid/database/Cursor;
    :cond_6
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_7

    .line 3488
    invoke-direct/range {p0 .. p0}, Lcom/motorola/CameraF/Camera$ImageCapture;->stopTiming()V

    .line 3489
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_7

    .line 3490
    const-string v5, "MotoCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImageCapture:storeImage:Storing image took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->mWallTimeEnd:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->mWallTimeStart:J

    move-wide v9, v0

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Thread time was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->mThreadTimeEnd:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->mThreadTimeStart:J

    move-wide v9, v0

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3500
    .end local v10           #dateTaken:J
    .end local v13           #orientation:I
    :cond_7
    :goto_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/motorola/CameraF/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->mNewFileName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v24

    .line 3504
    .local v24, uri:Landroid/net/Uri;
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_8

    .line 3505
    const-string v5, "MotoCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImageCapture:storeImage: send pic file broadcast ACTION_MEDIA_SCANNER_SCAN_FILE with uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v5, v0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/motorola/CameraF/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 3510
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_9

    .line 3511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v5, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x31

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v23

    .line 3512
    .local v23, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v5, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    move-object v0, v5

    move-object/from16 v1, v23

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3514
    .end local v23           #msg:Landroid/os/Message;
    :cond_9
    return-object v22

    .line 3445
    .end local v24           #uri:Landroid/net/Uri;
    .restart local v8       #title:Ljava/lang/String;
    .restart local v10       #dateTaken:J
    .restart local v13       #orientation:I
    :cond_a
    add-int/lit8 v13, v13, 0x5a

    goto/16 :goto_0

    .line 3496
    .end local v8           #title:Ljava/lang/String;
    .end local v10           #dateTaken:J
    .end local v13           #orientation:I
    :catch_0
    move-exception v5

    move-object/from16 v21, v5

    .line 3497
    .local v21, ex:Ljava/lang/Exception;
    const-string v5, "MotoCamera"

    const-string v6, "ImageCapture:storeImage:Exception while compressing image."

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public cancelAutoDismiss()V
    .locals 0

    .prologue
    .line 3393
    return-void
.end method

.method public cancelSave()V
    .locals 1

    .prologue
    .line 3554
    iget-boolean v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCapturing:Z

    if-nez v0, :cond_0

    .line 3565
    :goto_0
    return-void

    .line 3558
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCancel:Z

    .line 3560
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mAddImageCancelable:Lcom/motorola/CameraF/ImageManager$IAddImage_cancelable;

    if-eqz v0, :cond_1

    .line 3561
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mAddImageCancelable:Lcom/motorola/CameraF/ImageManager$IAddImage_cancelable;

    invoke-interface {v0}, Lcom/motorola/CameraF/ImageManager$IAddImage_cancelable;->cancel()Z

    .line 3564
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/CameraF/Camera$ImageCapture;->dismissFreezeFrame()V

    goto :goto_0
.end method

.method public clearLastData()V
    .locals 1

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3369
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 3372
    :cond_0
    return-void
.end method

.method public dismissFreezeFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 3396
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3399
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3405
    :goto_0
    return-void

    .line 3401
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->restartPreview()V
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1800(Lcom/motorola/CameraF/Camera;)V

    .line 3402
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 3403
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->updateRemainCount()V
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$2500(Lcom/motorola/CameraF/Camera;)V

    goto :goto_0
.end method

.method public getLastBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3589
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLastCaptureUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 3585
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public initiate(Z)V
    .locals 2
    .parameter "captureOnly"

    .prologue
    .line 3572
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3574
    const-string v0, "MotoCamera"

    const-string v1, "initiate() - tried to capture when camera device is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    :goto_0
    return-void

    .line 3578
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCancel:Z

    .line 3579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCapturing:Z

    .line 3581
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera$ImageCapture;->capture(Z)V

    goto :goto_0
.end method

.method public onSnap()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "MotoCamera"

    .line 3767
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v0, v0, Lcom/motorola/CameraF/Camera;->mPausing:Z

    if-eqz v0, :cond_2

    .line 3770
    :cond_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v0, "onSnap() - Tried to take picture in wrong state"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    :cond_1
    :goto_0
    return-void

    .line 3777
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget v0, v0, Lcom/motorola/CameraF/Camera;->mPicturesRemaining:I

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isMultishotMode()Z
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1900(Lcom/motorola/CameraF/Camera;)Z

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget v0, v0, Lcom/motorola/CameraF/Camera;->mPicturesRemaining:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_5

    .line 3779
    :cond_3
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v0, "onSnap() - SD Card Full"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    :cond_4
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->showStorageToast()V
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$8200(Lcom/motorola/CameraF/Camera;)V

    goto :goto_0

    .line 3785
    :cond_5
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v0, v2}, Lcom/motorola/CameraF/Camera;->access$2402(Lcom/motorola/CameraF/Camera;I)I

    .line 3787
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3788
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updatePanoramaCaptureStatus(Z)V

    .line 3791
    :cond_6
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/motorola/CameraF/Camera;->mCaptureStartTime:J

    .line 3794
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterAnimation()Z

    move-result v0

    if-ne v0, v3, :cond_7

    .line 3796
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->startShutterAnim()V
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$4100(Lcom/motorola/CameraF/Camera;)V

    .line 3800
    :cond_7
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRightSet()V

    .line 3802
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0, v4}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideStatusSet(Z)V

    .line 3804
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$2600(Lcom/motorola/CameraF/Camera;)V

    .line 3806
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3808
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v0, v3}, Lcom/motorola/CameraF/Camera$ImageCapture;->initiate(Z)V

    .line 3815
    :goto_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mLockRightSet:Z
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$8300(Lcom/motorola/CameraF/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3816
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mMain:Lcom/motorola/CameraF/View/CameraContentView;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$8400(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/CameraContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/CameraContentView;->centerVFNow()V

    goto/16 :goto_0

    .line 3812
    :cond_8
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v0, v4}, Lcom/motorola/CameraF/Camera$ImageCapture;->initiate(Z)V

    goto :goto_1
.end method

.method public setCapturingLocked(Z)V
    .locals 0
    .parameter "capturing"

    .prologue
    .line 3379
    iput-boolean p1, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCapturing:Z

    .line 3380
    return-void
.end method

.method public setDone(Z)V
    .locals 0
    .parameter "wait"

    .prologue
    .line 3386
    return-void
.end method

.method public storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V
    .locals 9
    .parameter "data"
    .parameter "camera"
    .parameter "loc"

    .prologue
    .line 3519
    iget-object v7, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/motorola/CameraF/Camera$storageRunnable;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v5, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mNewFileName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/CameraF/Camera$storageRunnable;-><init>(Lcom/motorola/CameraF/Camera;[BLandroid/hardware/Camera;Landroid/location/Location;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/motorola/CameraF/Camera;->mStoreThread:Ljava/lang/Thread;
    invoke-static {v7, v8}, Lcom/motorola/CameraF/Camera;->access$7202(Lcom/motorola/CameraF/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 3520
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStoreThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$7200(Lcom/motorola/CameraF/Camera;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3521
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isMultishotMode()Z
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1900(Lcom/motorola/CameraF/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3523
    :try_start_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStoreThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$7200(Lcom/motorola/CameraF/Camera;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3529
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 3530
    invoke-direct {p0}, Lcom/motorola/CameraF/Camera$ImageCapture;->startTiming()V

    .line 3533
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$7100(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 3535
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/motorola/CameraF/Camera$ImageCapture$1;

    invoke-direct {v1, p0}, Lcom/motorola/CameraF/Camera$ImageCapture$1;-><init>(Lcom/motorola/CameraF/Camera$ImageCapture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture;->mCapturing:Z

    .line 3547
    return-void

    .line 3524
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 3525
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
