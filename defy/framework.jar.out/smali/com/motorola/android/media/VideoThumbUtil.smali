.class public Lcom/motorola/android/media/VideoThumbUtil;
.super Ljava/lang/Object;
.source "VideoThumbUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoThumbUtil"

.field private static final THUMB_PROJECTION:[Ljava/lang/String;


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

    sput-object v0, Lcom/motorola/android/media/VideoThumbUtil;->THUMB_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureFileExists(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .local v4, secondSlash:I
    if-ge v4, v6, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, directoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, ioe:Ljava/io/IOException;
    const-string v5, "VideoThumbUtil"

    const-string v6, "File creation failed"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v7

    goto :goto_0
.end method

.method private static getVideoThumbnailUri(Landroid/content/ContentResolver;JII)Landroid/net/Uri;
    .locals 6
    .parameter "cr"
    .parameter "origId"
    .parameter "width"
    .parameter "height"

    .prologue
    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .local v1, thumbUri:Landroid/net/Uri;
    sget-object v2, Lcom/motorola/android/media/VideoThumbUtil;->THUMB_PROJECTION:[Ljava/lang/String;

    const-string v3, "video_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const/4 p0, 0x0

    .end local v0           #c:Landroid/database/Cursor;
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-object p0

    .restart local v0       #c:Landroid/database/Cursor;
    .restart local p0
    .restart local p1
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p0, 0x1

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local p0
    move-result-object p0

    .local p0, path:Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/motorola/android/media/VideoThumbUtil;->ensureFileExists(Ljava/lang/String;)Z

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    .end local p0           #path:Ljava/lang/String;
    move-result-wide p0

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    if-eqz v0, :cond_0

    .end local p1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local p0       #path:Ljava/lang/String;
    .restart local p1
    :cond_2
    :try_start_1
    const-string p0, "VideoThumbUtil"

    .end local p0           #path:Ljava/lang/String;
    const-string p1, "path is null"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0

    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #c:Landroid/database/Cursor;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "kind"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "video_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "height"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "width"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_2
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    .local p0, ex:Ljava/lang/Exception;
    const-string p1, "VideoThumbUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static storeMiniThumb(Landroid/content/ContentResolver;JLandroid/graphics/Bitmap;)Z
    .locals 8
    .parameter "cr"
    .parameter "origId"
    .parameter "thumb"

    .prologue
    const/4 v6, 0x0

    const-string v7, "VideoThumbUtil"

    if-nez p3, :cond_0

    const-string v4, "VideoThumbUtil"

    const-string v4, "thumb is null"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    :goto_0
    return v4

    :cond_0
    :try_start_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {p0, p1, p2, v4, v5}, Lcom/motorola/android/media/VideoThumbUtil;->getVideoThumbnailUri(Landroid/content/ContentResolver;JII)Landroid/net/Uri;

    move-result-object v3

    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_1

    const-string v4, "VideoThumbUtil"

    const-string v5, " uri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .local v2, thumbOut:Ljava/io/OutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x3c

    invoke-virtual {p3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    .local v0, result:Z
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    goto :goto_0

    .end local v0           #result:Z
    .end local v2           #thumbOut:Ljava/io/OutputStream;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, t:Ljava/lang/Throwable;
    const-string v4, "VideoThumbUtil"

    const-string v4, "Unable to store thumbnail"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0
.end method
