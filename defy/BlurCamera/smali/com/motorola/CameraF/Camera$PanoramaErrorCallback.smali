.class final Lcom/motorola/CameraF/Camera$PanoramaErrorCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/android/camera/Panorama$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanoramaErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4307
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$PanoramaErrorCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4307
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera$PanoramaErrorCallback;-><init>(Lcom/motorola/CameraF/Camera;)V

    return-void
.end method


# virtual methods
.method public onError(ILcom/motorola/android/camera/Panorama;)V
    .locals 4
    .parameter "error"
    .parameter "panorama"

    .prologue
    .line 4310
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaErrorCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x64

    if-ge p1, v1, :cond_1

    .line 4311
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PanoramaErrorCallback, error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4312
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaErrorCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4314
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$PanoramaErrorCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4316
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method
