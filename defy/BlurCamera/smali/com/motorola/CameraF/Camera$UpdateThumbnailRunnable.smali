.class final Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateThumbnailRunnable"
.end annotation


# instance fields
.field private data:[B

.field options:Landroid/graphics/BitmapFactory$Options;

.field rotationMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/CameraF/Camera;[B)V
    .locals 1
    .parameter
    .parameter "data"

    .prologue
    .line 3852
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    .line 3853
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3846
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    .line 3849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->rotationMatrix:Landroid/graphics/Matrix;

    .line 3854
    iput-object p2, p0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->data:[B

    .line 3855
    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 3860
    const/4 v9, 0x0

    .line 3861
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const/16 v19, 0x0

    .line 3863
    .local v19, interrupted:Z
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 3864
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread - Running..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->data:[B

    move-object v3, v0

    if-nez v3, :cond_1d

    .line 3871
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    .line 3872
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread - no data passed in, trying to get from DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    :cond_1
    const/4 v15, 0x0

    .line 3875
    .local v15, imageCursor:Landroid/database/Cursor;
    const/16 v26, 0x0

    .line 3880
    .local v26, videoCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;

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

    move-result-object v15

    .line 3886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;

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

    move-result-object v26

    .line 3924
    :goto_0
    if-eqz v15, :cond_1a

    if-eqz v26, :cond_1a

    .line 3926
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    .line 3927
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread() - valid cursors"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3933
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3936
    const-string v3, "datetaken"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3937
    .local v10, dateTakenInd:I
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3938
    .local v12, displayNameIndex:I
    const-string v3, "orientation"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 3939
    .local v24, orientationInd:I
    const-string v3, "mini_thumb_magic"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 3943
    .local v22, miniThumbInd:I
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_d

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_d

    .line 3945
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    .line 3946
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread() - both cursors empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3949
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$4600(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$4600(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$4600(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 3952
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$4602(Lcom/motorola/CameraF/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3954
    const/4 v9, 0x0

    .line 4078
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4079
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4137
    .end local v10           #dateTakenInd:I
    .end local v12           #displayNameIndex:I
    .end local v15           #imageCursor:Landroid/database/Cursor;
    .end local v22           #miniThumbInd:I
    .end local v24           #orientationInd:I
    .end local v26           #videoCursor:Landroid/database/Cursor;
    :cond_5
    :goto_2
    monitor-enter p0

    .line 4138
    if-nez v19, :cond_6

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4139
    :cond_6
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_7

    .line 4140
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    :cond_7
    if-eqz v9, :cond_8

    .line 4142
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 4144
    :cond_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4163
    :goto_3
    return-void

    .line 3891
    .restart local v15       #imageCursor:Landroid/database/Cursor;
    .restart local v26       #videoCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v3

    move-object/from16 v20, v3

    .line 3893
    .local v20, ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v15, :cond_9

    .line 3895
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3896
    const/4 v15, 0x0

    .line 3899
    :cond_9
    if-eqz v26, :cond_a

    .line 3901
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 3902
    const/16 v26, 0x0

    .line 3905
    :cond_a
    const-string v3, "MotoCamera"

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3907
    .end local v20           #ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v3

    move-object v14, v3

    .line 3909
    .local v14, ex:Ljava/lang/Exception;
    if-eqz v15, :cond_b

    .line 3911
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3912
    const/4 v15, 0x0

    .line 3915
    :cond_b
    if-eqz v26, :cond_c

    .line 3917
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 3918
    const/16 v26, 0x0

    .line 3921
    :cond_c
    const-string v3, "MotoCamera"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3957
    .end local v14           #ex:Ljava/lang/Exception;
    .restart local v10       #dateTakenInd:I
    .restart local v12       #displayNameIndex:I
    .restart local v22       #miniThumbInd:I
    .restart local v24       #orientationInd:I
    :cond_d
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_11

    .line 3959
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_e

    .line 3960
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread() - imageCursor has elements"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    :cond_e
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3966
    .local v11, displayName:Ljava/lang/String;
    move-object v0, v15

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 3968
    .local v23, miniThumbValue:Ljava/lang/Long;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_10

    .line 3970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3997
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    move-object v0, v15

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    #setter for: Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$4702(Lcom/motorola/CameraF/Camera;I)I

    goto/16 :goto_1

    .line 3976
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/16 v4, 0x10

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3977
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 3979
    .local v21, mUri:Landroid/net/Uri;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 3980
    .local v18, inputStream:Ljava/io/InputStream;
    if-eqz v18, :cond_f

    .line 3981
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 3982
    .local v25, tBitmap:Landroid/graphics/Bitmap;
    if-eqz v25, :cond_f

    .line 3983
    const/16 v3, 0x60

    const/16 v4, 0x60

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3986
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 3989
    .end local v18           #inputStream:Ljava/io/InputStream;
    .end local v25           #tBitmap:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v3

    move-object v13, v3

    .line 3991
    .local v13, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 3999
    .end local v11           #displayName:Ljava/lang/String;
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .end local v21           #mUri:Landroid/net/Uri;
    .end local v23           #miniThumbValue:Ljava/lang/Long;
    :cond_11
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_13

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_13

    .line 4001
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_12

    .line 4002
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread() - videoCursor has elements"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4005
    move-object/from16 v0, v26

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4008
    .restart local v11       #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 4009
    goto/16 :goto_1

    .line 4012
    .end local v11           #displayName:Ljava/lang/String;
    :cond_13
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_14

    .line 4013
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread() - both cursors have elements"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    :cond_14
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 4016
    .local v16, imageDateTaken:J
    move-object/from16 v0, v26

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 4018
    .local v27, videoDateTaken:J
    cmp-long v3, v16, v27

    if-lez v3, :cond_18

    .line 4021
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_15

    .line 4022
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread() - image was last taken"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    :cond_15
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4027
    .restart local v11       #displayName:Ljava/lang/String;
    move-object v0, v15

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 4029
    .restart local v23       #miniThumbValue:Ljava/lang/Long;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_16

    .line 4031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_1

    .line 4038
    :cond_16
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 4040
    .restart local v21       #mUri:Landroid/net/Uri;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/16 v4, 0x10

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 4042
    .restart local v18       #inputStream:Ljava/io/InputStream;
    if-eqz v18, :cond_17

    .line 4043
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 4044
    .restart local v25       #tBitmap:Landroid/graphics/Bitmap;
    if-eqz v25, :cond_17

    .line 4045
    const/16 v3, 0x60

    const/16 v4, 0x60

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 4046
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 4056
    .end local v18           #inputStream:Ljava/io/InputStream;
    .end local v25           #tBitmap:Landroid/graphics/Bitmap;
    :cond_17
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    move-object v0, v15

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    #setter for: Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$4702(Lcom/motorola/CameraF/Camera;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 4057
    :catch_3
    move-exception v3

    move-object v14, v3

    .line 4058
    .restart local v14       #ex:Ljava/lang/Exception;
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread() - imageCursor.getInt failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4049
    .end local v14           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v3

    move-object v13, v3

    .line 4051
    .restart local v13       #e:Ljava/io/FileNotFoundException;
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 4064
    .end local v11           #displayName:Ljava/lang/String;
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .end local v21           #mUri:Landroid/net/Uri;
    .end local v23           #miniThumbValue:Ljava/lang/Long;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4066
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_19

    .line 4067
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread() - video was last taken"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    :cond_19
    move-object/from16 v0, v26

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4073
    .restart local v11       #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_1

    .line 4083
    .end local v10           #dateTakenInd:I
    .end local v11           #displayName:Ljava/lang/String;
    .end local v12           #displayNameIndex:I
    .end local v16           #imageDateTaken:J
    .end local v22           #miniThumbInd:I
    .end local v24           #orientationInd:I
    .end local v27           #videoDateTaken:J
    :cond_1a
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1b

    .line 4084
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread() - one of the cursors is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4089
    :cond_1b
    if-eqz v26, :cond_1c

    .line 4091
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4092
    const/16 v26, 0x0

    .line 4094
    :cond_1c
    if-eqz v15, :cond_5

    .line 4096
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 4105
    .end local v15           #imageCursor:Landroid/database/Cursor;
    .end local v26           #videoCursor:Landroid/database/Cursor;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v3, v0

    const/16 v4, 0x10

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v4, v0

    iget v4, v4, Lcom/motorola/CameraF/Camera;->mLastOrientation:I

    #setter for: Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$4702(Lcom/motorola/CameraF/Camera;I)I

    .line 4113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v4, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I
    invoke-static {v4}, Lcom/motorola/CameraF/Camera;->access$4700(Lcom/motorola/CameraF/Camera;)I

    move-result v4

    invoke-static {v4}, Lcom/motorola/CameraF/ImageManager;->roundOrientation(I)I

    move-result v4

    #setter for: Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$4702(Lcom/motorola/CameraF/Camera;I)I

    .line 4114
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1e

    .line 4115
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateThumbnailThread - orientation is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v5, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I
    invoke-static {v5}, Lcom/motorola/CameraF/Camera;->access$4700(Lcom/motorola/CameraF/Camera;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/motorola/CameraF/Camera;->mIsRotatorClosed:Z

    if-eqz v3, :cond_1f

    .line 4119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    const/16 v4, 0x5a

    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$4712(Lcom/motorola/CameraF/Camera;I)I

    .line 4122
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$4700(Lcom/motorola/CameraF/Camera;)I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mThumbnailOrientation:I
    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$4702(Lcom/motorola/CameraF/Camera;I)I

    .line 4125
    :goto_6
    monitor-enter p0

    .line 4126
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->isInterrupted()Z

    move-result v19

    .line 4127
    if-nez v19, :cond_20

    .line 4129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->data:[B

    move-object v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->data:[B

    move-object v5, v0

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object v6, v0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 4130
    const/16 v3, 0x60

    const/16 v4, 0x60

    invoke-static {v9, v3, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 4132
    :cond_20
    monitor-exit p0

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 4123
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    const/16 v4, 0x5a

    invoke-static {v3, v4}, Lcom/motorola/CameraF/Camera;->access$4712(Lcom/motorola/CameraF/Camera;I)I

    goto :goto_6

    .line 4148
    :cond_22
    if-nez v9, :cond_23

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$4600(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 4149
    monitor-exit p0

    goto/16 :goto_3

    .line 4162
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 4152
    :cond_23
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$4600(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$4600(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_24

    .line 4153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$4600(Lcom/motorola/CameraF/Camera;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 4156
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #setter for: Lcom/motorola/CameraF/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v9}, Lcom/motorola/CameraF/Camera;->access$4602(Lcom/motorola/CameraF/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4157
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_25

    .line 4158
    const-string v3, "MotoCamera"

    const-string v4, "UpdateThumbnailThread() - send UPDATE_THUMBNAIL message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    move-object v3, v0

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x48

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4162
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3
.end method
