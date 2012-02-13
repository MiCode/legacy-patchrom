.class final Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoCameraAutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4799
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4799
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;-><init>(Lcom/motorola/CameraF/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 6
    .parameter "focused"
    .parameter "camera"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "MotoCamera"

    .line 4803
    const-string v1, "MotoCamera"

    const-string v1, "MotoCameraAutoFocusCallback - onAutoFocus() - Enter"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mIsFocusing:Z
    invoke-static {v1, v3}, Lcom/motorola/CameraF/Camera;->access$3302(Lcom/motorola/CameraF/Camera;Z)Z

    .line 4809
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4811
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$9600(Lcom/motorola/CameraF/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$3400(Lcom/motorola/CameraF/Camera;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4814
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mIsFocused:Z
    invoke-static {v1, p1}, Lcom/motorola/CameraF/Camera;->access$2802(Lcom/motorola/CameraF/Camera;Z)Z

    .line 4816
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mIsFocused:Z
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$2800(Lcom/motorola/CameraF/Camera;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4818
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mIsFocusFail:Z
    invoke-static {v1, v4}, Lcom/motorola/CameraF/Camera;->access$9702(Lcom/motorola/CameraF/Camera;Z)Z

    .line 4821
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$2600(Lcom/motorola/CameraF/Camera;)V

    .line 4823
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$3400(Lcom/motorola/CameraF/Camera;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v1, v1, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    if-eqz v1, :cond_3

    .line 4825
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v1, v1, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v1}, Lcom/motorola/CameraF/Camera$ImageCapture;->onSnap()V

    .line 4843
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z
    invoke-static {v1, v3}, Lcom/motorola/CameraF/Camera;->access$3402(Lcom/motorola/CameraF/Camera;Z)Z

    .line 4844
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mCaptureOnShortPress:Z
    invoke-static {v1, v3}, Lcom/motorola/CameraF/Camera;->access$3502(Lcom/motorola/CameraF/Camera;Z)Z

    .line 4846
    const-string v1, "MotoCamera"

    const-string v1, "MotoCameraAutoFocusCallback - onAutoFocus() - Exit"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4847
    return-void

    .line 4827
    :cond_3
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInfiniteFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4829
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$9800(Lcom/motorola/CameraF/Camera;)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 4830
    .local v0, tg:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_2

    .line 4832
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_0

    .line 4838
    .end local v0           #tg:Landroid/media/ToneGenerator;
    :cond_4
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$3400(Lcom/motorola/CameraF/Camera;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mIsFocusButtonPressed:Z
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$9600(Lcom/motorola/CameraF/Camera;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4840
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v1, v1, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v1, v4}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto :goto_0
.end method
