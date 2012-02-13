.class final Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoCameraFaceDetectCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4250
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4250
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;-><init>(Lcom/motorola/CameraF/Camera;)V

    return-void
.end method


# virtual methods
.method public onFaceDetectUpdate(Landroid/hardware/Camera;)V
    .locals 8
    .parameter "camera"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const-string v5, "MotoCamera"

    .line 4252
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v3

    if-le v3, v6, :cond_1

    .line 4301
    :cond_0
    :goto_0
    return-void

    .line 4256
    :cond_1
    const/4 v0, 0x0

    .line 4257
    .local v0, left:I
    const/4 v2, 0x0

    .line 4258
    .local v2, top:I
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->getFaceDetectAreas()Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/motorola/CameraF/Camera;->access$6100(Lcom/motorola/CameraF/Camera;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    .line 4259
    const-string v3, "MotoCamera"

    const-string v3, "FaceDetectCallback getting faces:"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4260
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 4261
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$6300(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FocusView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4262
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$6300(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FocusView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/FocusView;->getFocusRegion()Landroid/graphics/RectF;

    move-result-object v1

    .line 4263
    .local v1, rect:Landroid/graphics/RectF;
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceDetectCallback getFocusRegion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    :cond_2
    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v3

    .line 4265
    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v3

    .line 4267
    .end local v1           #rect:Landroid/graphics/RectF;
    :cond_3
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_7

    .line 4268
    const-string v3, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceDetectCallback found faces:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v4, v4, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    const-string v3, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceDetectCallback offsets:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/motorola/CameraF/View/FaceTrackingView;->setOffset(II)V

    .line 4271
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v4, v4, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/motorola/CameraF/View/FaceTrackingView;->setFocusAreas(Ljava/util/ArrayList;)V

    .line 4272
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mIsFocused:Z
    invoke-static {v4}, Lcom/motorola/CameraF/Camera;->access$2800(Lcom/motorola/CameraF/Camera;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/CameraF/View/FaceTrackingView;->updateFocusAreas(Z)V

    .line 4274
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mMenuOpened:Z
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$8700(Lcom/motorola/CameraF/Camera;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4276
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4277
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v3, v3, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v3, :cond_4

    .line 4278
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z
    invoke-static {v3, v6}, Lcom/motorola/CameraF/Camera;->access$3402(Lcom/motorola/CameraF/Camera;Z)Z

    .line 4279
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->autoFocus()V
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$3800(Lcom/motorola/CameraF/Camera;)V

    .line 4296
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4297
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$6200(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4298
    :cond_5
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v3, :cond_0

    .line 4299
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$6300(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FocusView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4282
    :cond_6
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    if-eqz v3, :cond_4

    .line 4283
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v3}, Lcom/motorola/CameraF/Camera$ImageCapture;->onSnap()V

    goto :goto_1

    .line 4290
    :cond_7
    const-string v3, "MotoCamera"

    const-string v3, "FaceDetectCallback callback NO faces found"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v3, v3, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4292
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/FaceTrackingView;->clearFocusAreas()V

    .line 4293
    iget-object v3, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$MotoCameraFaceDetectCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mIsFocused:Z
    invoke-static {v4}, Lcom/motorola/CameraF/Camera;->access$2800(Lcom/motorola/CameraF/Camera;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/CameraF/View/FaceTrackingView;->updateFocusAreas(Z)V

    goto :goto_1
.end method
