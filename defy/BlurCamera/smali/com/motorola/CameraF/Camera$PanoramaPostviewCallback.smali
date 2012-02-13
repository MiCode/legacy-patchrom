.class final Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/android/camera/Panorama$PostviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanoramaPostviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4332
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4332
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;-><init>(Lcom/motorola/CameraF/Camera;)V

    return-void
.end method


# virtual methods
.method public onPostviewTaken([BIILcom/motorola/android/camera/Panorama;)V
    .locals 11
    .parameter "data"
    .parameter "resolution"
    .parameter "format"
    .parameter "pan"

    .prologue
    const/16 v10, 0x14

    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "MotoCamera"

    .line 4337
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    const-string v2, "clear JPEG_PICTURE_CALLBACK_TIMEOUT in PanoramaPostviewCallback"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    :cond_0
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 4340
    if-nez p1, :cond_2

    .line 4416
    :cond_1
    :goto_0
    return-void

    .line 4341
    :cond_2
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v2, v2, Lcom/motorola/CameraF/Camera;->mPausing:Z

    if-nez v2, :cond_1

    .line 4342
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$3900(Lcom/motorola/CameraF/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$4000(Lcom/motorola/CameraF/Camera;)I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 4343
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$3908(Lcom/motorola/CameraF/Camera;)I

    .line 4344
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$3900(Lcom/motorola/CameraF/Camera;)I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 4346
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$3900(Lcom/motorola/CameraF/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->changeCaptureResource(I)V

    .line 4349
    :cond_3
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    const-string v2, "MotoCamera"

    const-string v2, "PanoramaPostviewCallback: start viewfinder match timeout timer for PANORAMA_PICTURE_CALLBACK_TIMEOUT_THRESHOLD"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    :cond_4
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2c

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4387
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4388
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/16 v2, 0x8

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4389
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 4390
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    array-length v3, p1

    invoke-static {p1, v6, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/motorola/CameraF/Camera;->mPanoramaPostView:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/motorola/CameraF/Camera;->access$8802(Lcom/motorola/CameraF/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4395
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaPostView:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$8800(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 4396
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 4397
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$3900(Lcom/motorola/CameraF/Camera;)I

    move-result v3

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaPostView:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/motorola/CameraF/Camera;->access$8800(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->onNewPictureTaken(ILandroid/graphics/Bitmap;)V

    .line 4403
    :goto_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4404
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const v3, 0x7f0e0058

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4406
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaShotTaken:I
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$3900(Lcom/motorola/CameraF/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaMaxShot:I
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$4000(Lcom/motorola/CameraF/Camera;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 4407
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCamera"

    const-string v2, "In PanoramaPostviewCallback, all shots done, start stitch"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
    :cond_5
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPanoramaIndicator:Lcom/motorola/CameraF/View/PanoramaIndicatorView;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$5500(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/View/PanoramaIndicatorView;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const v4, 0x7f0b001a

    invoke-virtual {v3, v4}, Lcom/motorola/CameraF/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->setText(Ljava/lang/String;)V

    .line 4409
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #setter for: Lcom/motorola/CameraF/Camera;->mIsStitching:Z
    invoke-static {v2, v7}, Lcom/motorola/CameraF/Camera;->access$5602(Lcom/motorola/CameraF/Camera;Z)Z

    .line 4410
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->stopPreview()V
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$8900(Lcom/motorola/CameraF/Camera;)V

    .line 4411
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v10, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 4353
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_6
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4354
    .restart local v1       #option:Landroid/graphics/BitmapFactory$Options;
    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4355
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 4356
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$7100(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 4359
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4360
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$7100(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 4361
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/motorola/CameraF/Camera;->access$7102(Lcom/motorola/CameraF/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4362
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_7

    const-string v2, "MotoCamera"

    const-string v2, "PanoramaPostviewCallback, Recycling mBmpPostView"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/motorola/CameraF/Camera;->access$7102(Lcom/motorola/CameraF/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4374
    :goto_2
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$7100(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4376
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$5200(Lcom/motorola/CameraF/Camera;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4377
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$5300(Lcom/motorola/CameraF/Camera;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4379
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$7100(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4380
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4370
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 4372
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2

    .line 4400
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_8
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$PanoramaPostviewCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method
