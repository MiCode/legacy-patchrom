.class Lcom/motorola/CameraF/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mActivityReference:Landroid/app/Activity;

.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 2613
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2615
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2613
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera$MainHandler;-><init>(Lcom/motorola/CameraF/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 2624
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v9, v9, Lcom/motorola/CameraF/Camera;->mPausing:Z

    if-eqz v9, :cond_1

    .line 3230
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2626
    .restart local p1
    :cond_1
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 3227
    :pswitch_1
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_0

    .line 3228
    const-string v9, "MotoCamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MainHandler:handleMessage:Receive illegal message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2629
    :pswitch_2
    new-instance v4, Lcom/motorola/CameraF/Camera$MainHandler$1;

    invoke-direct {v4, p0}, Lcom/motorola/CameraF/Camera$MainHandler$1;-><init>(Lcom/motorola/CameraF/Camera$MainHandler;)V

    .line 2635
    .local v4, okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    const/4 v1, 0x0

    .line 2636
    .local v1, cancel:Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2637
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0b007f

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2638
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2639
    const v9, 0x104000a

    invoke-virtual {v0, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2640
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2645
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    .end local v1           #cancel:Z
    .end local v4           #okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    :pswitch_3
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPostText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1600(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2646
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2647
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2649
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->restartPreview()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1800(Lcom/motorola/CameraF/Camera;)V

    .line 2651
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isMultishotMode()Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1900(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2653
    sget-object v9, Lcom/motorola/CameraF/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2654
    sget-object v9, Lcom/motorola/CameraF/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->trimToSize()V

    .line 2671
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x1

    #setter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2402(Lcom/motorola/CameraF/Camera;I)I

    .line 2672
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2673
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2674
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->updateRemainCount()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2500(Lcom/motorola/CameraF/Camera;)V

    .line 2677
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2600(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 2656
    :cond_3
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2659
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    #calls: Lcom/motorola/CameraF/Camera;->enablePanorama(Z)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2100(Lcom/motorola/CameraF/Camera;Z)V

    goto :goto_1

    .line 2660
    :cond_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    sget-boolean v10, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-ne v9, v10, :cond_2

    .line 2661
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isFaceTrackingOn()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    .line 2663
    :cond_5
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_6

    const-string v9, "MotoCamera"

    const-string v10, "RESTART_PREVIEW Face Tracking pref is ON"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    :cond_6
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->enableFaceTracking()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2200(Lcom/motorola/CameraF/Camera;)V

    goto :goto_1

    .line 2667
    :cond_7
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_8

    const-string v9, "MotoCamera"

    const-string v10, "RESTART_PREVIEW Face Tracking pref is OFF"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    :cond_8
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->disableFaceTracking()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2300(Lcom/motorola/CameraF/Camera;)V

    goto :goto_1

    .line 2689
    :pswitch_4
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->launchGallery()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2700(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 2694
    :pswitch_5
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_0

    .line 2695
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->rightSetFadeOut()V

    goto/16 :goto_0

    .line 2699
    :pswitch_6
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_0

    .line 2701
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideStatusSet(Z)V

    .line 2702
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v9, v9, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mIsFocused:Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2800(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2707
    :cond_9
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 2713
    :goto_2
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2600(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 2711
    :cond_a
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    goto :goto_2

    .line 2718
    :pswitch_7
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_0

    .line 2720
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v9, v9, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mIsFocused:Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2800(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2725
    :cond_b
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 2731
    :goto_3
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2600(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 2729
    :cond_c
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    goto :goto_3

    .line 2736
    :pswitch_8
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_d

    const-string v9, "MotoCamera"

    const-string v10, "handleMessage ZOOM_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    :cond_d
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_e

    .line 2739
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideZoomSet()V

    .line 2741
    :cond_e
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 2742
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2743
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    .line 2746
    :cond_f
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->updateRemainCount()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2500(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 2749
    :pswitch_9
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 2750
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_0

    .line 2751
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateZoom()V

    goto/16 :goto_0

    .line 2755
    :pswitch_a
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_10

    const-string v9, "MotoCamera"

    const-string v10, "MainHandler:handleMessage: CameraGlobalType.TO_TAGSETTING"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    :cond_10
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2757
    .local v3, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const-class v10, Lcom/motorola/CameraF/TagsSetting;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2759
    const-string v9, "orientation"

    const/4 v10, 0x2

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2760
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v9, v3}, Lcom/motorola/CameraF/Camera;->startActivity(Landroid/content/Intent;)V

    .line 2761
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setReturnFromTag(Z)V

    goto/16 :goto_0

    .line 2767
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_b
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v11, 0x7f0b004f

    invoke-virtual {v10, v11}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2900(Lcom/motorola/CameraF/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2772
    :pswitch_c
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v11, 0x7f0b0050

    invoke-virtual {v10, v11}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2900(Lcom/motorola/CameraF/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2776
    :pswitch_d
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_11

    const-string v9, "MotoCamera"

    const-string v10, "SHOW_TOAST_AND_EXIT_CAMERA occurs!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    :cond_11
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v11, 0x7f0b007b

    invoke-virtual {v10, v11}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2900(Lcom/motorola/CameraF/Camera;Ljava/lang/String;)V

    .line 2778
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x6

    const-wide/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2783
    :pswitch_e
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_12

    const-string v9, "MotoCamera"

    const-string v10, "EXIT_CAMERA occurs!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :cond_12
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v9}, Lcom/motorola/CameraF/Camera;->finish()V

    goto/16 :goto_0

    .line 2789
    :pswitch_f
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->writeTagToDB(Ljava/lang/Integer;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$3000(Lcom/motorola/CameraF/Camera;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 2794
    :pswitch_10
    iget v9, p1, Landroid/os/Message;->arg1:I

    packed-switch v9, :pswitch_data_1

    .line 2810
    :pswitch_11
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_13

    const-string v9, "MotoCamera"

    const-string v10, "PANORAMA_ERROR_OCCUR occurs!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_13
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v11, 0x7f0b0053

    invoke-virtual {v10, v11}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2900(Lcom/motorola/CameraF/Camera;Ljava/lang/String;)V

    .line 2815
    :goto_4
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x1

    #setter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2402(Lcom/motorola/CameraF/Camera;I)I

    .line 2817
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->closeCamera()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1500(Lcom/motorola/CameraF/Camera;)V

    .line 2818
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->enableSingleShot()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3100(Lcom/motorola/CameraF/Camera;)V

    .line 2819
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2820
    :cond_14
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2821
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->updateRemainCount()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2500(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 2797
    :pswitch_12
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_15

    const-string v9, "MotoCamera"

    const-string v10, "PANORAMA_ERROR_OUT_OF_MEMORY occurs!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    :cond_15
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v11, 0x7f0b0054

    invoke-virtual {v10, v11}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2900(Lcom/motorola/CameraF/Camera;Ljava/lang/String;)V

    goto :goto_4

    .line 2803
    :pswitch_13
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_16

    const-string v9, "MotoCamera"

    const-string v10, "PANORAMA_ERROR_STITCH_ENGINE_FAIL occurs!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    :cond_16
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v11, 0x7f0b0055

    invoke-virtual {v10, v11}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2900(Lcom/motorola/CameraF/Camera;Ljava/lang/String;)V

    .line 2805
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->changeCaptureResource(I)V

    goto :goto_4

    .line 2827
    :pswitch_14
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_0

    .line 2828
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateLocationText()V

    goto/16 :goto_0

    .line 2832
    :pswitch_15
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_17

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_18

    .line 2833
    :cond_17
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2836
    :cond_18
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 2840
    :pswitch_16
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_19

    const-string v9, "MotoCamera"

    const-string v10, "JPEG_PICTURE_CALLBACK_TIMEOUT occurs!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    :cond_19
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x1

    #setter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2402(Lcom/motorola/CameraF/Camera;I)I

    .line 2843
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 2844
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v11, 0x7f0b0053

    invoke-virtual {v10, v11}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2900(Lcom/motorola/CameraF/Camera;Ljava/lang/String;)V

    .line 2845
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->changeCaptureResource(I)V

    .line 2846
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->enableSingleShot()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3100(Lcom/motorola/CameraF/Camera;)V

    .line 2849
    :cond_1a
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->closeCamera()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1500(Lcom/motorola/CameraF/Camera;)V

    .line 2851
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2853
    :cond_1b
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v9}, Lcom/motorola/CameraF/Camera$ImageCapture;->dismissFreezeFrame()V

    goto/16 :goto_0

    .line 2858
    :pswitch_17
    const-string v9, "MotoCamera"

    const-string v10, "BURST_JPEG_PICTURE_CALLBACK_TIMEOUT occurs!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x1

    #setter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2402(Lcom/motorola/CameraF/Camera;I)I

    .line 2861
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 2862
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->enableSingleShot()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3100(Lcom/motorola/CameraF/Camera;)V

    .line 2864
    :cond_1c
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->closeCamera()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1500(Lcom/motorola/CameraF/Camera;)V

    .line 2866
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_1d

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2868
    :cond_1d
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2869
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    #calls: Lcom/motorola/CameraF/Camera;->enablePanorama(Z)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2100(Lcom/motorola/CameraF/Camera;Z)V

    goto/16 :goto_0

    .line 2872
    :pswitch_18
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_1e

    const-string v9, "MotoCamera"

    const-string v10, "PANORAMA_VF_MATCH_TIMEOUT occurs!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :cond_1e
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x1

    #setter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2402(Lcom/motorola/CameraF/Camera;I)I

    .line 2874
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2875
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_1f

    const-string v9, "MotoCamera"

    const-string v10, "PANORAMA_VF_MATCH_TIMEOUT : Stop Capture!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    :cond_1f
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->stopPanoramaCapture()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3200(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 2882
    :pswitch_19
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_20

    const-string v9, "MotoCamera"

    const-string v10, "AUTO_FOCUS_CALLBACK_TIMEOUT occurs!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    :cond_20
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mIsFocusing:Z
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$3302(Lcom/motorola/CameraF/Camera;Z)Z

    .line 2884
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_21

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3400(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 2886
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2888
    :cond_21
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$3402(Lcom/motorola/CameraF/Camera;Z)Z

    .line 2889
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mCaptureOnShortPress:Z
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$3502(Lcom/motorola/CameraF/Camera;Z)Z

    goto/16 :goto_0

    .line 2893
    :pswitch_1a
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_22

    const-string v9, "MotoCamera"

    const-string v10, "Capture"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    :cond_22
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 2899
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v9

    if-eqz v9, :cond_23

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 2901
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v9, v9, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v9, :cond_0

    .line 2902
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x1

    #setter for: Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$3402(Lcom/motorola/CameraF/Camera;Z)Z

    .line 2903
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->autoFocus()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3800(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 2905
    :cond_23
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_25

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_25

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3900(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$4000(Lcom/motorola/CameraF/Camera;)I

    move-result v10

    if-ge v9, v10, :cond_25

    .line 2910
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_24

    const-string v9, "MotoCamera"

    const-string v10, "clear Vf match JPEG_PICTURE_CALLBACK_TIMEOUT in CameraGlobalType.CAPTURE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    :cond_24
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2913
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->stopPanoramaCapture()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3200(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 2917
    :cond_25
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    if-eqz v9, :cond_0

    .line 2918
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v9}, Lcom/motorola/CameraF/Camera$ImageCapture;->onSnap()V

    goto/16 :goto_0

    .line 2927
    :pswitch_1b
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_26

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterAnimation()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_26

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->startShutterAnim()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$4100(Lcom/motorola/CameraF/Camera;)V

    .line 2928
    :cond_26
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x47

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2932
    :pswitch_1c
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_27

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getShutterAnimation()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_27

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->stopShutterAnim()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$4200(Lcom/motorola/CameraF/Camera;)V

    .line 2933
    :cond_27
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x46

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2937
    :pswitch_1d
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->changeZoom(Ljava/lang/Boolean;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$4300(Lcom/motorola/CameraF/Camera;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 2940
    :pswitch_1e
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->changeZoom(Ljava/lang/Boolean;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$4300(Lcom/motorola/CameraF/Camera;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 2944
    :pswitch_1f
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 2945
    .local v8, zoomToValue:I
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mZoomAdjusting:Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$4400(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-nez v9, :cond_28

    .line 2946
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x1

    #setter for: Lcom/motorola/CameraF/Camera;->mZoomAdjusting:Z
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$4402(Lcom/motorola/CameraF/Camera;Z)Z

    .line 2947
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->zoomTo(I)V
    invoke-static {v9, v8}, Lcom/motorola/CameraF/Camera;->access$4500(Lcom/motorola/CameraF/Camera;I)V

    .line 2949
    :cond_28
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setZoomNum(I)V

    goto/16 :goto_0

    .line 2955
    .end local v8           #zoomToValue:I
    :pswitch_20
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto/16 :goto_0

    .line 2959
    :pswitch_21
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$4600(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I
    invoke-static {v11}, Lcom/motorola/CameraF/Camera;->access$4700(Lcom/motorola/CameraF/Camera;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    .line 2962
    :pswitch_22
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/Camera;->showDialog(I)V

    .line 2963
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->currentDialog:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$4802(Lcom/motorola/CameraF/Camera;I)I

    goto/16 :goto_0

    .line 2966
    :pswitch_23
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 2967
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v11, 0x7f0b0050

    invoke-virtual {v10, v11}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2900(Lcom/motorola/CameraF/Camera;Ljava/lang/String;)V

    .line 2970
    :goto_5
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x2

    #setter for: Lcom/motorola/CameraF/Camera;->currentDialog:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$4802(Lcom/motorola/CameraF/Camera;I)I

    goto/16 :goto_0

    .line 2969
    :cond_29
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/Camera;->showDialog(I)V

    goto :goto_5

    .line 2973
    :pswitch_24
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2a

    .line 2974
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/Camera;->showDialog(I)V

    .line 2975
    :cond_2a
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x3

    #setter for: Lcom/motorola/CameraF/Camera;->currentDialog:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$4802(Lcom/motorola/CameraF/Camera;I)I

    goto/16 :goto_0

    .line 2979
    :pswitch_25
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v10

    invoke-virtual {v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setLastCameraMode(I)V

    .line 2980
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 2982
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isCameraLaunchedFromCamcorder()Z

    move-result v9

    if-nez v9, :cond_2b

    .line 2984
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 2987
    :goto_6
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->launchCamcorder()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$4900(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 2986
    :cond_2b
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    goto :goto_6

    .line 2990
    :pswitch_26
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v10

    invoke-virtual {v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setLastCameraMode(I)V

    .line 2991
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 2992
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->launchCamcorder()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$4900(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 2995
    :pswitch_27
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v10

    invoke-virtual {v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setLastCameraMode(I)V

    .line 2996
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 2997
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->launchCamcorder()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$4900(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 3002
    :pswitch_28
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v10

    invoke-virtual {v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setLastCameraMode(I)V

    .line 3003
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 3004
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->launchCamcorder()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$4900(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 3008
    :pswitch_29
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->enableFaceTracking()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2200(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 3012
    :pswitch_2a
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->enableSingleShot()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3100(Lcom/motorola/CameraF/Camera;)V

    .line 3013
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3016
    :pswitch_2b
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x1

    #calls: Lcom/motorola/CameraF/Camera;->enablePanorama(Z)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2100(Lcom/motorola/CameraF/Camera;Z)V

    .line 3017
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_2c

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3019
    :cond_2c
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v9, v9, Lcom/motorola/CameraF/Camera;->mIsRotatorClosed:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->isPanoramaMode()Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2000(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3021
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v11, 0x7f0b001e

    invoke-virtual {v10, v11}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2900(Lcom/motorola/CameraF/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3026
    :pswitch_2c
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->enableSmileSelfPortrait()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5000(Lcom/motorola/CameraF/Camera;)V

    .line 3027
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3030
    :pswitch_2d
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget v10, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$4002(Lcom/motorola/CameraF/Camera;I)I

    .line 3031
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$3902(Lcom/motorola/CameraF/Camera;I)I

    .line 3033
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getStitchMode()Ljava/lang/String;

    move-result-object v7

    .line 3034
    .local v7, stitchMode:Ljava/lang/String;
    const-string v9, "left-right"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mCurrentStitchMode:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$5102(Lcom/motorola/CameraF/Camera;I)I

    .line 3040
    :cond_2d
    :goto_7
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5200(Lcom/motorola/CameraF/Camera;)Landroid/widget/ProgressBar;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3041
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5300(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3044
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCurrentStitchMode:I
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$5100(Lcom/motorola/CameraF/Camera;)I

    move-result v10

    iget-object v11, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget v12, v12, Lcom/motorola/CameraF/Camera;->mLastOrientation:I

    iget-object v13, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mDisplayHeight:I
    invoke-static {v13}, Lcom/motorola/CameraF/Camera;->access$5400(Lcom/motorola/CameraF/Camera;)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->init(ILandroid/os/Handler;II)V

    .line 3045
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 3046
    .local v5, sb:Ljava/lang/StringBuffer;
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3900(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3047
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v10, 0x7f0b0019

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3048
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$4000(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3049
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->setText(Ljava/lang/String;)V

    .line 3050
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 3051
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mIsStitching:Z
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$5602(Lcom/motorola/CameraF/Camera;Z)Z

    goto/16 :goto_0

    .line 3035
    .end local v5           #sb:Ljava/lang/StringBuffer;
    :cond_2e
    const-string v9, "right-left"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x1

    #setter for: Lcom/motorola/CameraF/Camera;->mCurrentStitchMode:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$5102(Lcom/motorola/CameraF/Camera;I)I

    goto/16 :goto_7

    .line 3036
    :cond_2f
    const-string v9, "up-down"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x2

    #setter for: Lcom/motorola/CameraF/Camera;->mCurrentStitchMode:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$5102(Lcom/motorola/CameraF/Camera;I)I

    goto/16 :goto_7

    .line 3037
    :cond_30
    const-string v9, "down-up"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x3

    #setter for: Lcom/motorola/CameraF/Camera;->mCurrentStitchMode:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$5102(Lcom/motorola/CameraF/Camera;I)I

    goto/16 :goto_7

    .line 3056
    .end local v7           #stitchMode:Ljava/lang/String;
    :pswitch_2e
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$4002(Lcom/motorola/CameraF/Camera;I)I

    .line 3057
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$3902(Lcom/motorola/CameraF/Camera;I)I

    .line 3058
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2600(Lcom/motorola/CameraF/Camera;)V

    .line 3059
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5200(Lcom/motorola/CameraF/Camera;)Landroid/widget/ProgressBar;

    move-result-object v9

    if-eqz v9, :cond_31

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5200(Lcom/motorola/CameraF/Camera;)Landroid/widget/ProgressBar;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3060
    :cond_31
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5300(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;

    move-result-object v9

    if-eqz v9, :cond_32

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5300(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3061
    :cond_32
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    move-result-object v9

    if-eqz v9, :cond_33

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 3062
    :cond_33
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 3065
    :pswitch_2f
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_34

    .line 3066
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v10, 0x7f0b0052

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3068
    :cond_34
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v10, 0x7f0b0051

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3073
    :pswitch_30
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->enableMultiShot()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5700(Lcom/motorola/CameraF/Camera;)V

    .line 3074
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3078
    :pswitch_31
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3900(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$4000(Lcom/motorola/CameraF/Camera;)I

    move-result v10

    if-ne v9, v10, :cond_38

    .line 3079
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->reset()V

    .line 3080
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 3081
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 3084
    :try_start_0
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5800(Lcom/motorola/CameraF/Camera;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_35

    .line 3085
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v10}, Lcom/motorola/CameraF/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020127

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    #setter for: Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$5802(Lcom/motorola/CameraF/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3091
    :cond_35
    :goto_8
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$5800(Lcom/motorola/CameraF/Camera;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3092
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3093
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5200(Lcom/motorola/CameraF/Camera;)Landroid/widget/ProgressBar;

    move-result-object v9

    if-nez v9, :cond_36

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v11, 0x7f0e0065

    invoke-virtual {v10, v11}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ProgressBar;

    #setter for: Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v9, p1}, Lcom/motorola/CameraF/Camera;->access$5202(Lcom/motorola/CameraF/Camera;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 3094
    :cond_36
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5300(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;

    move-result-object v9

    if-nez v9, :cond_37

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v11, 0x7f0e0066

    invoke-virtual {v10, v11}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    #setter for: Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v9, p1}, Lcom/motorola/CameraF/Camera;->access$5302(Lcom/motorola/CameraF/Camera;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 3095
    :cond_37
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5200(Lcom/motorola/CameraF/Camera;)Landroid/widget/ProgressBar;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3096
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5300(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3086
    .restart local p1
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 3087
    .local v2, e:Ljava/lang/OutOfMemoryError;
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$5802(Lcom/motorola/CameraF/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3088
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_8

    .line 3098
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_38
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 3099
    .local v6, sb1:Ljava/lang/StringBuffer;
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3900(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3100
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v10, 0x7f0b0019

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3101
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$4000(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3102
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->setText(Ljava/lang/String;)V

    .line 3103
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3900(Lcom/motorola/CameraF/Camera;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_39

    .line 3104
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const v11, 0x7f0b001c

    invoke-virtual {v10, v11}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/motorola/CameraF/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2900(Lcom/motorola/CameraF/Camera;Ljava/lang/String;)V

    .line 3106
    :cond_39
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    if-eqz v9, :cond_0

    .line 3107
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3113
    .end local v6           #sb1:Ljava/lang/StringBuffer;
    :pswitch_32
    const-string v9, "MotoCamera"

    const-string v10, "FACE_TRACK timeout arrived NO faces found"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    if-eqz v9, :cond_3a

    .line 3115
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3116
    :cond_3a
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/View/FaceTrackingView;->clearFocusAreas()V

    .line 3117
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mIsFocused:Z
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$2800(Lcom/motorola/CameraF/Camera;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/FaceTrackingView;->updateFocusAreas(Z)V

    goto/16 :goto_0

    .line 3120
    :pswitch_33
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$6000(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CameraUtility;

    move-result-object v9

    if-eqz v9, :cond_3b

    .line 3121
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->getFaceDetectAreas()Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$6100(Lcom/motorola/CameraF/Camera;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v9, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    .line 3123
    :cond_3b
    const-string v9, "MotoCamera"

    const-string v10, "FACE_TRACK timer expired getting faces:"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    if-eqz v9, :cond_3f

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_3f

    .line 3125
    const-string v9, "MotoCamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FACE_TRACK_FOUND timer found faces:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v11, v11, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x1

    #setter for: Lcom/motorola/CameraF/Camera;->mIsFocused:Z
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$2802(Lcom/motorola/CameraF/Camera;Z)Z

    .line 3127
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, v10, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/FaceTrackingView;->setFocusAreas(Ljava/util/ArrayList;)V

    .line 3128
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mIsFocused:Z
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$2800(Lcom/motorola/CameraF/Camera;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/FaceTrackingView;->updateFocusAreas(Z)V

    .line 3136
    :goto_9
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_3c

    const-string v9, "MotoCamera"

    const-string v10, "resetting FaceTracking timer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    :cond_3c
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 3138
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$6200(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3139
    :cond_3d
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v9, :cond_3e

    .line 3140
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$6300(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FocusView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    .line 3141
    :cond_3e
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x67

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3131
    :cond_3f
    const-string v9, "MotoCamera"

    const-string v10, "FACE_TRACK timeout NO faces found"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x66

    const-wide/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    .line 3145
    :pswitch_34
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->getFaceDetectAreas()Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$6100(Lcom/motorola/CameraF/Camera;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v9, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    .line 3146
    const-string v9, "MotoCamera"

    const-string v10, "SELF_SHOT_DETECT timer expired getting faces:"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    if-eqz v9, :cond_42

    .line 3148
    const-string v9, "MotoCamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELF SHOT timer found faces:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v11, v11, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v10, v10, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/FaceTrackingView;->setFocusAreas(Ljava/util/ArrayList;)V

    .line 3150
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFaceTracker:Lcom/motorola/CameraF/View/FaceTrackingView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$5900(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FaceTrackingView;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mIsFocused:Z
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$2800(Lcom/motorola/CameraF/Camera;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/FaceTrackingView;->updateFocusAreas(Z)V

    .line 3151
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCaptureOnFaceDetect:Z
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$6400(Lcom/motorola/CameraF/Camera;)Z

    move-result v9

    if-eqz v9, :cond_42

    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v9, v9, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_42

    .line 3153
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_40

    const-string v9, "MotoCamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCaptureonFaceDetect triggering autofocus::"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v11, v11, Lcom/motorola/CameraF/Camera;->mDetectedFaces:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :cond_40
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x69

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3156
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 3157
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v9, v9, Lcom/motorola/CameraF/Camera;->mPreviewing:Z

    if-eqz v9, :cond_0

    .line 3158
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v10, 0x1

    #setter for: Lcom/motorola/CameraF/Camera;->mCaptureOnFocus:Z
    invoke-static {v9, v10}, Lcom/motorola/CameraF/Camera;->access$3402(Lcom/motorola/CameraF/Camera;Z)Z

    .line 3159
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->autoFocus()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3800(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 3162
    :cond_41
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->clearFocus()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$6500(Lcom/motorola/CameraF/Camera;)V

    .line 3163
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->updateFocusIndicator()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$2600(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 3169
    :cond_42
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3700(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v9

    if-eqz v9, :cond_43

    .line 3170
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mFocusView:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$6200(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3171
    :cond_43
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v9, :cond_44

    .line 3172
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$6300(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/FocusView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    .line 3173
    :cond_44
    sget-boolean v9, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_45

    const-string v9, "MotoCamera"

    const-string v10, "resetting SELF_SHOT timer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    :cond_45
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x69

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3190
    :pswitch_35
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->initializeFirstTime()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$6600(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 3193
    :pswitch_36
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3194
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->setCameraParameters()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$6700(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 3197
    :pswitch_37
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3198
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->updateScenesEffects()V
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$6800(Lcom/motorola/CameraF/Camera;)V

    goto/16 :goto_0

    .line 3201
    :pswitch_38
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3202
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v9}, Lcom/motorola/CameraF/Camera;->updateEffects()V

    goto/16 :goto_0

    .line 3205
    :pswitch_39
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v9}, Lcom/motorola/CameraF/Camera;->finish()V

    goto/16 :goto_0

    .line 3209
    :pswitch_3a
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v9}, Lcom/motorola/CameraF/Camera;->onScreenCaptureFocus()V

    goto/16 :goto_0

    .line 3213
    :pswitch_3b
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v9}, Lcom/motorola/CameraF/Camera;->onScreenCaptureDown()V

    goto/16 :goto_0

    .line 3216
    :pswitch_3c
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v9}, Lcom/motorola/CameraF/Camera;->onScreenCaptureUp()V

    goto/16 :goto_0

    .line 3219
    :pswitch_3d
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3221
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$6000(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/CameraUtility;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/motorola/CameraF/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 3222
    iget-object v9, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v9}, Lcom/motorola/CameraF/Camera;->access$3600(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v10}, Lcom/motorola/CameraF/Camera;->access$6900(Lcom/motorola/CameraF/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 2626
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_e
        :pswitch_a
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_b
        :pswitch_7
        :pswitch_1
        :pswitch_14
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_1
        :pswitch_16
        :pswitch_19
        :pswitch_1
        :pswitch_1a
        :pswitch_1d
        :pswitch_1e
        :pswitch_1
        :pswitch_1
        :pswitch_22
        :pswitch_1
        :pswitch_23
        :pswitch_25
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2a
        :pswitch_2d
        :pswitch_2e
        :pswitch_1
        :pswitch_2c
        :pswitch_30
        :pswitch_1
        :pswitch_24
        :pswitch_2f
        :pswitch_18
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_15
        :pswitch_f
        :pswitch_35
        :pswitch_36
        :pswitch_1
        :pswitch_c
        :pswitch_1
        :pswitch_39
        :pswitch_d
        :pswitch_1
        :pswitch_37
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_2
        :pswitch_1
        :pswitch_1f
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_1
        :pswitch_1
        :pswitch_1c
        :pswitch_1b
        :pswitch_21
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_31
        :pswitch_10
        :pswitch_32
        :pswitch_33
        :pswitch_1
        :pswitch_34
        :pswitch_17
        :pswitch_1
        :pswitch_1
        :pswitch_3d
        :pswitch_20
        :pswitch_1
        :pswitch_1
        :pswitch_38
    .end packed-switch

    .line 2794
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method public setActivityReference(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 2618
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    .line 2619
    return-void
.end method
