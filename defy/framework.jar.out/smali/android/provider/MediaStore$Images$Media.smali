.class public final Landroid/provider/MediaStore$Images$Media;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$Images$ImageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "bucket_display_name"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final StoreThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "cr"
    .parameter "source"
    .parameter "id"
    .parameter "width"
    .parameter "height"
    .parameter "kind"

    .prologue
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    .local p4, scaleX:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p5, v0

    .local p5, scaleY:F
    invoke-virtual {v5, p4, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .local p1, thumb:Landroid/graphics/Bitmap;
    new-instance p4, Landroid/content/ContentValues;

    .end local p4           #scaleX:F
    const/4 p5, 0x4

    invoke-direct {p4, p5}, Landroid/content/ContentValues;-><init>(I)V

    .end local p5           #scaleY:F
    .local p4, values:Landroid/content/ContentValues;
    const-string p5, "kind"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    .end local p6
    invoke-virtual {p4, p5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p5, "image_id"

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p4, p5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "height"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "width"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p2, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p2, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .local p2, url:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    .local p0, thumbOut:Ljava/io/OutputStream;
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p2           #url:Landroid/net/Uri;
    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object p0, p1

    .end local p0           #thumbOut:Ljava/io/OutputStream;
    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .local p0, ex:Ljava/io/FileNotFoundException;
    const/4 p0, 0x0

    goto :goto_0

    .end local p0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception p0

    .local p0, ex:Ljava/io/IOException;
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static final getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "cr"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, input:Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "volumeName"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/images/media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cr"
    .parameter "source"
    .parameter "title"
    .parameter "description"

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "description"

    .end local p2
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    const-string p3, "image/jpeg"

    .end local p3
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .local p2, url:Landroid/net/Uri;
    const/4 p3, 0x0

    .local p3, stringUrl:Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .end local p2           #url:Landroid/net/Uri;
    .local v7, url:Landroid/net/Uri;
    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p2

    .local p2, imageOut:Ljava/io/OutputStream;
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v0           #values:Landroid/content/ContentValues;
    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .local v2, id:J
    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, v2, v3, p1, p2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .end local p1
    .end local p2           #imageOut:Ljava/io/OutputStream;
    move-result-object v1

    .local v1, miniThumb:Landroid/graphics/Bitmap;
    const/high16 v4, 0x4248

    const/high16 v5, 0x4248

    const/4 v6, 0x3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/provider/MediaStore$Images$Media;->StoreThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object p0, v7

    .end local v1           #miniThumb:Landroid/graphics/Bitmap;
    .end local v2           #id:J
    .end local v7           #url:Landroid/net/Uri;
    .local p0, url:Landroid/net/Uri;
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p3           #stringUrl:Ljava/lang/String;
    .local p0, stringUrl:Ljava/lang/String;
    :goto_1
    return-object p0

    .restart local v7       #url:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1
    .restart local p2       #imageOut:Ljava/io/OutputStream;
    .restart local p3       #stringUrl:Ljava/lang/String;
    :catchall_0
    move-exception p1

    .end local p1
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .end local p2           #imageOut:Ljava/io/OutputStream;
    :catch_0
    move-exception p1

    move-object p2, v7

    .end local v7           #url:Landroid/net/Uri;
    .local p1, e:Ljava/lang/Exception;
    .local p2, url:Landroid/net/Uri;
    :goto_2
    const-string v0, "MediaStore"

    const-string v1, "Failed to insert image"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .end local p1           #e:Ljava/lang/Exception;
    const/4 p0, 0x0

    .end local p2           #url:Landroid/net/Uri;
    .local p0, url:Landroid/net/Uri;
    goto :goto_0

    .restart local v0       #values:Landroid/content/ContentValues;
    .restart local v7       #url:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, source:Landroid/graphics/Bitmap;
    :cond_0
    :try_start_5
    const-string p1, "MediaStore"

    .end local p1           #source:Landroid/graphics/Bitmap;
    const-string p2, "Failed to create thumbnail, removing original"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, v7, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 p0, 0x0

    .end local v7           #url:Landroid/net/Uri;
    .local p0, url:Landroid/net/Uri;
    goto :goto_0

    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #source:Landroid/graphics/Bitmap;
    .restart local p2       #url:Landroid/net/Uri;
    :catch_1
    move-exception p1

    goto :goto_2

    .end local v0           #values:Landroid/content/ContentValues;
    .end local p1           #source:Landroid/graphics/Bitmap;
    .end local p2           #url:Landroid/net/Uri;
    .local p0, url:Landroid/net/Uri;
    :cond_1
    move-object p0, p3

    .end local p3           #stringUrl:Ljava/lang/String;
    .local p0, stringUrl:Ljava/lang/String;
    goto :goto_1

    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, e:Ljava/lang/Exception;
    .restart local p2       #url:Landroid/net/Uri;
    .restart local p3       #stringUrl:Ljava/lang/String;
    :cond_2
    move-object p0, p2

    .end local p2           #url:Landroid/net/Uri;
    .local p0, url:Landroid/net/Uri;
    goto :goto_0
.end method

.method public static final insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "cr"
    .parameter "imagePath"
    .parameter "name"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v2, stream:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p0, v0, p2, p3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, ret:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v1

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #ret:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v3

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #ret:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #ret:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    const-string v5, "bucket_display_name"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    const/4 v4, 0x0

    if-nez p4, :cond_0

    const-string v0, "bucket_display_name"

    move-object v5, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p4

    goto :goto_0
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    if-nez p5, :cond_0

    const-string v0, "bucket_display_name"

    move-object v5, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p5

    goto :goto_0
.end method
