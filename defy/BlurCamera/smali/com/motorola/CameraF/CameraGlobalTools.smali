.class public Lcom/motorola/CameraF/CameraGlobalTools;
.super Ljava/lang/Object;
.source "CameraGlobalTools.java"


# static fields
.field public static final ASPECT_TOLERANCE:D = 0.05

.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final DEFAULT_RESOLUTION:Ljava/lang/String; = "OneMP"

.field public static final NO_STORAGE_ERROR:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MotoCameraGlobalTools"

.field private static sResolutionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-string v7, "2048x1536"

    const-string v6, "176x144"

    const-string v5, "1600x1200"

    const-string v4, "1280x960"

    const-string v3, "1280x720"

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    .line 61
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "EightMP"

    const-string v2, "3264x2448"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "EightMPW"

    const-string v2, "3264x1840"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "FiveMP"

    const-string v2, "2592x1936"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "FiveMPW"

    const-string v2, "2592x1456"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "ThreeMP"

    const-string v2, "2048x1536"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "TwoMP"

    const-string v2, "1600x1200"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "OneMP"

    const-string v2, "1280x960"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "720p"

    const-string v2, "1280x720"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "NTSC_D1"

    const-string v2, "720x480"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "VGA"

    const-string v2, "640x480"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "CIF"

    const-string v2, "352x288"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "QVGA"

    const-string v2, "320x240"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "QCIF"

    const-string v2, "176x144"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "3264x2448"

    const-string v2, "EightMP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "3264x1840"

    const-string v2, "EightMPW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "2592x1936"

    const-string v2, "FiveMP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "2592x1456"

    const-string v2, "FiveMPW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "2048x1536"

    const-string v1, "ThreeMP"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "1600x1200"

    const-string v1, "TwoMP"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "1280x960"

    const-string v1, "OneMP"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "1280x720"

    const-string v1, "720p"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "720x480"

    const-string v2, "NTSC_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "640x480"

    const-string v2, "VGA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "352x288"

    const-string v2, "CIF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "320x240"

    const-string v2, "QVGA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "176x144"

    const-string v1, "QCIF"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcVideoTimeRemaining(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 196
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/CameraF/CameraGlobalTools$1;

    invoke-direct {v1, p0}, Lcom/motorola/CameraF/CameraGlobalTools$1;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 239
    .local v0, th:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 240
    return-void
.end method

.method public static calculatePicturesAll()I
    .locals 7

    .prologue
    .line 373
    const/4 v2, 0x0

    .line 375
    .local v2, picall:I
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, storageDirectory:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 378
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const v6, 0x48c35000

    div-float v0, v5, v6

    .line 380
    .local v0, all:F
    float-to-int v2, v0

    .line 387
    .end local v0           #all:F
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #storageDirectory:Ljava/lang/String;
    :goto_0
    return v2

    .line 381
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 385
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public static calculatePicturesRemaining(Ljava/lang/String;)I
    .locals 9
    .parameter "res"

    .prologue
    const-string v6, "MotoCameraGlobalTools"

    .line 300
    const/4 v1, 0x0

    .line 303
    .local v1, picremain:I
    const-string v6, "EightMPW"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 305
    const/high16 v3, 0x4100

    .line 336
    .local v3, resolution:F
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/motorola/CameraF/CameraGlobalTools;->hasStorage()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_7

    .line 338
    const/4 v1, -0x1

    .line 369
    :cond_0
    :goto_1
    return v1

    .line 307
    .end local v3           #resolution:F
    :cond_1
    const-string v6, "EightMP"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 309
    const/high16 v3, 0x4100

    .restart local v3       #resolution:F
    goto :goto_0

    .line 311
    .end local v3           #resolution:F
    :cond_2
    const-string v6, "FiveMPW"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 313
    const/high16 v3, 0x40a0

    .restart local v3       #resolution:F
    goto :goto_0

    .line 315
    .end local v3           #resolution:F
    :cond_3
    const-string v6, "FiveMP"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 317
    const/high16 v3, 0x40a0

    .restart local v3       #resolution:F
    goto :goto_0

    .line 319
    .end local v3           #resolution:F
    :cond_4
    const-string v6, "ThreeMP"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 321
    const/high16 v3, 0x4040

    .restart local v3       #resolution:F
    goto :goto_0

    .line 323
    .end local v3           #resolution:F
    :cond_5
    const-string v6, "TwoMP"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 325
    const/high16 v3, 0x4000

    .restart local v3       #resolution:F
    goto :goto_0

    .line 331
    .end local v3           #resolution:F
    :cond_6
    const/high16 v3, 0x3f80

    .restart local v3       #resolution:F
    goto :goto_0

    .line 342
    :cond_7
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, storageDirectory:Ljava/lang/String;
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 347
    .local v4, stat:Landroid/os/StatFs;
    const/4 v2, 0x0

    .line 348
    .local v2, remaining:F
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-eqz v6, :cond_8

    .line 349
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const v7, 0x48874100

    mul-float/2addr v7, v3

    invoke-static {}, Lcom/motorola/CameraF/CameraGlobalTools;->getDownsizeByZoom()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    div-float v2, v6, v7

    .line 355
    :goto_2
    float-to-int v1, v2

    .line 356
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    .line 357
    const-string v6, "MotoCameraGlobalTools"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolution : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v6, "MotoCameraGlobalTools"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remaining : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 362
    .end local v2           #remaining:F
    .end local v4           #stat:Landroid/os/StatFs;
    .end local v5           #storageDirectory:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 367
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, -0x2

    goto/16 :goto_1

    .line 352
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #remaining:F
    .restart local v4       #stat:Landroid/os/StatFs;
    .restart local v5       #storageDirectory:Ljava/lang/String;
    :cond_8
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x4316

    mul-float/2addr v7, v3

    const/high16 v8, 0x4480

    mul-float/2addr v7, v8

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    div-float v2, v6, v7

    goto :goto_2
.end method

.method public static compareFloat(FF)Z
    .locals 2
    .parameter "num1"
    .parameter "num2"

    .prologue
    .line 451
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 453
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "internalVals"

    .prologue
    .line 133
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyy-MM-dd_kk-mm-ss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    rem-long v1, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format2Time(J)Ljava/lang/String;
    .locals 6
    .parameter "seconds"

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    .line 93
    const-wide/16 v0, 0xe10

    div-long v0, p0, v0

    .line 94
    .local v0, hours:J
    const-wide/16 v2, 0xe10

    mul-long/2addr v2, v0

    sub-long v2, p0, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    .line 95
    .local v2, minutes:J
    const-wide/16 v4, 0xe10

    mul-long/2addr v4, v0

    sub-long/2addr p0, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v4, v2

    sub-long/2addr p0, v4

    .line 97
    .local p0, remainderSeconds:J
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    .line 98
    .local p0, secondsString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v4, 0x2

    if-ge p1, v4, :cond_3

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #secondsString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #secondsString:Ljava/lang/String;
    move-object v4, p0

    .line 101
    .end local p0           #secondsString:Ljava/lang/String;
    .local v4, secondsString:Ljava/lang/String;
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    .line 102
    .local p0, minutesString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_2

    .line 103
    .end local v2           #minutes:J
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #minutesString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #minutesString:Ljava/lang/String;
    move-object p1, p0

    .line 105
    .end local p0           #minutesString:Ljava/lang/String;
    .local p1, minutesString:Ljava/lang/String;
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    .line 106
    .local p0, hoursString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .end local v0           #hours:J
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #hoursString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    .restart local p0       #hoursString:Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #hoursString:Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ":"

    .end local p1           #minutesString:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 113
    .end local v4           #secondsString:Ljava/lang/String;
    .local p0, text:Ljava/lang/String;
    :goto_2
    return-object p0

    .line 111
    .local p0, seconds:J
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    .local p0, text:Ljava/lang/String;
    goto :goto_2

    .restart local v0       #hours:J
    .restart local v4       #secondsString:Ljava/lang/String;
    .local p0, minutesString:Ljava/lang/String;
    :cond_2
    move-object p1, p0

    .end local p0           #minutesString:Ljava/lang/String;
    .restart local p1       #minutesString:Ljava/lang/String;
    goto :goto_1

    .end local v4           #secondsString:Ljava/lang/String;
    .end local p1           #minutesString:Ljava/lang/String;
    .restart local v2       #minutes:J
    .local p0, secondsString:Ljava/lang/String;
    :cond_3
    move-object v4, p0

    .end local p0           #secondsString:Ljava/lang/String;
    .restart local v4       #secondsString:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getCenterFlashResource(I)I
    .locals 2
    .parameter "flashNum"

    .prologue
    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, resid:I
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 886
    packed-switch p0, :pswitch_data_0

    .line 897
    const v0, 0x7f02007d

    .line 914
    :goto_0
    return v0

    .line 888
    :pswitch_0
    const v0, 0x7f02007d

    .line 889
    goto :goto_0

    .line 891
    :pswitch_1
    const v0, 0x7f02007f

    .line 892
    goto :goto_0

    .line 894
    :pswitch_2
    const v0, 0x7f02007e

    .line 895
    goto :goto_0

    .line 900
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 911
    const v0, 0x7f020084

    goto :goto_0

    .line 902
    :pswitch_3
    const v0, 0x7f020084

    .line 903
    goto :goto_0

    .line 905
    :pswitch_4
    const v0, 0x7f020083

    .line 906
    goto :goto_0

    .line 908
    :pswitch_5
    const v0, 0x7f020082

    .line 909
    goto :goto_0

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 900
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static getCenterScenesResouce(I)I
    .locals 2
    .parameter "sceneNum"

    .prologue
    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, resid:I
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->OPENGL_ON:Z

    if-eqz v1, :cond_2

    .line 648
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 649
    packed-switch p0, :pswitch_data_0

    .line 675
    const v0, 0x7f020077

    .line 777
    :goto_0
    return v0

    .line 651
    :pswitch_0
    const v0, 0x7f020077

    .line 652
    goto :goto_0

    .line 654
    :pswitch_1
    const v0, 0x7f02008f

    .line 655
    goto :goto_0

    .line 657
    :pswitch_2
    const v0, 0x7f020081

    .line 658
    goto :goto_0

    .line 660
    :pswitch_3
    const v0, 0x7f020075

    .line 661
    goto :goto_0

    .line 663
    :pswitch_4
    const v0, 0x7f02008a

    .line 664
    goto :goto_0

    .line 666
    :pswitch_5
    const v0, 0x7f020096

    .line 667
    goto :goto_0

    .line 669
    :pswitch_6
    const v0, 0x7f020086

    .line 670
    goto :goto_0

    .line 672
    :pswitch_7
    const v0, 0x7f020092

    .line 673
    goto :goto_0

    .line 678
    :cond_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-eqz v1, :cond_1

    .line 679
    packed-switch p0, :pswitch_data_1

    .line 696
    const v0, 0x7f02007c

    goto :goto_0

    .line 681
    :pswitch_8
    const v0, 0x7f02007a

    .line 682
    goto :goto_0

    .line 684
    :pswitch_9
    const v0, 0x7f02007c

    .line 685
    goto :goto_0

    .line 687
    :pswitch_a
    const v0, 0x7f020088

    .line 688
    goto :goto_0

    .line 690
    :pswitch_b
    const v0, 0x7f02008d

    .line 691
    goto :goto_0

    .line 693
    :pswitch_c
    const v0, 0x7f020094

    .line 694
    goto :goto_0

    .line 699
    :cond_1
    packed-switch p0, :pswitch_data_2

    .line 707
    const v0, 0x7f020077

    goto :goto_0

    .line 701
    :pswitch_d
    const v0, 0x7f020077

    .line 702
    goto :goto_0

    .line 704
    :pswitch_e
    const v0, 0x7f02008a

    .line 705
    goto :goto_0

    .line 713
    :cond_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 714
    packed-switch p0, :pswitch_data_3

    .line 740
    const v0, 0x7f020076

    goto :goto_0

    .line 716
    :pswitch_f
    const v0, 0x7f020076

    .line 717
    goto :goto_0

    .line 719
    :pswitch_10
    const v0, 0x7f02008e

    .line 720
    goto :goto_0

    .line 722
    :pswitch_11
    const v0, 0x7f020080

    .line 723
    goto :goto_0

    .line 725
    :pswitch_12
    const v0, 0x7f020074

    .line 726
    goto :goto_0

    .line 728
    :pswitch_13
    const v0, 0x7f020089

    .line 729
    goto :goto_0

    .line 731
    :pswitch_14
    const v0, 0x7f020095

    .line 732
    goto :goto_0

    .line 734
    :pswitch_15
    const v0, 0x7f020085

    .line 735
    goto :goto_0

    .line 737
    :pswitch_16
    const v0, 0x7f02003f

    .line 738
    goto :goto_0

    .line 743
    :cond_3
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-eqz v1, :cond_4

    .line 744
    packed-switch p0, :pswitch_data_4

    .line 761
    const v0, 0x7f020044

    goto/16 :goto_0

    .line 746
    :pswitch_17
    const v0, 0x7f020079

    .line 747
    goto/16 :goto_0

    .line 749
    :pswitch_18
    const v0, 0x7f02007b

    .line 750
    goto/16 :goto_0

    .line 752
    :pswitch_19
    const v0, 0x7f020087

    .line 753
    goto/16 :goto_0

    .line 755
    :pswitch_1a
    const v0, 0x7f02008c

    .line 756
    goto/16 :goto_0

    .line 758
    :pswitch_1b
    const v0, 0x7f020093

    .line 759
    goto/16 :goto_0

    .line 764
    :cond_4
    packed-switch p0, :pswitch_data_5

    .line 772
    const v0, 0x7f020076

    goto/16 :goto_0

    .line 766
    :pswitch_1c
    const v0, 0x7f020076

    .line 767
    goto/16 :goto_0

    .line 769
    :pswitch_1d
    const v0, 0x7f020089

    .line 770
    goto/16 :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 679
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch

    .line 699
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 714
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 744
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1a
        :pswitch_17
        :pswitch_19
        :pswitch_1b
    .end packed-switch

    .line 764
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public static getDownsizeByZoom()I
    .locals 4

    .prologue
    .line 443
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getZoomNum()I

    move-result v0

    .line 445
    .local v0, zoomSetting:I
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraGlobalTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v1, v2

    return v1
.end method

.method public static getImageCount(Landroid/content/Context;)I
    .locals 11
    .parameter "aContext"

    .prologue
    const/4 v4, 0x0

    const-string v10, "\""

    .line 392
    const/4 v6, 0x0

    .line 393
    .local v6, count:I
    invoke-static {}, Lcom/motorola/CameraF/CameraGlobalTools;->hasStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "bucket_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\""

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 396
    .local v2, IMAGE_COLUMNS:[Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    sget-object v0, Lcom/motorola/CameraF/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v7, countFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, path:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BUCKET_ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 400
    .local v8, curCount:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 402
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 403
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 406
    .end local v2           #IMAGE_COLUMNS:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #countFile:Ljava/io/File;
    .end local v8           #curCount:Landroid/database/Cursor;
    .end local v9           #path:Ljava/lang/String;
    :cond_0
    return v6
.end method

.method public static getMenuFlashResource(I)I
    .locals 2
    .parameter "flashNum"

    .prologue
    .line 850
    const/4 v0, 0x0

    .line 851
    .local v0, resid:I
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 852
    packed-switch p0, :pswitch_data_0

    .line 863
    const v0, 0x7f020047

    .line 880
    :goto_0
    return v0

    .line 854
    :pswitch_0
    const v0, 0x7f020047

    .line 855
    goto :goto_0

    .line 857
    :pswitch_1
    const v0, 0x7f020046

    .line 858
    goto :goto_0

    .line 860
    :pswitch_2
    const v0, 0x7f020049

    .line 861
    goto :goto_0

    .line 866
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 877
    const v0, 0x7f02004d

    goto :goto_0

    .line 868
    :pswitch_3
    const v0, 0x7f02004d

    .line 869
    goto :goto_0

    .line 871
    :pswitch_4
    const v0, 0x7f020050

    .line 872
    goto :goto_0

    .line 874
    :pswitch_5
    const v0, 0x7f02004e

    .line 875
    goto :goto_0

    .line 852
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 866
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static getMenuScenesResouce(I)I
    .locals 2
    .parameter "sceneNum"

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, resid:I
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 579
    packed-switch p0, :pswitch_data_0

    .line 605
    const v0, 0x7f02003b

    .line 641
    :goto_0
    return v0

    .line 581
    :pswitch_0
    const v0, 0x7f02003b

    .line 582
    goto :goto_0

    .line 584
    :pswitch_1
    const v0, 0x7f02005a

    .line 585
    goto :goto_0

    .line 587
    :pswitch_2
    const v0, 0x7f02004c

    .line 588
    goto :goto_0

    .line 590
    :pswitch_3
    const v0, 0x7f02003a

    .line 591
    goto :goto_0

    .line 593
    :pswitch_4
    const v0, 0x7f020054

    .line 594
    goto :goto_0

    .line 596
    :pswitch_5
    const v0, 0x7f020066

    .line 597
    goto :goto_0

    .line 599
    :pswitch_6
    const v0, 0x7f020051

    .line 600
    goto :goto_0

    .line 602
    :pswitch_7
    const v0, 0x7f020062

    .line 603
    goto :goto_0

    .line 608
    :cond_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-eqz v1, :cond_1

    .line 609
    packed-switch p0, :pswitch_data_1

    .line 626
    const v0, 0x7f020044

    goto :goto_0

    .line 611
    :pswitch_8
    const v0, 0x7f020040

    .line 612
    goto :goto_0

    .line 614
    :pswitch_9
    const v0, 0x7f020044

    .line 615
    goto :goto_0

    .line 617
    :pswitch_a
    const v0, 0x7f020053

    .line 618
    goto :goto_0

    .line 620
    :pswitch_b
    const v0, 0x7f020056

    .line 621
    goto :goto_0

    .line 623
    :pswitch_c
    const v0, 0x7f020065

    .line 624
    goto :goto_0

    .line 629
    :cond_1
    packed-switch p0, :pswitch_data_2

    .line 637
    const v0, 0x7f02003b

    goto :goto_0

    .line 631
    :pswitch_d
    const v0, 0x7f02003b

    .line 632
    goto :goto_0

    .line 634
    :pswitch_e
    const v0, 0x7f020054

    .line 635
    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 609
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch

    .line 629
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getModeResouce(I)I
    .locals 2
    .parameter "atMode"

    .prologue
    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, resid:I
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 521
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInServiceMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    const v0, 0x7f02005f

    .line 572
    :goto_0
    return v0

    .line 524
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 551
    const v0, 0x7f02005f

    goto :goto_0

    .line 526
    :pswitch_0
    const v0, 0x7f02005f

    .line 527
    goto :goto_0

    .line 529
    :pswitch_1
    const v0, 0x7f020057

    .line 530
    goto :goto_0

    .line 532
    :pswitch_2
    const v0, 0x7f02005a

    .line 533
    goto :goto_0

    .line 535
    :pswitch_3
    const v0, 0x7f020052

    .line 536
    goto :goto_0

    .line 538
    :pswitch_4
    const v0, 0x7f020060

    .line 539
    goto :goto_0

    .line 541
    :pswitch_5
    const v0, 0x7f020069

    .line 542
    goto :goto_0

    .line 545
    :pswitch_6
    const v0, 0x7f020061

    .line 546
    goto :goto_0

    .line 548
    :pswitch_7
    const v0, 0x7f020060

    .line 549
    goto :goto_0

    .line 558
    :cond_1
    packed-switch p0, :pswitch_data_1

    .line 569
    const v0, 0x7f0200f3

    goto :goto_0

    .line 560
    :pswitch_8
    const v0, 0x7f020061

    .line 561
    goto :goto_0

    .line 563
    :pswitch_9
    const v0, 0x7f020060

    .line 564
    goto :goto_0

    .line 566
    :pswitch_a
    const v0, 0x7f020069

    .line 567
    goto :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 558
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getOptimalPreviewSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;
    .locals 9
    .parameter
    .parameter "targetRatio"
    .parameter "dispWidth"
    .parameter "dispHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;DII)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string v0, "MotoCameraGlobalTools"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target ratio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "width height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 185
    .end local p0           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local p1
    .end local p3
    .end local p4
    :goto_0
    return-object p0

    .line 143
    .restart local p0       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local p1
    .restart local p3
    .restart local p4
    :cond_0
    const/4 v2, 0x0

    .line 144
    .local v2, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v0, 0x7fefffffffffffffL

    .line 152
    .local v0, minDiff:D
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 154
    .local p3, targetHeight:I
    if-gtz p3, :cond_8

    .line 157
    move p3, p4

    move v5, p3

    .line 161
    .end local p3           #targetHeight:I
    .local v5, targetHeight:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .local p3, i$:Ljava/util/Iterator;
    move-object p4, v2

    .end local v2           #optimalSize:Landroid/hardware/Camera$Size;
    .local p4, optimalSize:Landroid/hardware/Camera$Size;
    :cond_1
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 162
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v2, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    .line 163
    .local v2, ratio:D
    const-string v6, "MotoCameraGlobalTools"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ratio "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .end local v2           #ratio:D
    move-result-wide v2

    const-wide v6, 0x3fa999999999999aL

    cmpl-double v2, v2, v6

    if-gtz v2, :cond_1

    .line 165
    iget v2, v4, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    .line 166
    move-object p4, v4

    .line 167
    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    .end local v0           #minDiff:D
    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    .restart local v0       #minDiff:D
    goto :goto_2

    .line 172
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :cond_2
    if-nez p4, :cond_5

    .line 173
    sget-boolean p1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    .end local p1
    if-eqz p1, :cond_3

    const-string p1, "MotoCameraGlobalTools"

    const-string p2, "No preview size match the aspect ratio"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_3
    const-wide p1, 0x7fefffffffffffffL

    .line 175
    .end local v0           #minDiff:D
    .local p1, minDiff:D
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .end local p3           #i$:Ljava/util/Iterator;
    .local p0, i$:Ljava/util/Iterator;
    move-object p3, p4

    .end local p4           #optimalSize:Landroid/hardware/Camera$Size;
    .local p3, optimalSize:Landroid/hardware/Camera$Size;
    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/Camera$Size;

    .line 176
    .local p4, size:Landroid/hardware/Camera$Size;
    iget v0, p4, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpg-double v0, v0, p1

    if-gez v0, :cond_4

    .line 177
    move-object p3, p4

    .line 178
    iget p1, p4, Landroid/hardware/Camera$Size;->height:I

    .end local p1           #minDiff:D
    sub-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double p1, p1

    .restart local p1       #minDiff:D
    goto :goto_3

    .restart local v0       #minDiff:D
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .local p1, targetRatio:D
    .local p3, i$:Ljava/util/Iterator;
    .local p4, optimalSize:Landroid/hardware/Camera$Size;
    :cond_5
    move-object p0, p3

    .end local p3           #i$:Ljava/util/Iterator;
    .local p0, i$:Ljava/util/Iterator;
    move-wide p1, v0

    .end local v0           #minDiff:D
    .local p1, minDiff:D
    move-object p3, p4

    .line 182
    .end local p4           #optimalSize:Landroid/hardware/Camera$Size;
    .local p3, optimalSize:Landroid/hardware/Camera$Size;
    :cond_6
    sget-boolean p0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    .end local p0           #i$:Ljava/util/Iterator;
    if-eqz p0, :cond_7

    const-string p0, "MotoCameraGlobalTools"

    const-string p1, "Optimal preview size is %sx%s"

    .end local p1           #minDiff:D
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    iget v0, p3, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p4

    const/4 p4, 0x1

    iget v0, p3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p4

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object p0, p3

    .line 185
    goto/16 :goto_0

    .end local v5           #targetHeight:I
    .restart local v0       #minDiff:D
    .local v2, optimalSize:Landroid/hardware/Camera$Size;
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .local p1, targetRatio:D
    .local p3, targetHeight:I
    .local p4, dispHeight:I
    :cond_8
    move v5, p3

    .end local p3           #targetHeight:I
    .restart local v5       #targetHeight:I
    goto/16 :goto_1
.end method

.method public static getStatusFlashResource(I)I
    .locals 2
    .parameter "flashNum"

    .prologue
    .line 919
    const/4 v0, 0x0

    .line 920
    .local v0, resid:I
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 921
    packed-switch p0, :pswitch_data_0

    .line 932
    const v0, 0x7f0200b8

    .line 949
    :goto_0
    return v0

    .line 923
    :pswitch_0
    const v0, 0x7f0200b8

    .line 924
    goto :goto_0

    .line 926
    :pswitch_1
    const v0, 0x7f0200b7

    .line 927
    goto :goto_0

    .line 929
    :pswitch_2
    const v0, 0x7f0200bb

    .line 930
    goto :goto_0

    .line 935
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 946
    const v0, 0x7f0200c6

    goto :goto_0

    .line 937
    :pswitch_3
    const v0, 0x7f0200c6

    .line 938
    goto :goto_0

    .line 940
    :pswitch_4
    const v0, 0x7f0200c8

    .line 941
    goto :goto_0

    .line 943
    :pswitch_5
    const v0, 0x7f0200c7

    .line 944
    goto :goto_0

    .line 921
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 935
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static getStatusModeResource(I)I
    .locals 2
    .parameter "atMode"

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, resid:I
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 465
    packed-switch p0, :pswitch_data_0

    .line 493
    const v0, 0x7f0200e2

    .line 512
    :goto_0
    return v0

    .line 467
    :pswitch_0
    const v0, 0x7f0200e2

    .line 468
    goto :goto_0

    .line 470
    :pswitch_1
    const v0, 0x7f0200d7

    .line 471
    goto :goto_0

    .line 473
    :pswitch_2
    const v0, 0x7f0200d8

    .line 474
    goto :goto_0

    .line 476
    :pswitch_3
    const v0, 0x7f0200d2

    .line 477
    goto :goto_0

    .line 479
    :pswitch_4
    const v0, 0x7f0200e3

    .line 480
    goto :goto_0

    .line 483
    :pswitch_5
    const v0, 0x7f0200eb

    .line 484
    goto :goto_0

    .line 487
    :pswitch_6
    const v0, 0x7f0200b6

    .line 488
    goto :goto_0

    .line 490
    :pswitch_7
    const v0, 0x7f0200e3

    .line 491
    goto :goto_0

    .line 498
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 509
    const v0, 0x7f0200ea

    goto :goto_0

    .line 500
    :pswitch_8
    const v0, 0x7f0200b6

    .line 501
    goto :goto_0

    .line 503
    :pswitch_9
    const v0, 0x7f0200e3

    .line 504
    goto :goto_0

    .line 506
    :pswitch_a
    const v0, 0x7f0200eb

    .line 507
    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 498
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getStatusScenesResouce(I)I
    .locals 2
    .parameter "sceneNum"

    .prologue
    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, resid:I
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 784
    packed-switch p0, :pswitch_data_0

    .line 810
    const v0, 0x7f0200b0

    .line 846
    :goto_0
    return v0

    .line 786
    :pswitch_0
    const v0, 0x7f0200b0

    .line 787
    goto :goto_0

    .line 789
    :pswitch_1
    const v0, 0x7f0200d8

    .line 790
    goto :goto_0

    .line 792
    :pswitch_2
    const v0, 0x7f0200c4

    .line 793
    goto :goto_0

    .line 795
    :pswitch_3
    const v0, 0x7f0200ae

    .line 796
    goto :goto_0

    .line 798
    :pswitch_4
    const v0, 0x7f0200d4

    .line 799
    goto :goto_0

    .line 801
    :pswitch_5
    const v0, 0x7f0200e7

    .line 802
    goto :goto_0

    .line 804
    :pswitch_6
    const v0, 0x7f0200c9

    .line 805
    goto :goto_0

    .line 807
    :pswitch_7
    const v0, 0x7f0200e5

    .line 808
    goto :goto_0

    .line 813
    :cond_0
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-eqz v1, :cond_1

    .line 814
    packed-switch p0, :pswitch_data_1

    .line 831
    const v0, 0x7f0200b5

    goto :goto_0

    .line 816
    :pswitch_8
    const v0, 0x7f0200b2

    .line 817
    goto :goto_0

    .line 819
    :pswitch_9
    const v0, 0x7f0200b5

    .line 820
    goto :goto_0

    .line 822
    :pswitch_a
    const v0, 0x7f0200d3

    .line 823
    goto :goto_0

    .line 825
    :pswitch_b
    const v0, 0x7f0200d6

    .line 826
    goto :goto_0

    .line 828
    :pswitch_c
    const v0, 0x7f0200e6

    .line 829
    goto :goto_0

    .line 834
    :cond_1
    packed-switch p0, :pswitch_data_2

    .line 842
    const v0, 0x7f0200b0

    goto :goto_0

    .line 836
    :pswitch_d
    const v0, 0x7f0200b0

    .line 837
    goto :goto_0

    .line 839
    :pswitch_e
    const v0, 0x7f0200d4

    .line 840
    goto :goto_0

    .line 784
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 814
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch

    .line 834
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getVideoBitrate(I)I
    .locals 5
    .parameter "videoWidth"

    .prologue
    const/16 v4, 0x1e0

    const/16 v3, 0x160

    const/16 v2, 0x140

    .line 244
    const v0, 0x33450

    .line 245
    .local v0, bitrate_setting:I
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->camPremium:Z

    if-eqz v1, :cond_5

    .line 246
    invoke-static {}, Lcom/motorola/CameraF/CameraGlobalType;->getVideoEncoder()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    invoke-static {}, Lcom/motorola/CameraF/CameraGlobalType;->getAudioEncoder()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 294
    :goto_1
    return v0

    .line 251
    :pswitch_0
    if-lt p0, v4, :cond_1

    .line 252
    const v0, 0x668a0

    goto :goto_0

    .line 254
    :cond_1
    if-lt p0, v3, :cond_2

    .line 256
    const v0, 0x4e200

    goto :goto_0

    .line 257
    :cond_2
    if-lt p0, v2, :cond_0

    .line 258
    const v0, 0x4e200

    goto :goto_0

    .line 262
    :pswitch_1
    if-lt p0, v4, :cond_3

    .line 263
    const v0, 0x1e8480

    goto :goto_0

    .line 264
    :cond_3
    if-lt p0, v3, :cond_4

    .line 265
    const v0, 0x57e40

    goto :goto_0

    .line 266
    :cond_4
    if-lt p0, v2, :cond_0

    .line 267
    const v0, 0x4e200

    goto :goto_0

    .line 275
    :pswitch_2
    add-int/lit16 v0, v0, 0x3200

    .line 277
    goto :goto_1

    .line 279
    :pswitch_3
    add-int/lit16 v0, v0, 0x5dc0

    .line 281
    goto :goto_1

    .line 287
    :cond_5
    if-lt p0, v3, :cond_6

    .line 288
    const v0, 0x4e200

    goto :goto_1

    .line 289
    :cond_6
    if-lt p0, v2, :cond_7

    .line 290
    const v0, 0x445c0

    goto :goto_1

    .line 292
    :cond_7
    const v0, 0x30d40

    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 273
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static hasStorage()Z
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x1

    .line 125
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFlashAdjustable(I)I
    .locals 2
    .parameter "scene"

    .prologue
    .line 422
    const/4 v0, 0x2

    .line 424
    .local v0, flashAdjustAble:I
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 425
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    .line 428
    :cond_0
    const/4 v0, 0x0

    .line 433
    :cond_1
    :goto_0
    return v0

    .line 429
    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 430
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static resetCameraTimeout(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    const/16 v2, 0x30

    .line 415
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    sget v0, Lcom/motorola/CameraF/CameraGlobalType;->INACTIVITY_TIMEOUT_THRESHOLD:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 417
    return-void
.end method

.method public static resetScreenTimeout(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    const/4 v2, 0x3

    .line 410
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    sget-object v0, Lcom/motorola/CameraF/CameraGlobalType;->SCREEN_DELAY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 412
    return-void
.end method
