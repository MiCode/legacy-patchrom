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
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
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
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "orig_id"

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

    .local v1, cancelUri:Landroid/net/Uri;
    const/4 v6, 0x0

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

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "c"
    .parameter "baseUri"
    .parameter "cr"
    .parameter "options"

    .prologue
    const-string v11, "couldn\'t open thumbnail "

    const-string v10, "MediaStore"

    const-string v9, "; "

    const/4 v0, 0x0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .local v6, thumbUri:Landroid/net/Uri;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .local v4, thumbId:J
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, filePath:Ljava/lang/String;
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .local v3, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v4           #thumbId:J
    :goto_0
    return-object v0

    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v7, "MediaStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t open thumbnail "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .local v1, ex:Ljava/io/IOException;
    const-string v7, "MediaStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t open thumbnail "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v1, v7

    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const-string v7, "MediaStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to allocate memory for thumbnail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "cr"
    .parameter "origId"
    .parameter "groupId"
    .parameter "kind"
    .parameter "options"
    .parameter "baseUri"
    .parameter "isVideo"

    .prologue
    const/4 v10, 0x0

    .local v10, bitmap:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .local v12, filePath:Ljava/lang/String;
    invoke-static/range {p7 .. p7}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v16

    .local v16, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v13

    .local v13, magic:J
    const-wide/16 v4, 0x0

    cmp-long v4, v13, v4

    if-eqz v4, :cond_a

    const/4 v4, 0x3

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_5

    const/4 v4, 0x1

    move/from16 v0, p8

    move v1, v4

    if-ne v0, v1, :cond_3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .local v4, requestUri:Landroid/net/Uri;
    :goto_0
    const/4 v15, 0x0

    .local v15, magicMatch:Z
    const/4 v11, 0x0

    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    .end local v4           #requestUri:Landroid/net/Uri;
    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "mini_thumb_magic"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .end local v11           #c:Landroid/database/Cursor;
    .local v4, c:Landroid/database/Cursor;
    if-eqz v4, :cond_21

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    move-result-wide v5

    cmp-long v5, v5, v13

    if-nez v5, :cond_21

    const/4 v5, 0x1

    .end local v15           #magicMatch:Z
    .local v5, magicMatch:Z
    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v4, 0x1

    if-ne v5, v4, :cond_a

    .end local v4           #c:Landroid/database/Cursor;
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .end local p3
    monitor-enter p3

    :try_start_2
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local p0
    if-nez p0, :cond_1

    const/16 p0, 0x2710

    move/from16 v0, p0

    new-array v0, v0, [B

    move-object/from16 p0, v0

    sput-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    :cond_1
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object p0

    if-eqz p0, :cond_20

    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/16 p1, 0x0

    sget-object p2, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local p1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p2, v0

    invoke-static/range {p0 .. p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object p0

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    if-nez p0, :cond_2

    :try_start_3
    const-string p1, "MediaStore"

    const-string p2, "couldn\'t decode byte array."

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    move-object/from16 p1, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local v5           #magicMatch:Z
    .end local p6
    :goto_3
    return-object p2

    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3
    .restart local p6
    :cond_3
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v15       #magicMatch:Z
    :catchall_0
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .end local p1           #origId:J
    .local p0, c:Landroid/database/Cursor;
    :goto_4
    if-eqz p0, :cond_4

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1

    .end local v15           #magicMatch:Z
    .end local p0           #c:Landroid/database/Cursor;
    .end local p3
    .restart local v5       #magicMatch:Z
    :catchall_1
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_5
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    throw p1

    .end local v5           #magicMatch:Z
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .restart local p3
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_a

    if-eqz p8, :cond_7

    const-string v4, "video_id="

    .local v4, column:Ljava/lang/String;
    :goto_6
    const/4 v11, 0x0

    .restart local v11       #c:Landroid/database/Cursor;
    :try_start_5
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .end local v4           #column:Ljava/lang/String;
    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p7

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v5

    .end local v11           #c:Landroid/database/Cursor;
    .local v5, c:Landroid/database/Cursor;
    if-eqz v5, :cond_8

    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v0, v5

    move-object/from16 v1, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    move-result-object v4

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local v4, bitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_9

    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object/from16 p1, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p0, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p2, v4

    goto :goto_3

    .end local v5           #c:Landroid/database/Cursor;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    :cond_7
    const-string v4, "image_id="

    goto :goto_6

    .restart local v5       #c:Landroid/database/Cursor;
    :cond_8
    move-object v4, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    if-eqz v5, :cond_1f

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v10, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #c:Landroid/database/Cursor;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    :cond_a
    :goto_7
    const/4 v11, 0x0

    .restart local v11       #c:Landroid/database/Cursor;
    :try_start_7
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "blocking"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .end local p3
    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .local v5, blockingUri:Landroid/net/Uri;
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object p4

    .end local v11           #c:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    if-nez p4, :cond_d

    const/16 p0, 0x0

    .end local p0           #cr:Landroid/content/ContentResolver;
    if-eqz p4, :cond_b

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object/from16 p1, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p0

    move-object/from16 p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .end local v5           #blockingUri:Landroid/net/Uri;
    .end local p4           #c:Landroid/database/Cursor;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3
    :catchall_2
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .end local p1           #origId:J
    .local p0, c:Landroid/database/Cursor;
    :goto_8
    if-eqz p0, :cond_c

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_c
    throw p1

    .end local p3
    .restart local v5       #blockingUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    :cond_d
    const/16 p3, 0x3

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_14

    :try_start_8
    sget-object p6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .end local p6
    monitor-enter p6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez p3, :cond_e

    const/16 p3, 0x2710

    move/from16 v0, p3

    new-array v0, v0, [B

    move-object/from16 p3, v0

    sput-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    :cond_e
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object p3

    if-eqz p3, :cond_1e

    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local v5           #blockingUri:Landroid/net/Uri;
    array-length v5, v5

    move-object/from16 v0, p3

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object p3

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_f

    :try_start_a
    const-string v4, "MediaStore"

    const-string v5, "couldn\'t decode byte array."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_9
    monitor-exit p6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    :goto_a
    if-nez p3, :cond_1c

    :try_start_b
    const-string p6, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create the thumbnail in memory: origId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", kind="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isVideo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p6

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .end local p1           #origId:J
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "thumbnails"

    const-string p6, "media"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .local v7, uri:Landroid/net/Uri;
    if-nez v12, :cond_1b

    if-eqz p4, :cond_10

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    :cond_10
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_5

    move-result-object p0

    .end local p4           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_11

    :try_start_c
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_6

    move-result p1

    if-nez p1, :cond_16

    :cond_11
    const/16 p1, 0x0

    if-eqz p0, :cond_12

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_12
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p2, p1

    move-object/from16 p1, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    goto/16 :goto_3

    .end local v7           #uri:Landroid/net/Uri;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_3
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #origId:J
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_b
    :try_start_d
    monitor-exit p6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_4

    :catch_0
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    .local p2, ex:Landroid/database/sqlite/SQLiteException;
    :goto_c
    :try_start_f
    const-string p4, "MediaStore"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-eqz p1, :cond_1a

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p2, p3

    .end local p3           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    :cond_13
    :goto_d
    move-object/from16 p1, p2

    .end local p2           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p0

    goto/16 :goto_3

    .restart local v5       #blockingUri:Landroid/net/Uri;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    .restart local p6
    :cond_14
    const/16 p3, 0x1

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_15

    :try_start_10
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_1d

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_a

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    :cond_15
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
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_3

    .end local p6
    :catch_1
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_c

    .end local v5           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :cond_16
    const/16 p1, 0x1

    :try_start_11
    invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_6

    move-result-object p1

    .end local v12           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p1

    .end local p1           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p1, p0

    .end local p0           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    :goto_e
    if-eqz p8, :cond_17

    :try_start_12
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_7

    move-result-object p0

    .end local v7           #uri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_f
    if-eqz p1, :cond_13

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto :goto_d

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    :cond_17
    :try_start_13
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_7

    move-result-object p0

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_f

    .end local v7           #uri:Landroid/net/Uri;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p6
    :catch_2
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local p6
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .local p2, ex:Ljava/lang/IllegalStateException;
    :goto_10
    const/16 p2, 0x0

    .end local p2           #ex:Ljava/lang/IllegalStateException;
    if-eqz p1, :cond_18

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_18
    move-object/from16 p1, p3

    .end local p3           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    goto/16 :goto_3

    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p6
    :catchall_4
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    move-object/from16 p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local p6
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_11
    if-eqz p1, :cond_19

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_19
    throw p3

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v5       #blockingUri:Landroid/net/Uri;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_5
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_11

    .end local v5           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_6
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    goto :goto_11

    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_7
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 v17, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v17

    goto :goto_11

    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    :catchall_8
    move-exception p1

    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 v17, p0

    .end local p0           #c:Landroid/database/Cursor;
    .local v17, c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, p1

    move-object/from16 p1, v17

    .end local v17           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    goto :goto_11

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    :catchall_9
    move-exception p0

    move-object/from16 v17, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v17

    goto :goto_11

    .end local v7           #uri:Landroid/net/Uri;
    .local p2, ex:Landroid/database/sqlite/SQLiteException;
    .local p3, filePath:Ljava/lang/String;
    :catchall_a
    move-exception p2

    move-object/from16 v17, p2

    move-object/from16 p2, p3

    .end local p3           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    move-object/from16 p3, v17

    goto :goto_11

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v5       #blockingUri:Landroid/net/Uri;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local p4       #c:Landroid/database/Cursor;
    :catch_3
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-object/from16 p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_10

    .end local v5           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local p4       #c:Landroid/database/Cursor;
    :catch_4
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    goto :goto_10

    .end local p1           #c:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :catch_5
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    goto :goto_10

    .end local p1           #c:Landroid/database/Cursor;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :catch_6
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p1, p0

    .end local p0           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    goto :goto_10

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p2       #filePath:Ljava/lang/String;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :catch_7
    move-exception p0

    move-object/from16 v17, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, p2

    .end local p2           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p2, v17

    goto/16 :goto_10

    .end local v7           #uri:Landroid/net/Uri;
    .end local p3           #filePath:Ljava/lang/String;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p6
    :catch_8
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-object/from16 p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_c

    .end local p1           #c:Landroid/database/Cursor;
    .end local p6
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :catch_9
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    goto/16 :goto_c

    .end local p1           #c:Landroid/database/Cursor;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :catch_a
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p1, p0

    .end local p0           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    goto/16 :goto_c

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p2       #filePath:Ljava/lang/String;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :catch_b
    move-exception p0

    move-object/from16 v17, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, p2

    .end local p2           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p2, v17

    goto/16 :goto_c

    .end local v7           #uri:Landroid/net/Uri;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_b
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_b

    .end local p1           #origId:J
    :catchall_c
    move-exception p1

    goto/16 :goto_b

    .end local p4           #c:Landroid/database/Cursor;
    .local v5, c:Landroid/database/Cursor;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .local p3, groupId:J
    .restart local p6
    :catchall_d
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v5

    .end local v5           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_8

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #origId:J
    .end local p3           #groupId:J
    .local v5, magicMatch:Z
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :catchall_e
    move-exception p1

    goto/16 :goto_5

    .end local v5           #magicMatch:Z
    .local v4, c:Landroid/database/Cursor;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #magicMatch:Z
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .restart local p3       #groupId:J
    :catchall_f
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v4

    .end local v4           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_4

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v12           #filePath:Ljava/lang/String;
    .end local v15           #magicMatch:Z
    .end local p6
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .local p1, c:Landroid/database/Cursor;
    .local p2, ex:Landroid/database/sqlite/SQLiteException;
    .local p3, filePath:Ljava/lang/String;
    :cond_1a
    move-object/from16 p2, p3

    .end local p3           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    goto/16 :goto_d

    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :cond_1b
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    goto/16 :goto_e

    .end local v7           #uri:Landroid/net/Uri;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    :cond_1c
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_f

    .end local p2           #filePath:Ljava/lang/String;
    .local v5, blockingUri:Landroid/net/Uri;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    .restart local p6
    :cond_1d
    move-object/from16 p3, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_a

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .end local p6
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    :cond_1e
    move-object/from16 p3, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_9

    .end local p4           #c:Landroid/database/Cursor;
    .local v4, bitmap:Landroid/graphics/Bitmap;
    .local v5, c:Landroid/database/Cursor;
    .local p3, groupId:J
    .restart local p6
    :cond_1f
    move-object v10, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_7

    .end local p0           #cr:Landroid/content/ContentResolver;
    .end local p3           #groupId:J
    .local v5, magicMatch:Z
    :cond_20
    move-object/from16 p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .end local v5           #magicMatch:Z
    .local v4, c:Landroid/database/Cursor;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #magicMatch:Z
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #groupId:J
    :cond_21
    move v5, v15

    .end local v15           #magicMatch:Z
    .restart local v5       #magicMatch:Z
    goto/16 :goto_1
.end method
