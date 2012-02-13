.class Lcom/motorola/CameraF/Camera$ImageCapture$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camera$ImageCapture;->storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/CameraF/Camera$ImageCapture;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camera$ImageCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 3536
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$ImageCapture$1;->this$1:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture$1;->this$1:Lcom/motorola/CameraF/Camera$ImageCapture;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$7300(Lcom/motorola/CameraF/Camera;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3538
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture$1;->this$1:Lcom/motorola/CameraF/Camera$ImageCapture;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->initPostPanel()V
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$7400(Lcom/motorola/CameraF/Camera;)V

    .line 3539
    :cond_0
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3541
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "storeImage: Service mode, show postview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$ImageCapture$1;->this$1:Lcom/motorola/CameraF/Camera$ImageCapture;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$ImageCapture;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$7300(Lcom/motorola/CameraF/Camera;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3544
    :cond_2
    return-void
.end method
