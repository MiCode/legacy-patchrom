.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 288
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 290
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 7
    .parameter "cr"
    .parameter "origId"
    .parameter "baseUri"
    .parameter "groupId"

    .prologue
    .line 348
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 351
    .local v1, cancelUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 353
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 356
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_0
    return-void

    .line 356
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "c"
    .parameter "baseUri"
    .parameter "cr"
    .parameter "options"

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 297
    .local v3, thumbUri:Landroid/net/Uri;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 298
    .local v1, thumbId:J
    const/4 v4, 0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 299
    .local p0, filePath:Ljava/lang/String;
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 300
    .end local v3           #thumbUri:Landroid/net/Uri;
    .local v1, thumbUri:Landroid/net/Uri;
    :try_start_1
    const-string/jumbo p0, "r"

    .end local p0           #filePath:Ljava/lang/String;
    invoke-virtual {p2, v1, p0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 311
    .local p1, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    .line 312
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p2, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    .end local p2
    move-result-object p0

    .line 324
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    move-object p1, v1

    .line 333
    .end local v1           #thumbUri:Landroid/net/Uri;
    .end local p3
    .local p1, thumbUri:Landroid/net/Uri;
    :goto_1
    return-object p0

    .line 325
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #thumbUri:Landroid/net/Uri;
    .local p1, baseUri:Landroid/net/Uri;
    .restart local p2
    .restart local p3
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p2, v3

    .end local v3           #thumbUri:Landroid/net/Uri;
    .local p2, thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .line 326
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    .local p1, ex:Ljava/io/FileNotFoundException;
    :goto_2
    const-string p3, "MediaStore"

    .end local p3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t open thumbnail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ex:Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    .line 332
    .end local p2           #thumbUri:Landroid/net/Uri;
    .local p1, thumbUri:Landroid/net/Uri;
    goto :goto_1

    .line 327
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #thumbUri:Landroid/net/Uri;
    .local p1, baseUri:Landroid/net/Uri;
    .local p2, cr:Landroid/content/ContentResolver;
    .restart local p3
    :catch_1
    move-exception p0

    move-object p1, p0

    move-object p2, v3

    .end local v3           #thumbUri:Landroid/net/Uri;
    .local p2, thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .line 328
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    .local p1, ex:Ljava/io/IOException;
    :goto_3
    const-string p3, "MediaStore"

    .end local p3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t open thumbnail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ex:Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    .line 332
    .end local p2           #thumbUri:Landroid/net/Uri;
    .local p1, thumbUri:Landroid/net/Uri;
    goto :goto_1

    .line 329
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #thumbUri:Landroid/net/Uri;
    .local p1, baseUri:Landroid/net/Uri;
    .local p2, cr:Landroid/content/ContentResolver;
    .restart local p3
    :catch_2
    move-exception p0

    move-object p1, p0

    move-object p2, v3

    .end local v3           #thumbUri:Landroid/net/Uri;
    .local p2, thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .line 330
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    .local p1, ex:Ljava/lang/OutOfMemoryError;
    :goto_4
    const-string p3, "MediaStore"

    .end local p3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to allocate memory for thumbnail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    .end local p2           #thumbUri:Landroid/net/Uri;
    .local p1, thumbUri:Landroid/net/Uri;
    goto :goto_1

    .line 329
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #thumbUri:Landroid/net/Uri;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .restart local p3
    :catch_3
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_4

    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .local p1, pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception p1

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    goto :goto_4

    .line 327
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    :catch_5
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_3

    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .restart local p1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_6
    move-exception p1

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    goto :goto_3

    .line 325
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    :catch_7
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .restart local p1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_8
    move-exception p1

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    goto/16 :goto_2

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .local p2, cr:Landroid/content/ContentResolver;
    :cond_0
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_0
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 30
    .parameter "cr"
    .parameter "origId"
    .parameter "groupId"
    .parameter "kind"
    .parameter "options"
    .parameter "baseUri"
    .parameter "isVideo"

    .prologue
    .line 376
    const/4 v13, 0x0

    .line 377
    .local v13, bitmap:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 380
    .local v12, filePath:Ljava/lang/String;
    const/16 v21, 0x0

    .line 381
    .local v21, saveMini:Z
    const/16 v23, 0x0

    .line 382
    .local v23, thumbUri:Landroid/net/Uri;
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "thumbnails"

    const-string/jumbo v7, "media"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 391
    .local v6, uri:Landroid/net/Uri;
    invoke-static/range {p7 .. p7}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v22

    .line 400
    .local v22, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMagic(JLandroid/content/ContentResolver;)J

    move-result-wide v17

    .line 406
    .local v17, magic:J
    const-wide/16 v14, 0x0

    .line 407
    .local v14, mini_thumb_magic:J
    const/4 v11, 0x0

    .line 409
    .local v11, c0:Landroid/database/Cursor;
    const/4 v5, 0x2

    :try_start_0
    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "mini_thumb_magic"

    aput-object v8, v7, v5

    const/4 v5, 0x1

    const-string v8, "_data"

    aput-object v8, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 410
    .end local v11           #c0:Landroid/database/Cursor;
    .local v5, c0:Landroid/database/Cursor;
    if-eqz v5, :cond_26

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 411
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_26

    move-result-wide v8

    .line 412
    .end local v14           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    const/4 v7, 0x1

    :try_start_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_27

    move-result-object v7

    .line 417
    .end local v12           #filePath:Ljava/lang/String;
    .local v7, filePath:Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_25

    .line 418
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v15, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .local v15, c0:Landroid/database/Cursor;
    move-wide/from16 v19, v8

    .end local v8           #mini_thumb_magic:J
    .local v19, mini_thumb_magic:J
    move-object/from16 v16, v7

    .line 421
    .end local v7           #filePath:Ljava/lang/String;
    .local v16, filePath:Ljava/lang/String;
    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v5, v17, v7

    if-eqz v5, :cond_22

    cmp-long v5, v17, v19

    if-nez v5, :cond_22

    .line 424
    const/4 v5, 0x3

    move/from16 v0, p5

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 425
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .end local p3
    monitor-enter p3

    .line 426
    :try_start_3
    sget-object p4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez p4, :cond_0

    .line 427
    const/16 p4, 0x2710

    move/from16 v0, p4

    new-array v0, v0, [B

    move-object/from16 p4, v0

    sput-object p4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 436
    :cond_0
    sget-object p4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[BLandroid/content/ContentResolver;)[B

    move-result-object p0

    .end local p0
    if-eqz p0, :cond_23

    .line 439
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/16 p1, 0x0

    sget-object p2, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local p1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p2, v0

    invoke-static/range {p0 .. p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object p0

    .line 440
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    if-nez p0, :cond_1

    .line 441
    :try_start_4
    const-string p1, "MediaStore"

    const-string p2, "couldn\'t decode byte array."

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_1
    :goto_2
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_16

    move-object/from16 p1, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-wide/from16 p5, v19

    .end local v19           #mini_thumb_magic:J
    .end local p6
    .local p5, mini_thumb_magic:J
    move-wide/from16 p3, v17

    .end local v17           #magic:J
    .local p3, magic:J
    move-object/from16 p8, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move/from16 p7, v21

    .end local v21           #saveMini:Z
    .local p7, saveMini:Z
    move-object/from16 p2, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    move-object/from16 v5, p0

    .line 612
    .end local v6           #uri:Landroid/net/Uri;
    :goto_3
    return-object v5

    .line 414
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v11       #c0:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    .local p5, kind:I
    .restart local p6
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catch_0
    move-exception v5

    move-object v7, v5

    move-wide v8, v14

    .end local v14           #mini_thumb_magic:J
    .restart local v8       #mini_thumb_magic:J
    move-object v5, v11

    .line 415
    .end local v11           #c0:Landroid/database/Cursor;
    .restart local v5       #c0:Landroid/database/Cursor;
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :goto_4
    :try_start_5
    const-string v10, "MediaStore"

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_18

    .line 417
    if-eqz v5, :cond_24

    .line 418
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v15, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    move-wide/from16 v19, v8

    .end local v8           #mini_thumb_magic:J
    .restart local v19       #mini_thumb_magic:J
    move-object/from16 v16, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local v16       #filePath:Ljava/lang/String;
    goto :goto_1

    .line 417
    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .restart local v11       #c0:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v14       #mini_thumb_magic:J
    :catchall_0
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v14

    .end local v14           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 p0, v11

    .end local v11           #c0:Landroid/database/Cursor;
    .end local p3           #groupId:J
    .local p0, c0:Landroid/database/Cursor;
    :goto_5
    if-eqz p0, :cond_2

    .line 418
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p3

    .line 444
    .end local v12           #filePath:Ljava/lang/String;
    .end local p0           #c0:Landroid/database/Cursor;
    .end local p1           #mini_thumb_magic:J
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #mini_thumb_magic:J
    :catchall_1
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v13

    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_6
    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_16

    throw p1

    .line 446
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #groupId:J
    :cond_3
    const/4 v5, 0x1

    move/from16 v0, p5

    move v1, v5

    if-ne v0, v1, :cond_22

    .line 447
    if-eqz p8, :cond_5

    const-string/jumbo v5, "video_id="

    move-object v7, v5

    .line 448
    .local v7, column:Ljava/lang/String;
    :goto_7
    const/4 v5, 0x0

    .line 450
    .local v5, c:Landroid/database/Cursor;
    :try_start_7
    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .end local v7           #column:Ljava/lang/String;
    move-object v0, v7

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p7

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v7

    .line 451
    .end local v5           #c:Landroid/database/Cursor;
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 452
    move-object v0, v7

    move-object/from16 v1, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_15

    move-result-object v5

    .line 453
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_7

    .line 458
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object/from16 p1, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-wide/from16 p5, v19

    .end local v19           #mini_thumb_magic:J
    .end local p6
    .local p5, mini_thumb_magic:J
    move-wide/from16 p3, v17

    .end local v17           #magic:J
    .local p3, magic:J
    move-object/from16 p8, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move/from16 p7, v21

    .end local v21           #saveMini:Z
    .local p7, saveMini:Z
    move-object/from16 p2, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_3

    .line 447
    .end local v7           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    .local p5, kind:I
    .restart local p6
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :cond_5
    const-string v5, "image_id="

    move-object v7, v5

    goto :goto_7

    .restart local v7       #c:Landroid/database/Cursor;
    :cond_6
    move-object v5, v13

    .line 458
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 463
    .end local v7           #c:Landroid/database/Cursor;
    :cond_8
    :goto_8
    const/4 v13, 0x0

    .line 465
    .local v13, c:Landroid/database/Cursor;
    :try_start_9
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "blocking"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string/jumbo v8, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .end local p3           #groupId:J
    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 468
    .local v8, blockingUri:Landroid/net/Uri;
    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    move-result-object p4

    .line 470
    .end local v13           #c:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    if-nez p4, :cond_b

    const/16 p0, 0x0

    .line 610
    .end local p0           #cr:Landroid/content/ContentResolver;
    if-eqz p4, :cond_9

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object/from16 p1, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-wide/from16 p5, v19

    .end local v19           #mini_thumb_magic:J
    .end local p6
    .local p5, mini_thumb_magic:J
    move-wide/from16 p3, v17

    .end local v17           #magic:J
    .end local p4           #c:Landroid/database/Cursor;
    .local p3, magic:J
    move-object/from16 p8, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move/from16 p7, v21

    .end local v21           #saveMini:Z
    .local p7, saveMini:Z
    move-object/from16 p2, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 v24, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local v24, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, p0

    move-object/from16 p0, v24

    .end local v24           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 458
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p2           #filePath:Ljava/lang/String;
    .local v5, c:Landroid/database/Cursor;
    .local v13, bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    .local p5, kind:I
    .restart local p6
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_2
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v5

    .end local v5           #c:Landroid/database/Cursor;
    .end local p1           #origId:J
    .local p0, c:Landroid/database/Cursor;
    :goto_9
    if-eqz p0, :cond_a

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_a
    throw p1

    .line 473
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local p3           #groupId:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    :cond_b
    const/16 p3, 0x3

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_10

    .line 500
    const/16 p3, 0x2

    :try_start_a
    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/String;

    move-object v11, v0

    const/16 p3, 0x0

    const-string/jumbo p6, "mini_thumb_magic"

    .end local p6
    aput-object p6, v11, p3

    const/16 p3, 0x1

    const-string p6, "_data"

    aput-object p6, v11, p3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object v10, v6

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object p3

    .line 501
    .end local v15           #c0:Landroid/database/Cursor;
    .local p3, c0:Landroid/database/Cursor;
    if-eqz p3, :cond_21

    :try_start_b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p6

    if-eqz p6, :cond_21

    .line 502
    const/16 p6, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_24

    move-result-wide v6

    .line 503
    .end local v19           #mini_thumb_magic:J
    .local v6, mini_thumb_magic:J
    const/16 p6, 0x1

    :try_start_c
    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_25

    move-result-object p6

    .line 508
    .end local v16           #filePath:Ljava/lang/String;
    .local p6, filePath:Ljava/lang/String;
    :goto_a
    if-eqz p3, :cond_20

    .line 509
    :try_start_d
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    move-wide v8, v6

    .end local v6           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    move-object/from16 p7, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    move-object/from16 p6, p3

    .line 512
    .end local p3           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    :goto_b
    const-wide/16 v6, 0x0

    cmp-long p3, v8, v6

    if-eqz p3, :cond_1e

    .line 513
    :try_start_e
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMagic(JLandroid/content/ContentResolver;)J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_20
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    move-result-wide v6

    .line 514
    .end local v17           #magic:J
    .local v6, magic:J
    cmp-long p3, v6, v8

    if-nez p3, :cond_1d

    .line 515
    :try_start_f
    sget-object v10, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 516
    :try_start_10
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez p3, :cond_c

    .line 517
    const/16 p3, 0x2710

    move/from16 v0, p3

    new-array v0, v0, [B

    move-object/from16 p3, v0

    sput-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 519
    :cond_c
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[BLandroid/content/ContentResolver;)[B

    move-result-object p3

    if-eqz p3, :cond_1c

    .line 520
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v11, 0x0

    sget-object v12, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v12, v12

    move-object/from16 v0, p3

    move v1, v11

    move v2, v12

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-result-object p3

    .line 521
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_d

    .line 522
    :try_start_11
    const-string v5, "MediaStore"

    const-string v11, "couldn\'t decode byte array."

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_d
    :goto_c
    monitor-exit v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v10, thumbUri:Landroid/net/Uri;
    move-wide/from16 v24, v6

    .end local v6           #magic:J
    .local v24, magic:J
    move-wide/from16 v5, v24

    .end local v24           #magic:J
    .local v5, magic:J
    move-wide/from16 v26, v8

    .end local v8           #mini_thumb_magic:J
    .local v26, mini_thumb_magic:J
    move-wide/from16 v7, v26

    .end local v26           #mini_thumb_magic:J
    .local v7, mini_thumb_magic:J
    move/from16 v9, v21

    .line 552
    .end local v21           #saveMini:Z
    .local v9, saveMini:Z
    :goto_d
    if-nez p3, :cond_19

    .line 553
    :try_start_12
    const-string v11, "MediaStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Create the thumbnail in memory: origId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #origId:J
    const-string p2, ", kind="

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", isVideo="

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_23
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_11

    .line 576
    if-nez p7, :cond_12

    .line 577
    const/16 p0, 0x0

    .line 610
    .end local p0           #cr:Landroid/content/ContentResolver;
    if-eqz p4, :cond_e

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    :cond_e
    move-object/from16 p1, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-object/from16 p8, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move-object/from16 p2, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-wide/from16 p5, v7

    .end local v7           #mini_thumb_magic:J
    .local p5, mini_thumb_magic:J
    move/from16 p7, v9

    .end local v9           #saveMini:Z
    .local p7, saveMini:Z
    move-wide/from16 v24, v5

    .end local v5           #magic:J
    .restart local v24       #magic:J
    move-object/from16 v5, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 p3, v24

    .end local v24           #magic:J
    .end local p4           #c:Landroid/database/Cursor;
    .local p3, magic:J
    goto/16 :goto_3

    .line 505
    .end local p2           #filePath:Ljava/lang/String;
    .end local p3           #magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catch_1
    move-exception p3

    move-object/from16 p6, p3

    move-wide/from16 v6, v19

    .end local v19           #mini_thumb_magic:J
    .local v6, mini_thumb_magic:J
    move-object/from16 p3, v15

    .line 506
    .end local v15           #c0:Landroid/database/Cursor;
    .local p3, c0:Landroid/database/Cursor;
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    :goto_e
    :try_start_13
    const-string p7, "MediaStore"

    .end local p7           #baseUri:Landroid/net/Uri;
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_14

    .line 508
    if-eqz p3, :cond_1f

    .line 509
    :try_start_14
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    move-object/from16 p6, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    move-wide v8, v6

    .end local v6           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    move-object/from16 p7, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    goto/16 :goto_b

    .line 508
    .end local p6           #c0:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #mini_thumb_magic:J
    .local p7, baseUri:Landroid/net/Uri;
    :catchall_3
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v19

    .end local v19           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 p0, v15

    .end local v6           #uri:Landroid/net/Uri;
    .end local v15           #c0:Landroid/database/Cursor;
    .end local p7           #baseUri:Landroid/net/Uri;
    .local p0, c0:Landroid/database/Cursor;
    :goto_f
    if-eqz p0, :cond_f

    .line 509
    :try_start_15
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_f
    throw p3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 603
    :catch_2
    move-exception p3

    move-wide/from16 p7, p1

    .end local p1           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p2, p0

    .end local p0           #c0:Landroid/database/Cursor;
    .local p2, c0:Landroid/database/Cursor;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .line 604
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    .local p3, ex:Landroid/database/sqlite/SQLiteException;
    :goto_10
    :try_start_16
    const-string v7, "MediaStore"

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    .line 610
    if-eqz p1, :cond_17

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 v24, p5

    .end local p5           #magic:J
    .restart local v24       #magic:J
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    move/from16 v26, v5

    .end local v5           #saveMini:Z
    .local v26, saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-wide/from16 v27, p7

    .end local p7           #mini_thumb_magic:J
    .local v27, mini_thumb_magic:J
    move-wide/from16 p6, v27

    .end local v27           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v26

    .end local v26           #saveMini:Z
    .local p8, saveMini:Z
    :goto_11
    move-object/from16 p1, p2

    .end local p2           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    move-wide/from16 v24, p4

    .end local p4           #magic:J
    .restart local v24       #magic:J
    move-wide/from16 p3, v24

    .end local v24           #magic:J
    .local p3, magic:J
    move-object/from16 v26, v5

    .end local v5           #thumbUri:Landroid/net/Uri;
    .local v26, thumbUri:Landroid/net/Uri;
    move-object/from16 v5, p0

    move/from16 v27, p8

    .end local p8           #saveMini:Z
    .local v27, saveMini:Z
    move-object/from16 p8, v26

    .end local v26           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move-wide/from16 v28, p6

    .end local p6           #mini_thumb_magic:J
    .local v28, mini_thumb_magic:J
    move-wide/from16 p5, v28

    .end local v28           #mini_thumb_magic:J
    .local p5, mini_thumb_magic:J
    move/from16 p7, v27

    .line 612
    .end local v27           #saveMini:Z
    .local p7, saveMini:Z
    goto/16 :goto_3

    .line 525
    .end local p2           #filePath:Ljava/lang/String;
    .end local p3           #magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .local v8, mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_4
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #origId:J
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_12
    :try_start_17
    monitor-exit v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_12

    :try_start_18
    throw p1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e

    .line 603
    :catch_3
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .local p2, c0:Landroid/database/Cursor;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto :goto_10

    .line 530
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :cond_10
    const/16 p3, 0x1

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_11

    .line 531
    :try_start_19
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 532
    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f

    move-result-object p3

    .line 535
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    const-wide/16 v5, 0x0

    cmp-long p6, v19, v5

    if-nez p6, :cond_1a

    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    if-nez p3, :cond_1a

    .line 540
    const/16 p6, 0x0

    :try_start_1a
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 541
    .end local v6           #uri:Landroid/net/Uri;
    .local v5, thumbId:J
    move-object/from16 v0, p7

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10

    move-result-object p7

    .line 542
    .end local v23           #thumbUri:Landroid/net/Uri;
    .local p7, thumbUri:Landroid/net/Uri;
    const/16 p6, 0x1

    .end local v21           #saveMini:Z
    .local p6, saveMini:Z
    move-wide/from16 v7, v19

    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local v19           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    move-wide/from16 v5, v17

    .end local v17           #magic:J
    .local v5, magic:J
    move-object/from16 v10, p7

    .end local p7           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move/from16 v9, p6

    .end local p6           #saveMini:Z
    .restart local v9       #saveMini:Z
    move-object/from16 p6, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    move-object/from16 p7, v16

    .line 543
    .end local v16           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    goto/16 :goto_d

    .line 548
    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_11
    :try_start_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #cr:Landroid/content/ContentResolver;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #origId:J
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported kind: "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_19
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f

    .line 603
    :catch_4
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_10

    .line 579
    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :cond_12
    if-eqz p8, :cond_13

    .line 580
    :try_start_1c
    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11

    move-result-object p0

    .line 610
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .end local p5           #kind:I
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_13
    if-eqz p4, :cond_18

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v9

    .end local v9           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 p6, v7

    .end local v7           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-wide/from16 p4, v5

    .end local v5           #magic:J
    .local p4, magic:J
    move-object v5, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto/16 :goto_11

    .line 582
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :cond_13
    :try_start_1d
    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_11

    move-result-object p1

    .line 583
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_15

    .line 584
    if-eqz v9, :cond_15

    .line 585
    :try_start_1e
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    .line 586
    .local p2, thumbOut:Ljava/io/OutputStream;
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/16 p3, 0x55

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 587
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/io/FileOutputStream;

    move/from16 p0, v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_1c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_12

    if-eqz p0, :cond_14

    .line 589
    :try_start_1f
    move-object/from16 v0, p2

    check-cast v0, Ljava/io/FileOutputStream;

    move-object/from16 p3, v0

    invoke-virtual/range {p3 .. p3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_1c
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_12

    .line 594
    .end local p5           #kind:I
    :cond_14
    :goto_14
    if-eqz p2, :cond_15

    .line 595
    :try_start_20
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    .end local p2           #thumbOut:Ljava/io/OutputStream;
    :cond_15
    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_13

    .line 590
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p1       #bitmap:Landroid/graphics/Bitmap;
    .restart local p2       #thumbOut:Ljava/io/OutputStream;
    .restart local p5       #kind:I
    :catch_5
    move-exception p0

    .line 591
    .local p0, t:Ljava/lang/Throwable;
    const-string p3, "MediaStore"

    const-string p5, "Unable to sync thumbnail file"

    .end local p5           #kind:I
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_1c
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_12

    goto :goto_14

    .line 603
    .end local p0           #t:Ljava/lang/Throwable;
    .end local p2           #thumbOut:Ljava/io/OutputStream;
    :catch_6
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .local p2, c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .local p5, magic:J
    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_10

    .line 605
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p4           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v13, c:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_7
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p4       #filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .line 606
    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    .local p3, ex:Ljava/io/FileNotFoundException;
    :goto_15
    :try_start_21
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #ex:Ljava/io/FileNotFoundException;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    .line 610
    if-eqz p1, :cond_17

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 v24, p5

    .end local p5           #magic:J
    .restart local v24       #magic:J
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    move/from16 v26, v5

    .end local v5           #saveMini:Z
    .local v26, saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-wide/from16 v27, p7

    .end local p7           #mini_thumb_magic:J
    .local v27, mini_thumb_magic:J
    move-wide/from16 p6, v27

    .end local v27           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v26

    .end local v26           #saveMini:Z
    .local p8, saveMini:Z
    goto/16 :goto_11

    .line 607
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .end local p4           #magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catch_8
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .line 608
    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    .local p3, ex:Ljava/io/IOException;
    :goto_16
    :try_start_22
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #ex:Ljava/io/IOException;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    .line 610
    if-eqz p1, :cond_17

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 v24, p5

    .end local p5           #magic:J
    .restart local v24       #magic:J
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    move/from16 v26, v5

    .end local v5           #saveMini:Z
    .restart local v26       #saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-wide/from16 v27, p7

    .end local p7           #mini_thumb_magic:J
    .restart local v27       #mini_thumb_magic:J
    move-wide/from16 p6, v27

    .end local v27           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v26

    .end local v26           #saveMini:Z
    .local p8, saveMini:Z
    goto/16 :goto_11

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .end local p4           #magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_5
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p1, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p6, v19

    .end local v19           #mini_thumb_magic:J
    .end local p7           #baseUri:Landroid/net/Uri;
    .local p6, mini_thumb_magic:J
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .restart local p4       #magic:J
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v6           #uri:Landroid/net/Uri;
    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    :goto_17
    if-eqz p1, :cond_16

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v6

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, filePath:Ljava/lang/String;
    .restart local p7       #baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_6
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p3, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 p6, v6

    .end local v6           #mini_thumb_magic:J
    .end local p7           #baseUri:Landroid/net/Uri;
    .local p6, mini_thumb_magic:J
    move-object/from16 v6, p0

    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_17

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #mini_thumb_magic:J
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    .local p8, isVideo:Z
    :catchall_7
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p6, v6

    .end local v6           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 v6, p0

    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_17

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .end local p6           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, c0:Landroid/database/Cursor;
    .local p1, mini_thumb_magic:J
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p8, isVideo:Z
    :catchall_8
    move-exception p3

    move-object/from16 v6, p3

    move-wide/from16 p6, p1

    .end local p1           #mini_thumb_magic:J
    .restart local p6       #mini_thumb_magic:J
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p0

    .end local p0           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_17

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v8, mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_9
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p6, v8

    .end local v8           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_17

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_a
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p4, v6

    .end local v6           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-wide/from16 p6, v8

    .end local v8           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-object/from16 v6, p0

    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_17

    .end local v5           #thumbUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .restart local v6       #magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_b
    move-exception p1

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v5       #thumbUri:Landroid/net/Uri;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p6, v8

    .end local v8           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-object/from16 v24, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local v24, c:Landroid/database/Cursor;
    move-wide/from16 p4, v6

    .end local v6           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 v6, p1

    move-object/from16 p1, v24

    .end local v24           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    goto :goto_17

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_c
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p6, v19

    .end local v19           #mini_thumb_magic:J
    .end local p7           #baseUri:Landroid/net/Uri;
    .local p6, mini_thumb_magic:J
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto/16 :goto_17

    .end local v5           #thumbUri:Landroid/net/Uri;
    .end local v6           #uri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p6           #mini_thumb_magic:J
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .restart local p7       #baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_d
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p6, v19

    .end local v19           #mini_thumb_magic:J
    .end local p7           #baseUri:Landroid/net/Uri;
    .restart local p6       #mini_thumb_magic:J
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v5       #thumbUri:Landroid/net/Uri;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    goto/16 :goto_17

    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_e
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v9

    .end local v9           #saveMini:Z
    .local p8, saveMini:Z
    move-wide/from16 p4, v5

    .end local v5           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object v5, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-object/from16 v6, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 p6, v7

    .end local v7           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    goto/16 :goto_17

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_f
    move-exception p0

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v9

    .end local v9           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p6, v7

    .end local v7           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-wide/from16 v24, v5

    .end local v5           #magic:J
    .local v24, magic:J
    move-object v5, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-object/from16 v6, p0

    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    goto/16 :goto_17

    .end local p3           #filePath:Ljava/lang/String;
    .end local p6           #mini_thumb_magic:J
    .end local p8           #saveMini:Z
    .local v5, saveMini:Z
    .local v6, thumbUri:Landroid/net/Uri;
    .local p4, filePath:Ljava/lang/String;
    .local p5, magic:J
    .local p7, mini_thumb_magic:J
    :catchall_10
    move-exception p3

    move-object/from16 v24, p3

    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 v25, p7

    .end local p7           #mini_thumb_magic:J
    .local v25, mini_thumb_magic:J
    move/from16 p8, v5

    .end local v5           #saveMini:Z
    .restart local p8       #saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-object/from16 v6, v24

    move-wide/from16 v27, p5

    .end local p5           #magic:J
    .local v27, magic:J
    move-wide/from16 p4, v27

    .end local v27           #magic:J
    .local p4, magic:J
    move-wide/from16 p6, v25

    .end local v25           #mini_thumb_magic:J
    .restart local p6       #mini_thumb_magic:J
    goto/16 :goto_17

    .line 607
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, filePath:Ljava/lang/String;
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catch_9
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_16

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    .restart local p8       #isVideo:Z
    :catch_a
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #ex:Landroid/database/sqlite/SQLiteException;
    .local p5, magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_16

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, c0:Landroid/database/Cursor;
    .local p1, mini_thumb_magic:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p8       #isVideo:Z
    :catch_b
    move-exception p3

    move-wide/from16 p7, p1

    .end local p1           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-object/from16 p2, p0

    .end local p0           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_16

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v8, mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_c
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_16

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_d
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    goto/16 :goto_16

    .end local v5           #saveMini:Z
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_e
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_16

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_f
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_16

    .end local v5           #saveMini:Z
    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_10
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_16

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_11
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_16

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p5           #magic:J
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_12
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .restart local p5       #magic:J
    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_16

    .line 605
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, filePath:Ljava/lang/String;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_13
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_15

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    .restart local p8       #isVideo:Z
    :catch_14
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #ex:Landroid/database/sqlite/SQLiteException;
    .local p5, magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_15

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, c0:Landroid/database/Cursor;
    .local p1, mini_thumb_magic:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p8       #isVideo:Z
    :catch_15
    move-exception p3

    move-wide/from16 p7, p1

    .end local p1           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-object/from16 p2, p0

    .end local p0           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_15

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v8, mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_16
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_15

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_17
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    goto/16 :goto_15

    .end local v5           #saveMini:Z
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_18
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_15

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_19
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_15

    .end local v5           #saveMini:Z
    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_1a
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_15

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_1b
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_15

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p5           #magic:J
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_1c
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .restart local p5       #magic:J
    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_15

    .line 603
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p4           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_1d
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p4       #filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_10

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, filePath:Ljava/lang/String;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_1e
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_10

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    .restart local p8       #isVideo:Z
    :catch_1f
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #ex:Landroid/database/sqlite/SQLiteException;
    .local p5, magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_10

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v8, mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_20
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_10

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_21
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    goto/16 :goto_10

    .end local v5           #saveMini:Z
    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_22
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_10

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_23
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_10

    .line 525
    .end local v5           #saveMini:Z
    .end local p2           #c0:Landroid/database/Cursor;
    .local v6, magic:J
    .local v8, mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catchall_11
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_12

    .end local p1           #origId:J
    :catchall_12
    move-exception p1

    goto/16 :goto_12

    .line 508
    .end local p6           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p7, baseUri:Landroid/net/Uri;
    :catchall_13
    move-exception p0

    move-wide/from16 p1, v19

    .end local v19           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 v24, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .local v24, c0:Landroid/database/Cursor;
    move-object/from16 p3, p0

    move-object/from16 p0, v24

    .end local v24           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_f

    .end local p7           #baseUri:Landroid/net/Uri;
    .local v6, mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    :catchall_14
    move-exception p0

    move-wide/from16 p1, v6

    .end local v6           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 v24, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local v24       #c0:Landroid/database/Cursor;
    move-object/from16 p3, p0

    move-object/from16 p0, v24

    .end local v24           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_f

    .line 505
    .local v6, uri:Landroid/net/Uri;
    .restart local v19       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .restart local p7       #baseUri:Landroid/net/Uri;
    :catch_24
    move-exception p6

    move-wide/from16 v6, v19

    .end local v19           #mini_thumb_magic:J
    .local v6, mini_thumb_magic:J
    goto/16 :goto_e

    :catch_25
    move-exception p6

    goto/16 :goto_e

    .line 458
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p4           #c:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .local v7, c:Landroid/database/Cursor;
    .local v13, bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v19       #mini_thumb_magic:J
    .local p3, groupId:J
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    :catchall_15
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v7

    .end local v7           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_9

    .line 444
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #origId:J
    .end local p3           #groupId:J
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :catchall_16
    move-exception p1

    goto/16 :goto_6

    .line 417
    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .local v5, c0:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .restart local p3       #groupId:J
    :catchall_17
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v14

    .end local v14           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 p0, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_5

    .restart local v5       #c0:Landroid/database/Cursor;
    .local v8, mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    :catchall_18
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v8

    .end local v8           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 p0, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_5

    .line 414
    .restart local v5       #c0:Landroid/database/Cursor;
    .restart local v14       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    :catch_26
    move-exception v7

    move-wide v8, v14

    .end local v14           #mini_thumb_magic:J
    .restart local v8       #mini_thumb_magic:J
    goto/16 :goto_4

    :catch_27
    move-exception v7

    goto/16 :goto_4

    .end local v8           #mini_thumb_magic:J
    .end local v12           #filePath:Ljava/lang/String;
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local v17           #magic:J
    .end local v21           #saveMini:Z
    .end local v23           #thumbUri:Landroid/net/Uri;
    .end local p3           #groupId:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .end local p8           #isVideo:Z
    .local v5, saveMini:Z
    .local v6, thumbUri:Landroid/net/Uri;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .local p1, c:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    .local p4, filePath:Ljava/lang/String;
    .local p5, magic:J
    .local p7, mini_thumb_magic:J
    :cond_17
    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 v24, p5

    .end local p5           #magic:J
    .local v24, magic:J
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    move/from16 v26, v5

    .end local v5           #saveMini:Z
    .restart local v26       #saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-wide/from16 v27, p7

    .end local p7           #mini_thumb_magic:J
    .local v27, mini_thumb_magic:J
    move-wide/from16 p6, v27

    .end local v27           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v26

    .end local v26           #saveMini:Z
    .local p8, saveMini:Z
    goto/16 :goto_11

    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, magic:J
    .local v7, mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :cond_18
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v9

    .end local v9           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p6, v7

    .end local v7           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-wide/from16 p4, v5

    .end local v5           #magic:J
    .local p4, magic:J
    move-object v5, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto/16 :goto_11

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :cond_19
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_13

    .end local v5           #magic:J
    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p6           #c0:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_1a
    move-object/from16 p6, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p6       #c0:Landroid/database/Cursor;
    move-wide/from16 v7, v19

    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local v19           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    move-wide/from16 v5, v17

    .end local v6           #uri:Landroid/net/Uri;
    .end local v17           #magic:J
    .restart local v5       #magic:J
    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move/from16 v9, v21

    .end local v21           #saveMini:Z
    .restart local v9       #saveMini:Z
    move-object/from16 p7, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    goto/16 :goto_d

    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_1b
    move-object/from16 p6, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    move-wide/from16 v7, v19

    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local v19           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move/from16 v9, v21

    .end local v21           #saveMini:Z
    .restart local v9       #saveMini:Z
    move-object/from16 p7, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    move-object/from16 p3, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 v5, v17

    .end local v6           #uri:Landroid/net/Uri;
    .end local v17           #magic:J
    .local v5, magic:J
    goto/16 :goto_d

    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .local v8, mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    :cond_1c
    move-object/from16 p3, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_c

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    :cond_1d
    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move-object/from16 p3, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 v24, v8

    .end local v8           #mini_thumb_magic:J
    .local v24, mini_thumb_magic:J
    move/from16 v9, v21

    .end local v21           #saveMini:Z
    .restart local v9       #saveMini:Z
    move-wide/from16 v26, v6

    .end local v6           #magic:J
    .local v26, magic:J
    move-wide/from16 v5, v26

    .end local v26           #magic:J
    .local v5, magic:J
    move-wide/from16 v7, v24

    .end local v24           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    goto/16 :goto_d

    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    :cond_1e
    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move-object/from16 p3, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 v5, v17

    .end local v17           #magic:J
    .local v5, magic:J
    move-wide/from16 v24, v8

    .end local v8           #mini_thumb_magic:J
    .restart local v24       #mini_thumb_magic:J
    move-wide/from16 v7, v24

    .end local v24           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    move/from16 v9, v21

    .end local v21           #saveMini:Z
    .restart local v9       #saveMini:Z
    goto/16 :goto_d

    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p7           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p3, c0:Landroid/database/Cursor;
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    :cond_1f
    move-object/from16 p6, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    move-wide v8, v6

    .end local v6           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    move-object/from16 p7, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p7       #filePath:Ljava/lang/String;
    goto/16 :goto_b

    .restart local v6       #mini_thumb_magic:J
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p6, filePath:Ljava/lang/String;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_20
    move-wide v8, v6

    .end local v6           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    move-object/from16 p7, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    move-object/from16 p6, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    goto/16 :goto_b

    .end local p6           #c0:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #mini_thumb_magic:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_21
    move-wide/from16 v6, v19

    .end local v19           #mini_thumb_magic:J
    .local v6, mini_thumb_magic:J
    move-object/from16 p6, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p6, filePath:Ljava/lang/String;
    goto/16 :goto_a

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p4           #c:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #mini_thumb_magic:J
    .local p3, groupId:J
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    :cond_22
    move-object v5, v13

    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_8

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local p0           #cr:Landroid/content/ContentResolver;
    .end local p3           #groupId:J
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    :cond_23
    move-object/from16 p0, v13

    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .local v5, c0:Landroid/database/Cursor;
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    .local v8, mini_thumb_magic:J
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #groupId:J
    :cond_24
    move-object v15, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    move-wide/from16 v19, v8

    .end local v8           #mini_thumb_magic:J
    .restart local v19       #mini_thumb_magic:J
    move-object/from16 v16, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local v16       #filePath:Ljava/lang/String;
    goto/16 :goto_1

    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .restart local v5       #c0:Landroid/database/Cursor;
    .local v7, filePath:Ljava/lang/String;
    .restart local v8       #mini_thumb_magic:J
    :cond_25
    move-object v15, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    move-wide/from16 v19, v8

    .end local v8           #mini_thumb_magic:J
    .restart local v19       #mini_thumb_magic:J
    move-object/from16 v16, v7

    .end local v7           #filePath:Ljava/lang/String;
    .restart local v16       #filePath:Ljava/lang/String;
    goto/16 :goto_1

    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .restart local v5       #c0:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v14       #mini_thumb_magic:J
    :cond_26
    move-wide v8, v14

    .end local v14           #mini_thumb_magic:J
    .restart local v8       #mini_thumb_magic:J
    move-object v7, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local v7       #filePath:Ljava/lang/String;
    goto/16 :goto_0
.end method
