.class public Lcom/motorola/CameraF/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/CameraF/ImageManager$BaseCancelable;,
        Lcom/motorola/CameraF/ImageManager$CanceledException;,
        Lcom/motorola/CameraF/ImageManager$IAddImage_cancelable;,
        Lcom/motorola/CameraF/ImageManager$IGetBoolean_cancelable;,
        Lcom/motorola/CameraF/ImageManager$ICancelable;,
        Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String; = null

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

.field private static final MINI_THUMB_TARGET_SIZE:I = 0x60

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMB_PROJECTION:[Ljava/lang/String; = null

.field private static mMiniThumbData:Ljava/io/RandomAccessFile; = null

.field private static final sBytesPerMiniThumb:I = 0x2710

.field private static sInstance:Lcom/motorola/CameraF/ImageManager;

.field private static sStorageURI:Landroid/net/Uri;

.field private static sThumbURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/CameraF/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 53
    sput-object v3, Lcom/motorola/CameraF/ImageManager;->sInstance:Lcom/motorola/CameraF/ImageManager;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/CameraF/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    .line 58
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/CameraF/ImageManager;->sStorageURI:Landroid/net/Uri;

    .line 59
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/CameraF/ImageManager;->sThumbURI:Landroid/net/Uri;

    .line 61
    sput-object v3, Lcom/motorola/CameraF/ImageManager;->mMiniThumbData:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CameraF/ImageManager;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/CameraF/ImageManager;->saveThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/CameraF/ImageManager;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/motorola/CameraF/ImageManager;->saveMiniThumb(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method private closeMiniThumbFile()V
    .locals 3

    .prologue
    .line 629
    sget-object v1, Lcom/motorola/CameraF/ImageManager;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 631
    :try_start_0
    sget-object v1, Lcom/motorola/CameraF/ImageManager;->mMiniThumbData:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/motorola/CameraF/ImageManager;->mMiniThumbData:Ljava/io/RandomAccessFile;

    .line 639
    :cond_0
    return-void

    .line 632
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 634
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 635
    const-string v1, "ImageManager"

    const-string v2, "Failing to close mini thumb file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static instance()Lcom/motorola/CameraF/ImageManager;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/motorola/CameraF/ImageManager;->sInstance:Lcom/motorola/CameraF/ImageManager;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/motorola/CameraF/ImageManager;

    invoke-direct {v0}, Lcom/motorola/CameraF/ImageManager;-><init>()V

    sput-object v0, Lcom/motorola/CameraF/ImageManager;->sInstance:Lcom/motorola/CameraF/ImageManager;

    .line 208
    :cond_0
    sget-object v0, Lcom/motorola/CameraF/ImageManager;->sInstance:Lcom/motorola/CameraF/ImageManager;

    return-object v0
.end method

.method public static miniThumbData(Landroid/graphics/Bitmap;)[B
    .locals 11
    .parameter "source"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x60

    const/high16 v8, 0x42c0

    .line 529
    if-nez p0, :cond_0

    move-object v6, v10

    .line 555
    :goto_0
    return-object v6

    .line 533
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 534
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v5, v8, v6

    .line 538
    .local v5, scale:F
    :goto_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 539
    .local v2, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 540
    const/4 v6, 0x0

    invoke-static {v2, p0, v9, v9, v6}, Lcom/motorola/CameraF/ImageManager;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 542
    .local v4, miniThumbnail:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 543
    .local v3, miniOutStream:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {v4, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 544
    if-eq v4, p0, :cond_1

    .line 545
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 549
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 550
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, data:[B
    move-object v6, v0

    .line 551
    goto :goto_0

    .line 536
    .end local v0           #data:[B
    .end local v2           #matrix:Landroid/graphics/Matrix;
    .end local v3           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #miniThumbnail:Landroid/graphics/Bitmap;
    .end local v5           #scale:F
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v5, v8, v6

    .restart local v5       #scale:F
    goto :goto_1

    .line 552
    .restart local v2       #matrix:Landroid/graphics/Matrix;
    .restart local v3       #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #miniThumbnail:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 553
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception ex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v10

    .line 555
    goto :goto_0
.end method

.method public static roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 211
    const/16 v0, 0x2d

    if-le p0, v0, :cond_0

    const/16 v0, 0x13b

    if-le p0, v0, :cond_1

    .line 212
    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    .line 213
    :cond_1
    const/16 v0, 0x87

    if-gt p0, v0, :cond_2

    .line 214
    const/16 v0, 0x5a

    goto :goto_0

    .line 215
    :cond_2
    const/16 v0, 0xe1

    if-gt p0, v0, :cond_3

    .line 216
    const/16 v0, 0xb4

    goto :goto_0

    .line 217
    :cond_3
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method private saveMiniThumb(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 23
    .parameter "source"
    .parameter "uri"

    .prologue
    .line 460
    sget-object v19, Lcom/motorola/CameraF/ImageManager;->sStorageURI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/ImageManager;->miniThumbDataFile(Landroid/net/Uri;)Ljava/io/RandomAccessFile;

    move-result-object v10

    .line 461
    .local v10, r:Ljava/io/RandomAccessFile;
    if-nez v10, :cond_0

    .line 503
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 464
    .local v6, imageId:J
    const-wide/16 v19, 0x2710

    mul-long v8, v6, v19

    .line 465
    .local v8, pos:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 466
    .local v11, t0:J
    monitor-enter v10

    .line 468
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 469
    .local v13, t1:J
    invoke-static/range {p1 .. p1}, Lcom/motorola/CameraF/ImageManager;->miniThumbData(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    .line 470
    .local v4, data:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 471
    .local v15, t2:J
    if-eqz v4, :cond_4

    .line 472
    move-object v0, v4

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2710

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 473
    sget-boolean v19, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v19, :cond_1

    const-string v19, "ImageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "!!!!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v4

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " > "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2710

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_1
    :try_start_1
    monitor-exit v10

    goto :goto_0

    .line 501
    .end local v4           #data:[B
    .end local v13           #t1:J
    .end local v15           #t2:J
    :catchall_0
    move-exception v19

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 478
    .restart local v4       #data:[B
    .restart local v13       #t1:J
    .restart local v15       #t2:J
    :cond_2
    :try_start_2
    invoke-virtual {v10, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 479
    const/16 v19, 0x0

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 482
    const/16 v19, 0x8

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v3

    .line 483
    .local v3, bytesSkipped:I
    const/16 v19, 0x8

    move v0, v3

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 485
    const-string v19, "ImageManager"

    const-string v20, "didn\'t skip the amount of byes we expected!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_3
    move-object v0, v4

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 488
    invoke-virtual {v10, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 490
    invoke-virtual {v10, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 491
    const/16 v19, 0x1

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 493
    .local v17, t3:J
    sget-boolean v19, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v19, :cond_4

    const-string v19, "ImageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "saveMiniThumbToFile took "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v17, v11

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v13, v11

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v15, v13

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v17, v15

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 501
    .end local v3           #bytesSkipped:I
    .end local v4           #data:[B
    .end local v13           #t1:J
    .end local v15           #t2:J
    .end local v17           #t3:J
    :cond_4
    :goto_1
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 502
    invoke-direct/range {p0 .. p0}, Lcom/motorola/CameraF/ImageManager;->closeMiniThumbFile()V

    goto/16 :goto_0

    .line 497
    :catch_0
    move-exception v19

    move-object/from16 v5, v19

    .line 498
    .local v5, ex:Ljava/io/IOException;
    :try_start_4
    const-string v19, "ImageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "couldn\'t save mini thumbnail data for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private saveThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 17
    .parameter "cr"
    .parameter "uri"
    .parameter "thumbnail"

    .prologue
    .line 419
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 420
    .local v12, imageId:J
    const/4 v15, 0x0

    .line 422
    .local v15, thumbUri:Landroid/net/Uri;
    :try_start_0
    sget-object v5, Lcom/motorola/CameraF/ImageManager;->sThumbURI:Landroid/net/Uri;

    sget-object v6, Lcom/motorola/CameraF/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    const-string v7, "image_id=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 425
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 431
    sget-object v4, Lcom/motorola/CameraF/ImageManager;->sThumbURI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 435
    :cond_0
    if-eqz v10, :cond_1

    .line 436
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 437
    :cond_1
    if-nez v15, :cond_2

    .line 438
    new-instance v16, Landroid/content/ContentValues;

    const/4 v4, 0x4

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 439
    .local v16, values:Landroid/content/ContentValues;
    const-string v4, "kind"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    const-string v4, "image_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    const-string v4, "height"

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    const-string v4, "width"

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    sget-object v4, Lcom/motorola/CameraF/ImageManager;->sThumbURI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 445
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_2
    if-nez v15, :cond_3

    .line 446
    const-string v4, "ImageManager"

    const-string v5, "Failed to get thumb uri"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v10           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 449
    .restart local v10       #c:Landroid/database/Cursor;
    :cond_3
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_4

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thumbnail path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_4
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v14

    .line 451
    .local v14, thumbOut:Ljava/io/OutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x3c

    move-object/from16 v0, p3

    move-object v1, v4

    move v2, v5

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 452
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    .end local v10           #c:Landroid/database/Cursor;
    .end local v14           #thumbOut:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v11, v4

    .line 455
    .local v11, ex:Ljava/lang/Exception;
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to store thumbnail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"

    .prologue
    .line 559
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    .line 560
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    .line 561
    .local v1, deltaY:I
    if-nez p4, :cond_2

    if-ltz v0, :cond_0

    if-gez v1, :cond_2

    .line 568
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p0
    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 570
    .local p0, b2:Landroid/graphics/Bitmap;
    new-instance p4, Landroid/graphics/Canvas;

    .end local p4
    invoke-direct {p4, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 572
    .local p4, c:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    div-int/lit8 v0, v0, 0x2

    .end local v0           #deltaX:I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 573
    .local v0, deltaXHalf:I
    const/4 v2, 0x0

    div-int/lit8 v1, v1, 0x2

    .end local v1           #deltaY:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 574
    .local v1, deltaYHalf:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 577
    .local v3, src:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .end local v0           #deltaXHalf:I
    sub-int v0, p2, v0

    div-int/lit8 v1, v0, 0x2

    .line 578
    .local v1, dstX:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v2, v0, 0x2

    .line 579
    .local v2, dstY:I
    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr p2, v1

    sub-int/2addr p3, v2

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 581
    .end local p2
    .end local p3
    .local v0, dst:Landroid/graphics/Rect;
    sget-boolean p2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz p2, :cond_1

    .line 582
    const-string p2, "ImageManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "draw "

    .end local v1           #dstX:I
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " ==> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p4, p1, v3, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 626
    .end local v0           #dst:Landroid/graphics/Rect;
    .end local v2           #dstY:I
    .end local v3           #src:Landroid/graphics/Rect;
    .end local p4           #c:Landroid/graphics/Canvas;
    :goto_0
    return-object p0

    .line 586
    .local v0, deltaX:I
    .local v1, deltaY:I
    .local p0, scaler:Landroid/graphics/Matrix;
    .restart local p2
    .restart local p3
    .local p4, scaleUp:Z
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    .end local p4           #scaleUp:Z
    int-to-float v1, p4

    .line 587
    .local v1, bitmapWidthF:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float v0, p4

    .line 589
    .local v0, bitmapHeightF:F
    div-float p4, v1, v0

    .line 590
    .local p4, bitmapAspect:F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    .line 592
    .local v2, viewAspect:F
    cmpl-float p4, p4, v2

    if-lez p4, :cond_6

    .line 593
    .end local p4           #bitmapAspect:F
    int-to-float p4, p3

    div-float/2addr p4, v0

    .line 594
    .local p4, scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_3

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_5

    .line 595
    :cond_3
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 609
    :goto_1
    if-eqz p0, :cond_9

    .line 611
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .end local v1           #bitmapWidthF:F
    .end local v2           #viewAspect:F
    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 617
    .local p0, b1:Landroid/graphics/Bitmap;
    :goto_2
    const/4 p4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .end local p4           #scale:F
    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 618
    .local p4, dx1:I
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 620
    .local v0, dy1:I
    div-int/lit8 p4, p4, 0x2

    .end local p4           #dx1:I
    div-int/lit8 v0, v0, 0x2

    .end local v0           #dy1:I
    invoke-static {p0, p4, v0, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 623
    .local p2, b2:Landroid/graphics/Bitmap;
    if-eq p0, p1, :cond_4

    .line 624
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object p0, p2

    .line 626
    .end local p2           #b2:Landroid/graphics/Bitmap;
    .local p0, b2:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 597
    .restart local v1       #bitmapWidthF:F
    .restart local v2       #viewAspect:F
    .local p0, scaler:Landroid/graphics/Matrix;
    .local p2, targetWidth:I
    .local p4, scale:F
    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    .line 600
    .end local p4           #scale:F
    .local v0, bitmapHeightF:F
    :cond_6
    int-to-float p4, p2

    div-float/2addr p4, v1

    .line 601
    .restart local p4       #scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_7

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_8

    .line 602
    :cond_7
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 604
    :cond_8
    const/4 p0, 0x0

    goto :goto_1

    .line 614
    :cond_9
    move-object p0, p1

    .local p0, b1:Landroid/graphics/Bitmap;
    goto :goto_2
.end method


# virtual methods
.method public addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 21
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageName"
    .parameter "description"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "orientation"
    .parameter "directory"
    .parameter "filename"

    .prologue
    .line 224
    const/4 v6, 0x0

    .line 225
    .local v6, uri:Landroid/net/Uri;
    new-instance v19, Landroid/content/ContentValues;

    const/4 v5, 0x7

    move-object/from16 v0, v19

    move v1, v5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 226
    .local v19, values:Landroid/content/ContentValues;
    const-string v5, "title"

    move-object/from16 v0, v19

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v5, "_display_name"

    move-object/from16 v0, v19

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v5, "description"

    move-object/from16 v0, v19

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v5, "datetaken"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    const-string v5, "mime_type"

    const-string v7, "image/jpeg"

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v5, "orientation"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    new-instance v15, Ljava/io/File;

    move-object v0, v15

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v15, parentFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 235
    .local v16, path:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 237
    .local v14, name:Ljava/lang/String;
    const-string v5, "bucket_id"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v5, "bucket_display_name"

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    if-eqz p7, :cond_0

    .line 240
    const-string v5, "latitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 241
    const-string v5, "longitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 244
    :cond_0
    if-eqz p9, :cond_1

    if-eqz p10, :cond_1

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 246
    .local v18, value:Ljava/lang/String;
    const-string v5, "_data"

    move-object/from16 v0, v19

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v18           #value:Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    .line 251
    const-string v5, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addImage() - calling cr.insert() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/motorola/CameraF/ImageManager;->sStorageURI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    sget-object v5, Lcom/motorola/CameraF/ImageManager;->sStorageURI:Landroid/net/Uri;

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 255
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_3

    .line 256
    const-string v5, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addImage() - cr.insert returned : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_3
    if-nez v6, :cond_4

    .line 264
    const-string v5, "ImageManager"

    const-string v7, "addImage: uri item returned is not valid, insert failed"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v5, 0x0

    .line 294
    :goto_0
    return-object v5

    .line 258
    :catch_0
    move-exception v5

    move-object v12, v5

    .line 259
    .local v12, e:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    const-string v7, "addImage: insert failed"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v5, 0x0

    goto :goto_0

    .line 273
    .end local v12           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v5

    const/4 v5, 0x1

    const-string v8, "_display_name"

    aput-object v8, v7, v5

    const/4 v5, 0x2

    const-string v8, "_data"

    aput-object v8, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 275
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_6

    .line 276
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 277
    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 278
    .local v13, filePath:Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 279
    const-string v5, "/"

    invoke-virtual {v13, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 280
    .local v17, pos:I
    if-ltz v17, :cond_5

    .line 281
    add-int/lit8 v5, v17, 0x1

    invoke-virtual {v13, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 285
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v20, values1:Landroid/content/ContentValues;
    const-string v5, "_display_name"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object v1, v6

    move-object/from16 v2, v20

    move-object v3, v5

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 291
    .end local v13           #filePath:Ljava/lang/String;
    .end local v17           #pos:I
    .end local v20           #values1:Landroid/content/ContentValues;
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 292
    const/4 v11, 0x0

    :cond_6
    move-object v5, v6

    .line 294
    goto :goto_0
.end method

.method miniThumbDataFile(Landroid/net/Uri;)Ljava/io/RandomAccessFile;
    .locals 7
    .parameter "uri"

    .prologue
    .line 505
    sget-object v4, Lcom/motorola/CameraF/ImageManager;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_1

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/dcim/.thumbnails"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, directoryName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/.thumbdata"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 513
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!! unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .local v2, f:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/CameraF/ImageManager;->mMiniThumbData:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v0           #directory:Ljava/io/File;
    .end local v1           #directoryName:Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v4, Lcom/motorola/CameraF/ImageManager;->mMiniThumbData:Ljava/io/RandomAccessFile;

    return-object v4

    .line 522
    .restart local v0       #directory:Ljava/io/File;
    .restart local v1       #directoryName:Ljava/lang/String;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #path:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected saveImageToFile([BLandroid/net/Uri;Landroid/content/ContentResolver;)Lcom/motorola/CameraF/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "jpegData"
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 347
    new-instance v0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;-><init>(Lcom/motorola/CameraF/ImageManager;Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    return-object v0
.end method

.method public storeImage(Landroid/net/Uri;Landroid/content/ContentResolver;[BLandroid/graphics/Bitmap;)Lcom/motorola/CameraF/ImageManager$IAddImage_cancelable;
    .locals 6
    .parameter "uri"
    .parameter "cr"
    .parameter "jpegData"
    .parameter "thumbnail"

    .prologue
    .line 415
    new-instance v0, Lcom/motorola/CameraF/ImageManager$1AddImageCancelable;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/CameraF/ImageManager$1AddImageCancelable;-><init>(Lcom/motorola/CameraF/ImageManager;[BLandroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;)V

    .line 416
    .local v0, ret:Lcom/motorola/CameraF/ImageManager$IAddImage_cancelable;
    return-object v0
.end method
