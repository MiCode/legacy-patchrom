.class public Lcom/motorola/CameraF/CameraUtility;
.super Ljava/lang/Object;
.source "CameraUtility.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static mCamUtil:Lcom/motorola/CameraF/CameraUtility;


# instance fields
.field private mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "MotoCamera Engine Proxy"

    sput-object v0, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/CameraF/CameraUtility;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    .line 62
    return-void
.end method

.method public static destroyInstance()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/CameraF/CameraUtility;
    .locals 3

    .prologue
    .line 66
    const-class v0, Lcom/motorola/CameraF/CameraUtility;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/CameraF/CameraUtility;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/motorola/CameraF/CameraUtility;

    invoke-direct {v1}, Lcom/motorola/CameraF/CameraUtility;-><init>()V

    sput-object v1, Lcom/motorola/CameraF/CameraUtility;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;

    .line 69
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    const-string v2, "new Cam Utility instance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    sget-object v1, Lcom/motorola/CameraF/CameraUtility;->mCamUtil:Lcom/motorola/CameraF/CameraUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getStack()Ljava/lang/String;
    .locals 5

    .prologue
    .line 480
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 481
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 482
    .local v2, stacks:[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    .line 483
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 484
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public getCameraCapabilities(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 28
    .parameter "mContext"
    .parameter "params"

    .prologue
    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v10

    .line 264
    .local v10, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v10, :cond_11

    .line 266
    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    const-string v25, "getCameraCapabilities() - Driver hasn\'t implemented correct resolutions, defaulting to 3MP"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    const-string v25, "ThreeMP"

    invoke-virtual/range {v24 .. v25}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setMaxPicResolution(Ljava/lang/String;)V

    .line 335
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getMaxPanResolution()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_0

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    const-string v25, "ThreeMP"

    invoke-virtual/range {v24 .. v25}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setMaxPanResolution(Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    const-string v25, "ThreeMP"

    invoke-virtual/range {v24 .. v25}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentPanShotRes(Ljava/lang/String;)V

    .line 345
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v13

    .line 347
    .local v13, lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v13, :cond_1c

    .line 349
    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    const-string v25, "getCameraCapabilities() - Driver hasn\'t implemented supported vid resolutions, setting defaults (QVGA)"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    const-string v25, "320x240"

    invoke-virtual/range {v24 .. v25}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setSensorVidResList(Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v24

    const-string v25, "320x240"

    invoke-virtual/range {v24 .. v25}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setAESSensorVidResList(Ljava/lang/String;)V

    .line 398
    .end local p1
    :goto_1
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setDefaultVideoResolution()V

    .line 399
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setDefaultAESVideoResolution()V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v11

    .line 404
    .local v11, lf:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_2

    .line 405
    sget-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_1

    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getCameraCapabilities() - Supported focus modes "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setFocusModes(Ljava/lang/String;)V

    .line 408
    const-string v24, "auto"

    move-object v0, v11

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/CameraF/CamSetting/CamSetting;->enableAutoFocus()V

    .line 416
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v12

    .line 417
    .local v12, lflash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_4

    .line 418
    sget-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_3

    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getCameraCapabilities()- Supported flash modes "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setFlashModes(Ljava/lang/String;)V

    .line 420
    const-string v24, "torch"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/motorola/CameraF/CamSetting/CamSetting;->torchSupported:Z

    .line 424
    :cond_4
    sget-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v24, :cond_6

    .line 426
    const-string v24, "mot-picture-iso-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 427
    .local v9, isoValues:Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 428
    sget-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_5

    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getCameraCapabilities() - Supported ISO values "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setIsoValues(Ljava/lang/String;)V

    .line 433
    .end local v9           #isoValues:Ljava/lang/String;
    :cond_6
    const-string v24, "mot-exposure-offset-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, expValues:Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 435
    sget-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_7

    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getCameraCapabilities() - Supported Exposure values "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setExpValues(Ljava/lang/String;)V

    .line 440
    :cond_8
    const-string v24, "mot-burst-picture-count-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_9

    .line 442
    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    const-string v25, "Enable multishot"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setMultishotEnable()V

    .line 446
    :cond_9
    const-string v24, "mot-face-detect-mode-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_a

    .line 448
    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    const-string v25, "Enable face detection"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setFaceDetectionEnable()V

    .line 452
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v18

    .line 454
    .local v18, supportedScenesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_b

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setSupportedScenes(Ljava/lang/String;)V

    .line 459
    :cond_b
    const-string v24, "ro.media.capture.panorama"

    const-string v25, "1"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 461
    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    const-string v25, "Enable Panorama"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setPanoramaFeatureEnable()V

    .line 464
    :cond_c
    const-string v24, "ro.camcorder.VideoModes"

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-nez v24, :cond_e

    .line 465
    sget-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_d

    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    const-string v25, "VideoModesNotEnabled"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setVideoModesEnabled(Z)V

    .line 470
    :cond_e
    const-string v24, "ro.camera.DynamicFocus"

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-nez v24, :cond_10

    .line 471
    sget-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_f

    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    const-string v25, "DynamicRegionFocusNotEnabled"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_f
    const/16 v24, 0x0

    sput-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    .line 477
    :cond_10
    return-void

    .line 271
    .end local v5           #expValues:Ljava/lang/String;
    .end local v11           #lf:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #lflash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v18           #supportedScenesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1
    :cond_11
    const-string v15, "ThreeMP"

    .line 277
    .local v15, maxRes:Ljava/lang/String;
    const-wide v21, 0x3ffc71c71c71c71cL

    .line 278
    .local v21, widescreenAR:D
    const/4 v2, 0x0

    .line 280
    .local v2, WideScreenEnable:Z
    const-string v24, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 281
    .local v4, display:Landroid/view/Display;
    sget-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_12

    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getCameraCapabilities() - Display size is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_12
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    sub-double v24, v24, v21

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3fa999999999999aL

    cmpg-double v24, v24, v26

    if-gez v24, :cond_13

    .line 284
    const/4 v2, 0x1

    .line 286
    :cond_13
    sget-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_14

    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getCameraCapabilities() - Widescreen"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_14
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    sub-int v8, v24, v25

    .local v8, ind:I
    :goto_2
    if-ltz v8, :cond_15

    .line 292
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    move-object v0, v3

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    .line 293
    .local v23, width:I
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    .line 294
    .local v6, height:I
    const/16 v24, 0x1

    move v0, v2

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 296
    const/16 v24, 0xcc0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    const/16 v24, 0x730

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 298
    const-string v15, "EightMPW"

    .line 328
    .end local v6           #height:I
    .end local v23           #width:I
    :cond_15
    :goto_3
    sget-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_16

    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getCameraCapabilities() - max Resolution"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setMaxPicResolution(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setCurrentSingleShotRes(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    .restart local v6       #height:I
    .restart local v23       #width:I
    :cond_17
    const/16 v24, 0xa20

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    const/16 v24, 0x5b0

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 303
    const-string v15, "FiveMPW"

    .line 304
    goto :goto_3

    .line 309
    :cond_18
    const/16 v24, 0xcc0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    const/16 v24, 0x990

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 311
    const-string v15, "EightMP"

    .line 312
    goto :goto_3

    .line 314
    :cond_19
    const/16 v24, 0xa20

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    const/16 v24, 0x790

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 316
    const-string v15, "FiveMP"

    .line 317
    goto :goto_3

    .line 319
    :cond_1a
    const/16 v24, 0x800

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    const/16 v24, 0x600

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 321
    const-string v15, "ThreeMP"

    .line 322
    goto :goto_3

    .line 290
    :cond_1b
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_2

    .line 357
    .end local v2           #WideScreenEnable:Z
    .end local v4           #display:Landroid/view/Display;
    .end local v6           #height:I
    .end local v8           #ind:I
    .end local v15           #maxRes:Ljava/lang/String;
    .end local v21           #widescreenAR:D
    .end local v23           #width:I
    .restart local v13       #lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1c
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 358
    .local v19, temp:Ljava/lang/StringBuffer;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 360
    .local v20, tempAES:Ljava/lang/StringBuffer;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    sub-int v14, v24, v25

    .line 361
    .local v14, lvSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isDriod2()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    .line 362
    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    const-string v25, "w20919 disable the audio zoom and audio scene"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/CameraF/CamSetting/CamSetting;->droidDisableFunctions()V

    .line 366
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f070014

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 367
    .local v16, resolutionList:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 368
    .local v3, addRes:Z
    move v7, v14

    .end local p1
    .local v7, i:I
    :goto_4
    if-ltz v7, :cond_21

    .line 370
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 371
    .local v17, s:Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8       #ind:I
    :goto_5
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    move v0, v8

    move/from16 v1, v24

    if-ge v0, v1, :cond_1f

    .line 373
    sget-object v24, Lcom/motorola/CameraF/CameraGlobalType;->MAX_AES_RES:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 374
    const/4 v3, 0x1

    .line 376
    :cond_1e
    aget-object v24, v16, v8

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 378
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const-string v24, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    const/16 v24, 0x1

    move v0, v3

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    .line 382
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const-string v24, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_1f
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_4

    .line 371
    :cond_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 392
    .end local v8           #ind:I
    .end local v17           #s:Ljava/lang/String;
    :cond_21
    sget-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_22

    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setCameraParameters() - Supported video resln "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_22
    sget-boolean v24, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_23

    sget-object v24, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setCameraParameters() - Supported video resln "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_23
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v24

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setSensorVidResList(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v24

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setAESSensorVidResList(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getPostViewMode()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public setBurstCaptureCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 1
    .parameter "params"
    .parameter "count"

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 177
    const-string v0, "burst-picture-count"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 179
    :cond_0
    return-void
.end method

.method public setExposureOffset(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 3
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    const-string v0, "mot-exposure-offset"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraUtility:setExposureOffset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setFaceTrackingMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3
    .parameter "params"
    .parameter "m"

    .prologue
    const-string v2, "face-track-mode"

    .line 183
    if-eqz p1, :cond_0

    .line 185
    if-eqz p2, :cond_1

    .line 187
    const-string v0, "face-detect-num-faces"

    const-string v1, "6"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "face-track-frame-skip"

    const-string v1, "60"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "face-track-mode"

    const-string v0, "on"

    invoke-virtual {p1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v0, "face-track-mode"

    const-string v0, "off"

    invoke-virtual {p1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFlash(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "params"

    .prologue
    const-string v5, "red-eye"

    const-string v4, "on"

    const-string v3, "off"

    const-string v2, "auto"

    .line 121
    iget-object v0, p0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "auto"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentFlash()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "off"

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    const-string v0, "on"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    const-string v1, "red-eye"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "red-eye"

    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFocusArea(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)V
    .locals 9
    .parameter "params"
    .parameter "rect"

    .prologue
    const/16 v8, 0x320

    const/16 v7, 0x280

    const-string v6, ","

    .line 198
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    sget-object v2, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraUtility:setFocusArea(before saturation) = 1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 207
    .local v0, size:Landroid/hardware/Camera$Size;
    if-eqz v0, :cond_0

    .line 210
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v8, :cond_3

    .line 212
    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v8, :cond_2

    .line 214
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v8

    sub-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 215
    iput v8, p2, Landroid/graphics/Rect;->right:I

    .line 231
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    sget-object v2, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraUtility:setFocusArea(after saturation) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v2, "mot-areas-to-focus"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    .end local v1           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_3
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v7, :cond_4

    .line 220
    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v7, :cond_2

    .line 222
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v7

    sub-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 223
    iput v7, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 228
    :cond_4
    sget-object v2, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    const-string v3, "CameraUtility:setFocusArea invalid preview size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setISO(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 3
    .parameter "params"
    .parameter "ISOValue"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    const-string v0, "picture-iso"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraUtility:ISOValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    return-void
.end method

.method public setPictureRotation(Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .parameter "params"
    .parameter "r"

    .prologue
    .line 80
    if-eqz p1, :cond_2

    .line 82
    const/16 v0, 0x168

    if-ne p2, v0, :cond_0

    .line 84
    const/4 p2, 0x0

    .line 87
    :cond_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPictureRotation() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 90
    :cond_2
    return-void
.end method

.method public setPostViewMode(Z)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public setTag(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/motorola/CameraF/CameraUtility;->mCamSetting:Lcom/motorola/CameraF/CamSetting/CamSetting;

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getTagsString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-gt v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 101
    :cond_2
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/motorola/CameraF/CameraUtility;->TAG:Ljava/lang/String;

    const-string v2, "CameraUtility:setTags:Tag size is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_3
    if-eqz p1, :cond_0

    .line 107
    const-string v1, "mot-user-comment"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
