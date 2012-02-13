.class final Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoCameraShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4224
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4224
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;-><init>(Lcom/motorola/CameraF/Camera;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .prologue
    .line 4229
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/motorola/CameraF/Camera;->mShutterCallbackTime:J

    .line 4230
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-wide v1, v1, Lcom/motorola/CameraF/Camera;->mShutterCallbackTime:J

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-wide v3, v3, Lcom/motorola/CameraF/Camera;->mCaptureStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/motorola/CameraF/Camera;->mShutterLag:J

    .line 4231
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-wide v2, v2, Lcom/motorola/CameraF/Camera;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$8600(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$8600(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4245
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$8600(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4247
    :cond_1
    return-void
.end method
