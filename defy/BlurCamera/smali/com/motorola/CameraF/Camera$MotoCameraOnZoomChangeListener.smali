.class final Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoCameraOnZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4870
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4870
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;-><init>(Lcom/motorola/CameraF/Camera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 4
    .parameter "zoomValue"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    const/16 v3, 0x8

    .line 4873
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 4874
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoomChange: zoom value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stopped= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4880
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 4881
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setZoomNum(I)V

    .line 4882
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateZoom()V

    .line 4885
    if-eqz p2, :cond_1

    .line 4886
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mZoomAdjusting:Z
    invoke-static {v0, v1}, Lcom/motorola/CameraF/Camera;->access$4402(Lcom/motorola/CameraF/Camera;Z)Z

    .line 4889
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4890
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4893
    :cond_1
    return-void
.end method
