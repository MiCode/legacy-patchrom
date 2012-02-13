.class final Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;
.super Ljava/lang/Thread;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateThumbnailRunnable"
.end annotation


# instance fields
.field private data:Landroid/graphics/Bitmap;

.field private genVideoThumbnail:Z

.field public mDone:Z

.field options:Landroid/graphics/BitmapFactory$Options;

.field rotationMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/motorola/CameraF/Camcorder;


# direct methods
.method public constructor <init>(Lcom/motorola/CameraF/Camcorder;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter "original"
    .parameter "needVideoThumbnail"

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    .line 1502
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1494
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    .line 1497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->rotationMatrix:Landroid/graphics/Matrix;

    .line 1503
    iput-object p2, p0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->data:Landroid/graphics/Bitmap;

    .line 1504
    iput-boolean p3, p0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->genVideoThumbnail:Z

    .line 1505
    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 1509
    const/4 v9, 0x0

    .line 1510
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    .line 1512
    .local v20, interrupted:Z
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 1513
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread - Running..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1518
    const/16 v16, 0x0

    .line 1519
    .local v16, imageCursor:Landroid/database/Cursor;
    const/16 v28, 0x0

    .line 1523
    .local v28, videoCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->data:Landroid/graphics/Bitmap;

    move-object v3, v0

    if-nez v3, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->genVideoThumbnail:Z

    move v3, v0

    if-nez v3, :cond_1d

    .line 1525
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    .line 1526
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread - no data passed in, trying to get from DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$4500(Lcom/motorola/CameraF/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "limit"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "datetaken"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "orientation"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "mini_thumb_magic"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data LIKE \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/motorola/CameraF/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/%\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "datetaken DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$4500(Lcom/motorola/CameraF/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "limit"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "datetaken"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data LIKE \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/motorola/CameraF/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/%\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "datetaken DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v28

    .line 1571
    :goto_0
    if-eqz v16, :cond_1a

    if-eqz v28, :cond_1a

    .line 1573
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    .line 1574
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread() - Both cursors are valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1577
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1580
    const-string v3, "datetaken"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1581
    .local v10, dateTakenInd:I
    const-string v3, "_id"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1582
    .local v12, displayNameIndex:I
    const-string v3, "orientation"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1583
    .local v25, orientationInd:I
    const-string v3, "mini_thumb_magic"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1586
    .local v23, miniThumbInd:I
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_d

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_d

    .line 1588
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    .line 1589
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread() - both cursors empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    iget-object v3, v3, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    iget-object v3, v3, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    iget-object v3, v3, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1595
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1597
    const/4 v9, 0x0

    .line 1721
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1722
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1786
    .end local v10           #dateTakenInd:I
    .end local v12           #displayNameIndex:I
    .end local v23           #miniThumbInd:I
    .end local v25           #orientationInd:I
    :cond_5
    :goto_2
    monitor-enter p0

    .line 1788
    if-nez v20, :cond_6

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1789
    :cond_6
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_7

    .line 1790
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_7
    if-eqz v9, :cond_8

    .line 1792
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 1794
    :cond_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1812
    :goto_3
    return-void

    .line 1540
    :catch_0
    move-exception v3

    move-object/from16 v21, v3

    .line 1542
    .local v21, ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v16, :cond_9

    .line 1544
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1545
    const/16 v16, 0x0

    .line 1547
    :cond_9
    if-eqz v28, :cond_a

    .line 1549
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1550
    const/16 v28, 0x0

    .line 1553
    :cond_a
    const-string v3, "MotoCamcorder"

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1555
    .end local v21           #ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v3

    move-object v14, v3

    .line 1557
    .local v14, ex:Ljava/lang/Exception;
    if-eqz v16, :cond_b

    .line 1559
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1560
    const/16 v16, 0x0

    .line 1562
    :cond_b
    if-eqz v28, :cond_c

    .line 1564
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1565
    const/16 v28, 0x0

    .line 1568
    :cond_c
    const-string v3, "MotoCamcorder"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1599
    .end local v14           #ex:Ljava/lang/Exception;
    .restart local v10       #dateTakenInd:I
    .restart local v12       #displayNameIndex:I
    .restart local v23       #miniThumbInd:I
    .restart local v25       #orientationInd:I
    :cond_d
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_11

    .line 1601
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_e

    .line 1602
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread() - imageCursor has elements"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_e
    move-object/from16 v0, v16

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1608
    .local v11, displayName:Ljava/lang/String;
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 1610
    .local v24, miniThumbValue:Ljava/lang/Long;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_10

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$4500(Lcom/motorola/CameraF/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1637
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    #setter for: Lcom/motorola/CameraF/Camcorder;->mThumbnailOrientation:I
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camcorder;->access$202(Lcom/motorola/CameraF/Camcorder;I)I

    goto/16 :goto_1

    .line 1618
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/16 v4, 0x10

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1619
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 1621
    .local v22, mUri:Landroid/net/Uri;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$4500(Lcom/motorola/CameraF/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v19

    .line 1622
    .local v19, inputStream:Ljava/io/InputStream;
    if-eqz v19, :cond_f

    .line 1623
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v4, v0

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 1624
    .local v26, tBitmap:Landroid/graphics/Bitmap;
    if-eqz v26, :cond_f

    .line 1625
    const/16 v3, 0x60

    const/16 v4, 0x60

    move-object/from16 v0, v26

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1626
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 1629
    .end local v19           #inputStream:Ljava/io/InputStream;
    .end local v26           #tBitmap:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v3

    move-object v13, v3

    .line 1631
    .local v13, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 1639
    .end local v11           #displayName:Ljava/lang/String;
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .end local v22           #mUri:Landroid/net/Uri;
    .end local v24           #miniThumbValue:Ljava/lang/Long;
    :cond_11
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_13

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_13

    .line 1641
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_12

    .line 1642
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread() - videoCursor has elements"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1645
    move-object/from16 v0, v28

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1648
    .restart local v11       #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$4500(Lcom/motorola/CameraF/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1649
    goto/16 :goto_1

    .line 1652
    .end local v11           #displayName:Ljava/lang/String;
    :cond_13
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_14

    .line 1653
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread() - both cursors have elements"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_14
    move-object/from16 v0, v16

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1656
    .local v17, imageDateTaken:J
    move-object/from16 v0, v28

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 1658
    .local v29, videoDateTaken:J
    cmp-long v3, v17, v29

    if-lez v3, :cond_18

    .line 1661
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_15

    .line 1662
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread() - image was last taken"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_15
    move-object/from16 v0, v16

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1667
    .restart local v11       #displayName:Ljava/lang/String;
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 1669
    .restart local v24       #miniThumbValue:Ljava/lang/Long;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_16

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$4500(Lcom/motorola/CameraF/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_1

    .line 1678
    :cond_16
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 1680
    .restart local v22       #mUri:Landroid/net/Uri;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/16 v4, 0x10

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$4500(Lcom/motorola/CameraF/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v19

    .line 1682
    .restart local v19       #inputStream:Ljava/io/InputStream;
    if-eqz v19, :cond_17

    .line 1683
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v4, v0

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 1684
    .restart local v26       #tBitmap:Landroid/graphics/Bitmap;
    if-eqz v26, :cond_17

    .line 1685
    const/16 v3, 0x60

    const/16 v4, 0x60

    move-object/from16 v0, v26

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1688
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1699
    .end local v19           #inputStream:Ljava/io/InputStream;
    .end local v26           #tBitmap:Landroid/graphics/Bitmap;
    :cond_17
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    #setter for: Lcom/motorola/CameraF/Camcorder;->mThumbnailOrientation:I
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camcorder;->access$202(Lcom/motorola/CameraF/Camcorder;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 1700
    :catch_3
    move-exception v3

    move-object v14, v3

    .line 1701
    .restart local v14       #ex:Ljava/lang/Exception;
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread() - imageCursor.getInt failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1691
    .end local v14           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v3

    move-object v13, v3

    .line 1693
    .restart local v13       #e:Ljava/io/FileNotFoundException;
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 1707
    .end local v11           #displayName:Ljava/lang/String;
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .end local v22           #mUri:Landroid/net/Uri;
    .end local v24           #miniThumbValue:Ljava/lang/Long;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1709
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_19

    .line 1710
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread() - video was last taken"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_19
    move-object/from16 v0, v28

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1716
    .restart local v11       #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$4500(Lcom/motorola/CameraF/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_1

    .line 1726
    .end local v10           #dateTakenInd:I
    .end local v11           #displayName:Ljava/lang/String;
    .end local v12           #displayNameIndex:I
    .end local v17           #imageDateTaken:J
    .end local v23           #miniThumbInd:I
    .end local v25           #orientationInd:I
    .end local v29           #videoDateTaken:J
    :cond_1a
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1b

    .line 1727
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread() - one of the cursors is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    :cond_1b
    if-eqz v28, :cond_1c

    .line 1734
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1735
    const/16 v28, 0x0

    .line 1737
    :cond_1c
    if-eqz v16, :cond_5

    .line 1739
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1740
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1748
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->genVideoThumbnail:Z

    move v3, v0

    if-eqz v3, :cond_1f

    .line 1750
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1e

    .line 1751
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailRunnable - review time = 0, create the video thumbnail first, and set bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    #calls: Lcom/motorola/CameraF/Camcorder;->recycleVideoFrameBitmap()V
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$4600(Lcom/motorola/CameraF/Camcorder;)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v4, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mLastValidFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/CameraF/Camcorder;->access$4700(Lcom/motorola/CameraF/Camcorder;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/motorola/CameraF/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    iget-object v3, v3, Lcom/motorola/CameraF/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->data:Landroid/graphics/Bitmap;

    .line 1761
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/16 v4, 0x10

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Lcom/motorola/CameraF/Camcorder;->mThumbnailOrientation:I
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camcorder;->access$202(Lcom/motorola/CameraF/Camcorder;I)I

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mController:Lcom/motorola/CameraF/View/Control/OnScreenController;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$300(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/View/Control/OnScreenController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Control/OnScreenController;->getThumbImageView()Landroid/widget/ImageButton;

    move-result-object v27

    .line 1765
    .local v27, tempImageView:Landroid/widget/ImageButton;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v31

    .line 1766
    .local v31, width:I
    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v15

    .line 1768
    .local v15, height:I
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_20

    .line 1769
    const-string v3, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateThumbnailRunnable - tempImageView measured width x height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_20
    monitor-enter p0

    .line 1772
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->isInterrupted()Z

    move-result v20

    .line 1773
    if-nez v20, :cond_22

    .line 1775
    if-eqz v31, :cond_21

    if-nez v15, :cond_23

    .line 1776
    :cond_21
    const/4 v9, 0x0

    .line 1783
    :cond_22
    :goto_6
    monitor-exit p0

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 1778
    :cond_23
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->data:Landroid/graphics/Bitmap;

    move-object v3, v0

    const/4 v4, 0x6

    sub-int v4, v31, v4

    const/4 v5, 0x6

    sub-int v5, v15, v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v9

    goto :goto_6

    .line 1798
    .end local v15           #height:I
    .end local v27           #tempImageView:Landroid/widget/ImageButton;
    .end local v31           #width:I
    :cond_24
    if-nez v9, :cond_25

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    iget-object v3, v3, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_25

    .line 1799
    monitor-exit p0

    goto/16 :goto_3

    .line 1811
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 1801
    :cond_25
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    iget-object v3, v3, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    iget-object v3, v3, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_26

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    iget-object v3, v3, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1804
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    iput-object v9, v3, Lcom/motorola/CameraF/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1805
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_27

    .line 1806
    const-string v3, "MotoCamcorder"

    const-string v4, "UpdateThumbnailThread() - send UPDATE_THUMBNAIL message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camcorder;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x48

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1810
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->mDone:Z

    .line 1811
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3
.end method
