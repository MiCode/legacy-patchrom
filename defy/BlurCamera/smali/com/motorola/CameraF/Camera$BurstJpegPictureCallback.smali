.class final Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;
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
    name = "BurstJpegPictureCallback"
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
    .line 4601
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4602
    iput-object p2, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 4603
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x0

    const-string v6, "audio"

    const-string v3, "MotoCamera"

    .line 4608
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v1, "BurstJpegPictureCallback: onPictureTaken() - Enter"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->clearFocus()V
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$6500(Lcom/motorola/CameraF/Camera;)V

    .line 4611
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v1, v1, Lcom/motorola/CameraF/Camera;->mPausing:Z

    if-eqz v1, :cond_3

    .line 4614
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterToneOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4615
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4616
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const-string v3, "audio"

    invoke-virtual {v1, v6}, Lcom/motorola/CameraF/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2, v1}, Lcom/motorola/CameraF/Camera;->access$1302(Lcom/motorola/CameraF/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 4618
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 4656
    :cond_2
    :goto_0
    return-void

    .line 4624
    :cond_3
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v1, v1, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p1, p2, v2}, Lcom/motorola/CameraF/Camera$ImageCapture;->storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V

    .line 4626
    sget-object v1, Lcom/motorola/CameraF/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v2}, Lcom/motorola/CameraF/Camera$ImageCapture;->getLastCaptureUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4629
    sget-object v1, Lcom/motorola/CameraF/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_2

    .line 4631
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCamera"

    const-string v1, "BurstJpegPictureCallback: onPictureTaken() - Got all images"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    :cond_4
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4636
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/CameraF/Camera;->access$2402(Lcom/motorola/CameraF/Camera;I)I

    .line 4638
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4639
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const-class v2, Lcom/motorola/CameraF/MultishotPostView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4640
    const-string v1, "com.motorola.CameraF.MultishotPostViewList"

    sget-object v2, Lcom/motorola/CameraF/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4641
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v1, v0}, Lcom/motorola/CameraF/Camera;->startActivity(Landroid/content/Intent;)V

    .line 4643
    sget-object v1, Lcom/motorola/CameraF/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4646
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterToneOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4647
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_5

    .line 4648
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const-string v3, "audio"

    invoke-virtual {v1, v6}, Lcom/motorola/CameraF/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2, v1}, Lcom/motorola/CameraF/Camera;->access$1302(Lcom/motorola/CameraF/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 4650
    :cond_5
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto/16 :goto_0
.end method
