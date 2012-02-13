.class final Lcom/motorola/CameraF/Camera$PostViewPictureCallback;
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
    name = "PostViewPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4659
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4659
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;-><init>(Lcom/motorola/CameraF/Camera;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "rawData"
    .parameter "camera"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4667
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterAnimation()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 4668
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mRender:Lcom/motorola/CameraF/View/CameraShutterRender;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$9400(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/CameraShutterRender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/CameraShutterRender;->openShutter()V

    .line 4671
    :cond_0
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$8600(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$8600(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 4672
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$8600(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4674
    :cond_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 4677
    .local v0, reviewTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4680
    :cond_2
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2, v4}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 4681
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideTopStatusSet()V

    .line 4682
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 4684
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4685
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/motorola/CameraF/View/FaceTrackingView;->setVisibility(I)V

    .line 4687
    :cond_3
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mSaveImageProcessingView:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$9500(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4688
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mSaveImageProcessingView:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$9500(Lcom/motorola/CameraF/Camera;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4691
    :cond_4
    return-void
.end method
