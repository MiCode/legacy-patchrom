.class final Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoCameraOnZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camcorder;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/Camcorder;Lcom/motorola/CameraF/Camcorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1318
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;-><init>(Lcom/motorola/CameraF/Camcorder;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 4
    .parameter "zoomValue"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 1321
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1322
    const-string v0, "MotoCamcorder"

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

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/motorola/CameraF/Camcorder;->access$4400(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1331
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static {v0}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateZoom(I)V

    .line 1334
    if-eqz p2, :cond_2

    .line 1335
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camcorder;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/CameraF/Camcorder;->mZoomAdjusting:Z
    invoke-static {v0, v1}, Lcom/motorola/CameraF/Camcorder;->access$2202(Lcom/motorola/CameraF/Camcorder;Z)Z

    .line 1337
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1338
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camcorder;

    #calls: Lcom/motorola/CameraF/Camcorder;->initializeRecorder()V
    invoke-static {v0}, Lcom/motorola/CameraF/Camcorder;->access$1100(Lcom/motorola/CameraF/Camcorder;)V

    .line 1341
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder$MotoCameraOnZoomChangeListener;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1343
    :cond_2
    return-void
.end method
