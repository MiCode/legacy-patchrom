.class Lcom/motorola/CameraF/Camcorder$7;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camcorder;->stopVideoRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 3598
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v3, "MotoCamcorder"

    .line 3602
    :try_start_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lcom/motorola/CameraF/Camcorder;->access$5100(Lcom/motorola/CameraF/Camcorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3603
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lcom/motorola/CameraF/Camcorder;->access$5100(Lcom/motorola/CameraF/Camcorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 3604
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lcom/motorola/CameraF/Camcorder;->access$5100(Lcom/motorola/CameraF/Camcorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3611
    :goto_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/CameraF/Camcorder;->access$1900(Lcom/motorola/CameraF/Camcorder;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3614
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$1900(Lcom/motorola/CameraF/Camcorder;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/motorola/CameraF/Camcorder;->mLastValidFileName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/motorola/CameraF/Camcorder;->access$4702(Lcom/motorola/CameraF/Camcorder;Ljava/lang/String;)Ljava/lang/String;

    .line 3616
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    #calls: Lcom/motorola/CameraF/Camcorder;->registerVideo()V
    invoke-static {v1}, Lcom/motorola/CameraF/Camcorder;->access$5200(Lcom/motorola/CameraF/Camcorder;)V

    .line 3618
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoRecording() - mCurrentVideoFilename"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$1900(Lcom/motorola/CameraF/Camcorder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3624
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterToneOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3625
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/CameraF/Camcorder;->access$5300(Lcom/motorola/CameraF/Camcorder;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3626
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/motorola/CameraF/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2, v1}, Lcom/motorola/CameraF/Camcorder;->access$5302(Lcom/motorola/CameraF/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 3628
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder$7;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/CameraF/Camcorder;->access$5300(Lcom/motorola/CameraF/Camcorder;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 3630
    :cond_3
    return-void

    .line 3606
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3608
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoRecording() - stop() failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
