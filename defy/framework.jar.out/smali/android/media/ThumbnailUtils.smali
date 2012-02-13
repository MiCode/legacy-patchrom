.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$1;,
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4000

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I = 0x30000

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I = 0x140

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .parameter "c"

    .prologue
    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v6

    .local v4, w:D
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v6

    .local v0, h:D
    if-ne p2, v10, :cond_0

    move v2, v11

    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v10, :cond_1

    const/16 v6, 0x80

    move v3, v6

    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_2

    move v6, v2

    :goto_2
    return v6

    .end local v2           #lowerBound:I
    .end local v3           #upperBound:I
    :cond_0
    mul-double v6, v4, v0

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v2, v6

    goto :goto_0

    .restart local v2       #lowerBound:I
    :cond_1
    int-to-double v6, p1

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    int-to-double v8, p1

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v6, v6

    move v3, v6

    goto :goto_1

    .restart local v3       #upperBound:I
    :cond_2
    if-ne p2, v10, :cond_3

    if-ne p1, v10, :cond_3

    move v6, v11

    goto :goto_2

    :cond_3
    if-ne p1, v10, :cond_4

    move v6, v2

    goto :goto_2

    :cond_4
    move v6, v3

    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "filePath"
    .parameter "kind"

    .prologue
    const/4 v13, -0x1

    const/16 v12, 0x60

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    if-ne p1, v9, :cond_2

    move v8, v9

    .local v8, wantMini:Z
    :goto_0
    if-eqz v8, :cond_3

    const/16 v9, 0x140

    move v7, v9

    .local v7, targetSize:I
    :goto_1
    if-eqz v8, :cond_4

    const/high16 v9, 0x3

    move v4, v9

    .local v4, maxPixels:I
    :goto_2
    new-instance v6, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    invoke-direct {v6, v11}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$1;)V

    .local v6, sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    const/4 v0, 0x0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v3

    .local v3, fileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v3, :cond_0

    iget v9, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v10, 0x23

    if-ne v9, v10, :cond_0

    invoke-static {p0, v7, v4, v6}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    iget-object v0, v6, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    if-nez v0, :cond_6

    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .local v2, fd:Ljava/io/FileDescriptor;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v9, 0x0

    invoke-static {v2, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v9, :cond_1

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v9, v13, :cond_1

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v9, v13, :cond_5

    :cond_1
    move-object v9, v11

    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_3
    return-object v9

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #fileType:Landroid/media/MediaFile$MediaFileType;
    .end local v4           #maxPixels:I
    .end local v6           #sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .end local v7           #targetSize:I
    .end local v8           #wantMini:Z
    :cond_2
    move v8, v10

    goto :goto_0

    .restart local v8       #wantMini:Z
    :cond_3
    move v7, v12

    goto :goto_1

    .restart local v7       #targetSize:I
    :cond_4
    const/16 v9, 0x4000

    move v4, v9

    goto :goto_2

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    .restart local v3       #fileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v4       #maxPixels:I
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    :cond_5
    invoke-static {v5, v7, v4}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v9

    iput v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x0

    invoke-static {v2, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_6
    :goto_4
    const/4 v9, 0x3

    if-ne p1, v9, :cond_7

    const/4 v9, 0x2

    invoke-static {v0, v12, v12, v9}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_7
    move-object v9, v0

    goto :goto_3

    :catch_0
    move-exception v9

    move-object v1, v9

    .local v1, ex:Ljava/io/IOException;
    const-string v9, "ThumbnailUtils"

    const-string v10, ""

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v9

    move-object v1, v9

    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const-string v9, "ThumbnailUtils"

    const-string v10, "Got oom exception "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .locals 6
    .parameter "filePath"
    .parameter "targetSize"
    .parameter "maxPixels"
    .parameter "sizedThumbBitmap"

    .prologue
    if-nez p0, :cond_1

    .end local p0
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-void

    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    .local v0, exif:Landroid/media/ExifInterface;
    const/4 v2, 0x0

    .local v2, thumbData:[B
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #exif:Landroid/media/ExifInterface;
    .local v1, exif:Landroid/media/ExifInterface;
    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .end local v2           #thumbData:[B
    .local v0, thumbData:[B
    :goto_1
    move-object v4, v0

    .end local v0           #thumbData:[B
    .local v4, thumbData:[B
    move-object v0, v1

    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v0, exif:Landroid/media/ExifInterface;
    :goto_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v2, fullOptions:Landroid/graphics/BitmapFactory$Options;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .end local v0           #exif:Landroid/media/ExifInterface;
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v0, exifOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    .local v1, exifThumbWidth:I
    const/4 v3, 0x0

    .local v3, fullThumbWidth:I
    if-eqz v4, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .end local v1           #exifThumbWidth:I
    const/4 v1, 0x0

    array-length v3, v4

    .end local v3           #fullThumbWidth:I
    invoke-static {v4, v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v3

    .restart local v1       #exifThumbWidth:I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v2, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    .end local p1
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .end local p2
    div-int/2addr p1, p2

    .local p1, fullThumbWidth:I
    if-eqz v4, :cond_3

    if-lt v1, p1, :cond_3

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local p1, width:I
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .local p0, height:I
    const/4 p2, 0x0

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x0

    array-length v1, v4

    .end local v1           #exifThumbWidth:I
    invoke-static {v4, p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p2, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    iput-object v4, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    iput p1, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    iput p0, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    goto :goto_0

    .end local v4           #thumbData:[B
    .local v0, exif:Landroid/media/ExifInterface;
    .local v2, thumbData:[B
    .local p0, filePath:Ljava/lang/String;
    .local p1, targetSize:I
    .restart local p2
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    .end local v0           #exif:Landroid/media/ExifInterface;
    .local v1, exif:Landroid/media/ExifInterface;
    move-object v0, v5

    .local v0, ex:Ljava/io/IOException;
    :goto_3
    const-string v3, "ThumbnailUtils"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v2

    .end local v2           #thumbData:[B
    .restart local v4       #thumbData:[B
    move-object v0, v1

    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v0, exif:Landroid/media/ExifInterface;
    goto :goto_2

    .end local p2
    .local v0, exifOptions:Landroid/graphics/BitmapFactory$Options;
    .local v1, exifThumbWidth:I
    .local v2, fullOptions:Landroid/graphics/BitmapFactory$Options;
    .local p1, fullThumbWidth:I
    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .end local p1           #fullThumbWidth:I
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .end local p0           #filePath:Ljava/lang/String;
    iput-object p0, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .end local v0           #exifOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #thumbData:[B
    .local v1, exif:Landroid/media/ExifInterface;
    .local v2, thumbData:[B
    .restart local p0       #filePath:Ljava/lang/String;
    .local p1, targetSize:I
    .restart local p2
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    .end local v2           #thumbData:[B
    .local v0, thumbData:[B
    goto :goto_1
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filePath"
    .parameter "kind"

    .prologue
    const/16 v4, 0x60

    const/4 v0, 0x0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-static {v0, v4, v4, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_1
    throw v2

    :catch_4
    move-exception v2

    goto :goto_0

    :catch_5
    move-exception v3

    goto :goto_1
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "source"
    .parameter "width"
    .parameter "height"
    .parameter "options"

    .prologue
    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_1

    int-to-float v4, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .local v2, scale:F
    :goto_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .local v1, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v3, 0x0

    .local v3, thumbnail:Landroid/graphics/Bitmap;
    or-int/lit8 v4, p3, 0x1

    :try_start_0
    invoke-static {v1, p0, p1, p2, v4}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_2
    move-object v4, v3

    goto :goto_0

    .end local v1           #matrix:Landroid/graphics/Matrix;
    .end local v2           #scale:F
    .end local v3           #thumbnail:Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v4, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .restart local v2       #scale:F
    goto :goto_1

    .restart local v1       #matrix:Landroid/graphics/Matrix;
    .restart local v3       #thumbnail:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "ThumbnailUtils"

    const-string v5, "Met very slim image,will not enlarge image"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {v1, p0, p1, p2, v4}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "uri"
    .parameter "cr"
    .parameter "pfd"
    .parameter "options"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    :cond_0
    if-nez p4, :cond_1

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v6

    :goto_0
    return-object v4

    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    move-object p5, v3

    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p5
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .local v2, fd:Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x1

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v5, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v4, v5, :cond_4

    :cond_3
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v6

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    goto :goto_0

    .end local v2           #fd:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, ex:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v4, "ThumbnailUtils"

    const-string v5, "Got oom exception "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v6

    goto :goto_0

    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v4
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "cr"

    .prologue
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "options"

    .prologue
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .local v2, scaleUp:Z
    :goto_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_3

    .end local p4
    const/4 p4, 0x1

    move v7, p4

    .local v7, recycle:Z
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    sub-int v0, p4, p2

    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int v1, p4, p3

    .local v1, deltaY:I
    if-nez v2, :cond_4

    if-ltz v0, :cond_0

    if-gez v1, :cond_4

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p0
    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .local p0, b2:Landroid/graphics/Bitmap;
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local p4, c:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    div-int/lit8 v0, v0, 0x2

    .end local v0           #deltaX:I
    .end local v2           #scaleUp:Z
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, deltaXHalf:I
    const/4 v2, 0x0

    div-int/lit8 v1, v1, 0x2

    .end local v1           #deltaY:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

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

    .local v3, src:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .end local v0           #deltaXHalf:I
    sub-int v0, p2, v0

    div-int/lit8 v1, v0, 0x2

    .local v1, dstX:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v2, v0, 0x2

    .local v2, dstY:I
    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr p2, v1

    sub-int/2addr p3, v2

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local p2
    .end local p3
    .local v0, dst:Landroid/graphics/Rect;
    const/4 p2, 0x0

    invoke-virtual {p4, p1, v3, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .end local v0           #dst:Landroid/graphics/Rect;
    .end local v1           #dstX:I
    .end local v2           #dstY:I
    .end local v3           #src:Landroid/graphics/Rect;
    .end local p4           #c:Landroid/graphics/Canvas;
    :cond_1
    :goto_2
    return-object p0

    .end local v7           #recycle:Z
    .local p0, scaler:Landroid/graphics/Matrix;
    .restart local p2
    .restart local p3
    .local p4, options:I
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .end local p4           #options:I
    .local v2, scaleUp:Z
    :cond_3
    const/4 p4, 0x0

    move v7, p4

    goto :goto_1

    .local v0, deltaX:I
    .local v1, deltaY:I
    .restart local v7       #recycle:Z
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float v1, p4

    .local v1, bitmapWidthF:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float v0, p4

    .local v0, bitmapHeightF:F
    div-float p4, v1, v0

    .local p4, bitmapAspect:F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    .local v2, viewAspect:F
    cmpl-float p4, p4, v2

    if-lez p4, :cond_a

    .end local p4           #bitmapAspect:F
    int-to-float p4, p3

    div-float/2addr p4, v0

    .local p4, scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_5

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_9

    :cond_5
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_3
    if-eqz p0, :cond_d

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

    .local p0, b1:Landroid/graphics/Bitmap;
    :goto_4
    if-eqz v7, :cond_6

    if-eq p0, p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    const/4 p4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .end local p4           #scale:F
    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    .local p4, dx1:I
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, dy1:I
    div-int/lit8 p4, p4, 0x2

    .end local p4           #dx1:I
    div-int/lit8 v0, v0, 0x2

    .end local v0           #dy1:I
    invoke-static {p0, p4, v0, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .local p2, b2:Landroid/graphics/Bitmap;
    if-eq p2, p0, :cond_8

    if-nez v7, :cond_7

    if-eq p0, p1, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    move-object p0, p2

    .end local p2           #b2:Landroid/graphics/Bitmap;
    .local p0, b2:Landroid/graphics/Bitmap;
    goto :goto_2

    .restart local v1       #bitmapWidthF:F
    .restart local v2       #viewAspect:F
    .local p0, scaler:Landroid/graphics/Matrix;
    .local p2, targetWidth:I
    .local p4, scale:F
    :cond_9
    const/4 p0, 0x0

    goto :goto_3

    .end local p4           #scale:F
    .local v0, bitmapHeightF:F
    :cond_a
    int-to-float p4, p2

    div-float/2addr p4, v1

    .restart local p4       #scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_b

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_c

    :cond_b
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_3

    :cond_c
    const/4 p0, 0x0

    goto :goto_3

    :cond_d
    move-object p0, p1

    .local p0, b1:Landroid/graphics/Bitmap;
    goto :goto_4
.end method
