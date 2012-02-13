.class final Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanoramaViewfinderInfoCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4420
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4420
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;-><init>(Lcom/motorola/CameraF/Camera;)V

    return-void
.end method


# virtual methods
.method public onViewfinderInfo(IZLcom/motorola/android/camera/Panorama;)V
    .locals 6
    .parameter "overlapPercent"
    .parameter "matched"
    .parameter "pan"

    .prologue
    const/4 v5, 0x1

    const-string v4, "MotoCamera"

    .line 4425
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v1, v1, Lcom/motorola/CameraF/Camera;->mPausing:Z

    if-eqz v1, :cond_1

    .line 4461
    :cond_0
    :goto_0
    return-void

    .line 4427
    :cond_1
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PanoramaViewfinderInfoCallback overlapPercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "matched = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4428
    :cond_2
    if-eqz p2, :cond_7

    .line 4429
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterToneOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4430
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_3

    .line 4431
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/motorola/CameraF/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2, v1}, Lcom/motorola/CameraF/Camera;->access$1302(Lcom/motorola/CameraF/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 4432
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    #setter for: Lcom/motorola/CameraF/Camera;->mIsSpeakerOn:Z
    invoke-static {v1, v2}, Lcom/motorola/CameraF/Camera;->access$1402(Lcom/motorola/CameraF/Camera;Z)Z

    .line 4433
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 4435
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v5}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 4438
    :cond_3
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$9000(Lcom/motorola/CameraF/Camera;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4440
    :try_start_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$9000(Lcom/motorola/CameraF/Camera;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 4441
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$9000(Lcom/motorola/CameraF/Camera;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4452
    :cond_4
    :goto_1
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    const-string v1, "MotoCamera"

    const-string v1, "clear vf PANORAMA_VF_MATCH_TIMEOUT in PanoramaPostviewCallback"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4453
    :cond_5
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4454
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v1, "MotoCamera"

    const-string v1, "PanoramaViewfinderInfoCallback matched start timeout timer for JPEG_PICTURE_CALLBACK"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    :cond_6
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4459
    :cond_7
    if-nez p2, :cond_8

    if-lez p1, :cond_0

    .line 4460
    :cond_8
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaViewfinderInfoCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->onViewfinderInfo(IZ)V

    goto/16 :goto_0

    .line 4442
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4443
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PanoramaViewfinderInfoCallback : Failed to play the sound!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
