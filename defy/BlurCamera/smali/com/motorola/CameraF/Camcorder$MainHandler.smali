.class Lcom/motorola/CameraF/Camcorder$MainHandler;
.super Landroid/os/Handler;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mActivityReference:Landroid/app/Activity;

.field final synthetic this$0:Lcom/motorola/CameraF/Camcorder;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/Camcorder;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/Camcorder;Lcom/motorola/CameraF/Camcorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camcorder$MainHandler;-><init>(Lcom/motorola/CameraF/Camcorder;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/motorola/CameraF/Camcorder;->mPausing:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 679
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 227
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 674
    :pswitch_1
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_0

    .line 675
    const-string v20, "MotoCamcorder"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MainHandler:handleMessage:Unhandled message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v22, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mThumbnailOrientation:I
    invoke-static/range {v22 .. v22}, Lcom/motorola/CameraF/Camcorder;->access$200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 235
    :pswitch_3
    new-instance v15, Lcom/motorola/CameraF/Camcorder$MainHandler$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/motorola/CameraF/Camcorder$MainHandler$1;-><init>(Lcom/motorola/CameraF/Camcorder$MainHandler;)V

    .line 241
    .local v15, okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    const/4 v6, 0x0

    .line 242
    .local v6, cancel:Z
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    .local v3, alert:Landroid/app/AlertDialog$Builder;
    const v20, 0x7f0b007f

    move-object v0, v3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 245
    const v20, 0x104000a

    move-object v0, v3

    move/from16 v1, v20

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 251
    .end local v3           #alert:Landroid/app/AlertDialog$Builder;
    .end local v6           #cancel:Z
    .end local v15           #okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$500(Lcom/motorola/CameraF/Camcorder;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->lock()V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->updateScenesEffects()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$700(Lcom/motorola/CameraF/Camcorder;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->unlock()V

    .line 263
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x34

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 268
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$500(Lcom/motorola/CameraF/Camcorder;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->lock()V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->updateEffects()V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->unlock()V

    .line 278
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x34

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 282
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$900(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v21, v0

    const v22, 0x7f0b0052

    invoke-virtual/range {v21 .. v22}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$1000(Lcom/motorola/CameraF/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v21, v0

    const v22, 0x7f0b0051

    invoke-virtual/range {v21 .. v22}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$1000(Lcom/motorola/CameraF/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$500(Lcom/motorola/CameraF/Camcorder;)V

    goto/16 :goto_0

    .line 293
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/Thread;

    new-instance v22, Lcom/motorola/CameraF/Camcorder$MainHandler$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/motorola/CameraF/Camcorder$MainHandler$2;-><init>(Lcom/motorola/CameraF/Camcorder$MainHandler;)V

    invoke-direct/range {v21 .. v22}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/motorola/CameraF/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 309
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 311
    .local v13, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mRecordingStartTime:J
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1300(Lcom/motorola/CameraF/Camcorder;)J

    move-result-wide v20

    sub-long v9, v13, v20

    .line 312
    .local v9, delta:J
    const-wide/16 v20, 0x3e8

    div-long v16, v9, v20

    .line 315
    .local v16, seconds:J
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v7

    .line 317
    .local v7, currentVideoMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->updateRecordTime()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1400(Lcom/motorola/CameraF/Camcorder;)V

    goto/16 :goto_0

    .line 322
    .end local v7           #currentVideoMode:I
    .end local v9           #delta:J
    .end local v13           #now:J
    .end local v16           #seconds:J
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #calls: Lcom/motorola/CameraF/Camcorder;->hideVideoFrameAndStartPreview(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$1500(Lcom/motorola/CameraF/Camcorder;Z)V

    goto/16 :goto_0

    .line 326
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRecordingTime(Z)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->launchGallery()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1600(Lcom/motorola/CameraF/Camcorder;)V

    goto/16 :goto_0

    .line 333
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->rightSetFadeOut()V

    goto/16 :goto_0

    .line 337
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideStatusSet(Z)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 340
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    goto/16 :goto_0

    .line 342
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    goto/16 :goto_0

    .line 347
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 348
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    goto/16 :goto_0

    .line 350
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    goto/16 :goto_0

    .line 354
    :pswitch_f
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_9

    const-string v20, "MotoCamcorder"

    const-string v21, "handleMessage ZOOM_CHANGED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v20

    if-nez v20, :cond_a

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRemainText()V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRecordingIndicator(Z)V

    .line 365
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideZoomSet()V

    goto/16 :goto_0

    .line 360
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showTopStatusSet()V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRecordingTime(Z)V

    goto :goto_1

    .line 368
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateZoom()V

    goto/16 :goto_0

    .line 374
    :pswitch_11
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_c

    const-string v20, "MotoCamcorder"

    const-string v21, "SHOW_TOAST_AND_EXIT_CAMERA occurs!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v21, v0

    const v22, 0x7f0b007c

    invoke-virtual/range {v21 .. v22}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$1000(Lcom/motorola/CameraF/Camcorder;Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x6

    const-wide/16 v22, 0x1f4

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 380
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/CameraF/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v22, v0

    const v23, 0x7f0b007d

    invoke-virtual/range {v22 .. v23}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/motorola/CameraF/Camcorder;->mVToast:Landroid/widget/Toast;

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mVToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 387
    :pswitch_13
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_d

    const-string v20, "MotoCamcorder"

    const-string v21, "EXIT_CAMERA occurs!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->finish()V

    goto/16 :goto_0

    .line 392
    :pswitch_14
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_e

    .line 393
    const-string v20, "MotoCamcorder"

    const-string v21, "MainHandler:handleMessage:CameraGlobalType.TO_TAGSETTING"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_e
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 396
    .local v12, intentTag:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const-class v21, Lcom/motorola/CameraF/TagsSetting;

    move-object v0, v12

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 397
    const-string v20, "camcorder"

    const/16 v21, 0x1

    move-object v0, v12

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 399
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setReturnFromTag(Z)V

    goto/16 :goto_0

    .line 403
    .end local v12           #intentTag:Landroid/content/Intent;
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateLocationText()V

    goto/16 :goto_0

    .line 406
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    #calls: Lcom/motorola/CameraF/Camcorder;->writeTagToDB(Ljava/lang/Integer;)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$1700(Lcom/motorola/CameraF/Camcorder;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 409
    :pswitch_17
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_f

    .line 410
    const-string v20, "MotoCamcorder"

    const-string v21, "MainHandler:handleMessage: CameraGlobalType.DISPLAY_VIDEO_POSTVIEW"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->acquireAndShowVideoFrame()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1800(Lcom/motorola/CameraF/Camcorder;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1900(Lcom/motorola/CameraF/Camcorder;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_11

    .line 419
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v21, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$1900(Lcom/motorola/CameraF/Camcorder;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 420
    .local v4, broadUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 428
    .end local v4           #broadUri:Landroid/net/Uri;
    :cond_10
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x29

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mIsVideoCaptureIntent:Z
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$2000(Lcom/motorola/CameraF/Camcorder;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder;->mPostPanel:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 437
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    #setter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$1202(Lcom/motorola/CameraF/Camcorder;I)I

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$500(Lcom/motorola/CameraF/Camcorder;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x34

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 424
    :cond_11
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_10

    .line 425
    const-string v20, "MotoCamcorder"

    const-string v21, "onPause: video path is null, will not send the URI to scanner "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 435
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->showPostRecordingAlert()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$2100(Lcom/motorola/CameraF/Camcorder;)V

    goto :goto_3

    .line 444
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mZoomAdjusting:Z
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$2200(Lcom/motorola/CameraF/Camcorder;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideTopStatusSet()V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->rightSetFadeOut()V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRecordingTime(Z)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRecordingIndicator(Z)V

    .line 450
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_13

    const-string v20, "MotoCamcorder"

    const-string v21, "Zoom IN"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->startZoom()V

    .line 455
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v8

    .line 456
    .local v8, currentZoom:I
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_14

    .line 457
    const-string v20, "MotoCamcorder"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CURRENT ZOOM:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v20, "MotoCamcorder"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MAX ZOOM:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_14
    sget v20, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_MAX_VALUE:I

    move v0, v8

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/motorola/CameraF/Camcorder;->mZoomAdjusting:Z
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$2202(Lcom/motorola/CameraF/Camcorder;Z)Z

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x40

    sget v22, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    add-int v22, v22, v8

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    .line 464
    .local v18, zoomMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 470
    .end local v18           #zoomMsg:Landroid/os/Message;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->updateAudioZoom()V

    goto/16 :goto_0

    .line 467
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0xb

    const-wide/16 v22, 0x5dc

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 475
    .end local v8           #currentZoom:I
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->isAdjusting()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mZoomAdjusting:Z
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$2200(Lcom/motorola/CameraF/Camcorder;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideTopStatusSet()V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->hideRemainText()V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->rightSetFadeOut()V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRecordingTime(Z)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/View/Control/OnScreenController;->showRecordingIndicator(Z)V

    .line 481
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_16

    const-string v20, "MotoCamcorder"

    const-string v21, "Zoom OUT"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->startZoom()V

    .line 485
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v8

    .line 486
    .restart local v8       #currentZoom:I
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_17

    .line 487
    const-string v20, "MotoCamcorder"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CURRENT ZOOM:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v20, "MotoCamcorder"

    const-string v21, "MIN ZOOM:0"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_17
    if-lez v8, :cond_18

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/motorola/CameraF/Camcorder;->mZoomAdjusting:Z
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$2202(Lcom/motorola/CameraF/Camcorder;Z)Z

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x40

    sget v22, Lcom/motorola/CameraF/CameraGlobalType;->ZOOM_STEP:I

    sub-int v22, v8, v22

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    .line 493
    .restart local v18       #zoomMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 499
    .end local v18           #zoomMsg:Landroid/os/Message;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->updateAudioZoom()V

    goto/16 :goto_0

    .line 496
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0xb

    const-wide/16 v22, 0x5dc

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 504
    .end local v8           #currentZoom:I
    :pswitch_1a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 506
    .local v19, zoomToValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    #calls: Lcom/motorola/CameraF/Camcorder;->zoomTo(I)V
    invoke-static {v0, v1}, Lcom/motorola/CameraF/Camcorder;->access$2300(Lcom/motorola/CameraF/Camcorder;I)V

    .line 508
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setZoomNum(I)V

    .line 509
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->smoothZoomSupported:Z

    if-nez v20, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateZoom()V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/motorola/CameraF/Camcorder;->mZoomAdjusting:Z
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$2202(Lcom/motorola/CameraF/Camcorder;Z)Z

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x8

    const-wide/16 v22, 0x7d0

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 517
    .end local v19           #zoomToValue:I
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$2400(Lcom/motorola/CameraF/Camcorder;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_19

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v21, v0

    const v22, 0x7f0b0078

    invoke-virtual/range {v21 .. v22}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$1000(Lcom/motorola/CameraF/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 525
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->startVideoRecording()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$2500(Lcom/motorola/CameraF/Camcorder;)V

    goto/16 :goto_0

    .line 530
    :pswitch_1c
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_1a

    const-string v20, "MotoCamcorder"

    const-string v21, "Camcorder:handleMessage:RECORD_STOP"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->stopVideoRecordingAndDisplayDialog()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$2600(Lcom/motorola/CameraF/Camcorder;)V

    goto/16 :goto_0

    .line 536
    :pswitch_1d
    sget-boolean v20, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_1b

    const-string v20, "MotoCamcorder"

    const-string v21, "Camcorder:handleMessage:INACTIVITY_TIMEOUT"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 538
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 540
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 543
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->showDialog(I)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    #setter for: Lcom/motorola/CameraF/Camcorder;->currentDialog:I
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$2702(Lcom/motorola/CameraF/Camcorder;I)I

    goto/16 :goto_0

    .line 547
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->showDialog(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/motorola/CameraF/Camcorder;->currentDialog:I
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$2702(Lcom/motorola/CameraF/Camcorder;I)I

    goto/16 :goto_0

    .line 551
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->launchCamera()V

    goto/16 :goto_0

    .line 554
    :pswitch_21
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setLastCamcorderMode(I)V

    .line 556
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->launchCameraInMode(I)V

    goto/16 :goto_0

    .line 560
    :pswitch_22
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setLastCamcorderMode(I)V

    .line 561
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->launchCameraInMode(I)V

    goto/16 :goto_0

    .line 565
    :pswitch_23
    const-string v20, "MotoCamcorder"

    const-string v21, "Slow Motion mode pressed in video mode"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->enableSlowMotion()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$2800(Lcom/motorola/CameraF/Camcorder;)V

    goto/16 :goto_0

    .line 569
    :pswitch_24
    const-string v20, "MotoCamcorder"

    const-string v21, "Fast Motion mode pressed in video mode"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->enableFastMotion()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$2900(Lcom/motorola/CameraF/Camcorder;)V

    goto/16 :goto_0

    .line 578
    :pswitch_25
    const-string v20, "MotoCamcorder"

    const-string v21, "MMS mode pressed in video mode"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->enableMMSMode()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3000(Lcom/motorola/CameraF/Camcorder;)V

    goto/16 :goto_0

    .line 586
    :pswitch_26
    const-string v20, "MotoCamcorder"

    const-string v21, "Normal Video pressed in video mode"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->enableNormalVideoMode()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3100(Lcom/motorola/CameraF/Camcorder;)V

    goto/16 :goto_0

    .line 592
    :pswitch_27
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setLastCamcorderMode(I)V

    .line 593
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->launchCameraInMode(I)V

    goto/16 :goto_0

    .line 598
    :pswitch_28
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setLastCamcorderMode(I)V

    .line 599
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->launchCameraInMode(I)V

    goto/16 :goto_0

    .line 603
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x27

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->launchCameraInMode(I)V

    goto/16 :goto_0

    .line 606
    :pswitch_2a
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v20

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentCameraMode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setLastCamcorderMode(I)V

    .line 607
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->launchCameraInMode(I)V

    goto/16 :goto_0

    .line 616
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$500(Lcom/motorola/CameraF/Camcorder;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v20

    if-eqz v20, :cond_1e

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->lock()V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->setCameraParameters()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3200(Lcom/motorola/CameraF/Camcorder;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->unlock()V

    .line 629
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/CameraF/View/Control/OnScreenController;->updateController()V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x34

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 635
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v21, v0

    const v22, 0x7f0b0050

    invoke-virtual/range {v21 .. v22}, Lcom/motorola/CameraF/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/motorola/CameraF/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$1000(Lcom/motorola/CameraF/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 638
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    #setter for: Lcom/motorola/CameraF/Camcorder;->mVideoRemainingSecond:J
    invoke-static/range {v20 .. v22}, Lcom/motorola/CameraF/Camcorder;->access$2402(Lcom/motorola/CameraF/Camcorder;J)J

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mShowToast:Z
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3300(Lcom/motorola/CameraF/Camcorder;)Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->showStorageToast()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3400(Lcom/motorola/CameraF/Camcorder;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/motorola/CameraF/Camcorder;->mShowToast:Z
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$3302(Lcom/motorola/CameraF/Camcorder;Z)Z

    .line 643
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->updateRemainCount()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3500(Lcom/motorola/CameraF/Camcorder;)V

    goto/16 :goto_0

    .line 646
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->showDialog(I)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    #setter for: Lcom/motorola/CameraF/Camcorder;->currentDialog:I
    invoke-static/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->access$2702(Lcom/motorola/CameraF/Camcorder;I)I

    goto/16 :goto_0

    .line 654
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    const v21, 0x7f0e0094

    invoke-virtual/range {v20 .. v21}, Lcom/motorola/CameraF/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 655
    .local v11, i:Landroid/widget/ImageView;
    const/16 v20, 0x4

    move-object v0, v11

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 659
    .end local v11           #i:Landroid/widget/ImageView;
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$600(Lcom/motorola/CameraF/Camcorder;)Landroid/hardware/Camera;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->toggleTorch()V
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3600(Lcom/motorola/CameraF/Camcorder;)V

    goto/16 :goto_0

    .line 664
    :pswitch_31
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    .line 665
    .local v5, buffer:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mSavingProgress:Landroid/widget/ProgressBar;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3700(Lcom/motorola/CameraF/Camcorder;)Landroid/widget/ProgressBar;

    move-result-object v20

    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mSavingVideoText:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3800(Lcom/motorola/CameraF/Camcorder;)Landroid/widget/TextView;

    move-result-object v20

    if-eqz v20, :cond_20

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mSavingVideoText:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3800(Lcom/motorola/CameraF/Camcorder;)Landroid/widget/TextView;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x64

    sub-int v22, v22, v5

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mSavingProgress:Landroid/widget/ProgressBar;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3700(Lcom/motorola/CameraF/Camcorder;)Landroid/widget/ProgressBar;

    move-result-object v20

    const/16 v21, 0x64

    sub-int v21, v21, v5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 670
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mSavingVideo:Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3900(Lcom/motorola/CameraF/Camcorder;)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mSavingVideo:Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/motorola/CameraF/Camcorder;->access$3900(Lcom/motorola/CameraF/Camcorder;)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_13
        :pswitch_14
        :pswitch_c
        :pswitch_1
        :pswitch_d
        :pswitch_f
        :pswitch_1
        :pswitch_e
        :pswitch_1
        :pswitch_15
        :pswitch_1
        :pswitch_1
        :pswitch_10
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_17
        :pswitch_1
        :pswitch_18
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_1f
        :pswitch_1
        :pswitch_26
        :pswitch_22
        :pswitch_28
        :pswitch_2a
        :pswitch_21
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_29
        :pswitch_27
        :pswitch_9
        :pswitch_28
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1d
        :pswitch_16
        :pswitch_1
        :pswitch_2b
        :pswitch_8
        :pswitch_2c
        :pswitch_2d
        :pswitch_1
        :pswitch_11
        :pswitch_7
        :pswitch_4
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_3
        :pswitch_2f
        :pswitch_1a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_20
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_30
        :pswitch_2e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_12
        :pswitch_5
        :pswitch_31
    .end packed-switch
.end method

.method public setActivityReference(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    .line 222
    return-void
.end method
