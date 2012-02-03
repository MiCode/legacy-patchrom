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
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    return-void
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 321
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
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

    .line 253
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v6

    .line 254
    .local v4, w:D
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v6

    .line 256
    .local v0, h:D
    if-ne p2, v10, :cond_0

    move v2, v11

    .line 258
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v10, :cond_1

    const/16 v6, 0x80

    move v3, v6

    .line 262
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_2

    move v6, v2

    .line 273
    :goto_2
    return v6

    .line 256
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

    .line 258
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

    .line 267
    .restart local v3       #upperBound:I
    :cond_2
    if-ne p2, v10, :cond_3

    if-ne p1, v10, :cond_3

    move v6, v11

    .line 269
    goto :goto_2

    .line 270
    :cond_3
    if-ne p1, v10, :cond_4

    move v6, v2

    .line 271
    goto :goto_2

    :cond_4
    move v6, v3

    .line 273
    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 235
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 239
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 240
    const/4 v1, 0x1

    .line 241
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 242
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 248
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "filePath"
    .parameter "kind"

    .prologue
    .line 91
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    .line 92
    .local v0, wantMini:Z
    :goto_0
    if-eqz v0, :cond_3

    const/16 v1, 0x140

    move v4, v1

    .line 95
    .local v4, targetSize:I
    :goto_1
    if-eqz v0, :cond_4

    const/high16 v0, 0x3

    move v2, v0

    .line 98
    .end local v0           #wantMini:Z
    .local v2, maxPixels:I
    :goto_2
    new-instance v3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$1;)V

    .line 99
    .local v3, sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    const/4 v0, 0x0

    .line 100
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v1

    .line 101
    .local v1, fileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v1, :cond_0

    iget v1, v1, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .end local v1           #fileType:Landroid/media/MediaFile$MediaFileType;
    const/16 v5, 0x1f

    if-ne v1, v5, :cond_0

    .line 102
    invoke-static {p0, v4, v2, v3}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    .line 103
    iget-object v0, v3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 106
    :cond_0
    if-nez v0, :cond_7

    .line 108
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 109
    .local p0, fd:Ljava/io/FileDescriptor;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 111
    .end local v3           #sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 112
    const/4 v3, 0x0

    invoke-static {p0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 113
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_1

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    .line 115
    :cond_1
    const/4 p0, 0x0

    .end local p0           #fd:Ljava/io/FileDescriptor;
    move-object p1, p0

    move-object p0, v0

    .line 137
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #maxPixels:I
    .end local p1
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_3
    return-object p1

    .line 91
    .end local v4           #targetSize:I
    .local p0, filePath:Ljava/lang/String;
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    .local v0, wantMini:Z
    :cond_3
    const/16 v1, 0x60

    move v4, v1

    goto :goto_1

    .line 95
    .restart local v4       #targetSize:I
    :cond_4
    const/16 v0, 0x4000

    move v2, v0

    goto :goto_2

    .line 117
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v2       #maxPixels:I
    .local p0, fd:Ljava/io/FileDescriptor;
    :cond_5
    invoke-static {v1, v4, v2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    .end local v2           #maxPixels:I
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 119
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 121
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 122
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 123
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 131
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 133
    const/16 p1, 0x60

    const/16 v0, 0x60

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .end local p1
    move-result-object p0

    :cond_6
    move-object p1, p0

    .line 137
    goto :goto_3

    .line 124
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local p1
    :catch_0
    move-exception p0

    .line 125
    .local p0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "ThumbnailUtils"

    const-string v2, ""

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    .line 128
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_4

    .line 126
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception p0

    .line 127
    .local p0, ex:Ljava/io/IOException;
    const-string v1, "ThumbnailUtils"

    const-string v2, ""

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local p0           #ex:Ljava/io/IOException;
    :cond_7
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_4
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .locals 6
    .parameter "filePath"
    .parameter "targetSize"
    .parameter "maxPixels"
    .parameter "sizedThumbBitmap"

    .prologue
    .line 456
    if-nez p0, :cond_1

    .line 504
    .end local p0
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 458
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    .line 459
    .local v0, exif:Landroid/media/ExifInterface;
    const/4 v2, 0x0

    .line 461
    .local v2, thumbData:[B
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v0           #exif:Landroid/media/ExifInterface;
    .local v1, exif:Landroid/media/ExifInterface;
    if-eqz v1, :cond_4

    .line 463
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

    .line 469
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v0, exif:Landroid/media/ExifInterface;
    :goto_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 470
    .local v2, fullOptions:Landroid/graphics/BitmapFactory$Options;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .end local v0           #exif:Landroid/media/ExifInterface;
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 471
    .local v0, exifOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    .line 472
    .local v1, exifThumbWidth:I
    const/4 v3, 0x0

    .line 475
    .local v3, fullThumbWidth:I
    if-eqz v4, :cond_2

    .line 476
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 477
    .end local v1           #exifThumbWidth:I
    const/4 v1, 0x0

    array-length v3, v4

    .end local v3           #fullThumbWidth:I
    invoke-static {v4, v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 478
    invoke-static {v0, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 479
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v3

    .line 483
    .restart local v1       #exifThumbWidth:I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 484
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 485
    invoke-static {v2, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    .end local p1
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 486
    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .end local p2
    div-int/2addr p1, p2

    .line 489
    .local p1, fullThumbWidth:I
    if-eqz v4, :cond_3

    if-lt v1, p1, :cond_3

    .line 490
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 491
    .local p1, width:I
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 492
    .local p0, height:I
    const/4 p2, 0x0

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 493
    const/4 p2, 0x0

    array-length v1, v4

    .end local v1           #exifThumbWidth:I
    invoke-static {v4, p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 495
    iget-object p2, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 496
    iput-object v4, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    .line 497
    iput p1, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    .line 498
    iput p0, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    goto :goto_0

    .line 465
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

    .line 466
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

    .line 501
    .end local p2
    .local v0, exifOptions:Landroid/graphics/BitmapFactory$Options;
    .local v1, exifThumbWidth:I
    .local v2, fullOptions:Landroid/graphics/BitmapFactory$Options;
    .local p1, fullThumbWidth:I
    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 502
    .end local p1           #fullThumbWidth:I
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .end local p0           #filePath:Ljava/lang/String;
    iput-object p0, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 465
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
    .locals 6
    .parameter "filePath"
    .parameter "kind"

    .prologue
    const/16 v5, 0x60

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 151
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 152
    const-wide/32 v3, 0xe4e1c0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 161
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    .line 166
    :goto_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    if-eqz v0, :cond_0

    .line 167
    const/4 v3, 0x2

    invoke-static {v0, v5, v5, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    :cond_0
    return-object v0

    .line 153
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 154
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v3, "ThumbnailUtils"

    const-string v4, "Got OOM error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 162
    :catch_1
    move-exception v3

    goto :goto_0

    .line 155
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v3

    .line 161
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 162
    :catch_3
    move-exception v3

    goto :goto_0

    .line 157
    :catch_4
    move-exception v3

    .line 161
    :try_start_5
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    .line 162
    :catch_5
    move-exception v3

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v3

    .line 161
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    .line 164
    :goto_1
    throw v3

    .line 162
    :catch_6
    move-exception v3

    goto :goto_0

    :catch_7
    move-exception v4

    goto :goto_1
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "source"
    .parameter "width"
    .parameter "height"
    .parameter "options"

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 198
    const/4 v3, 0x0

    .line 211
    :goto_0
    return-object v3

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 203
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 207
    .local v1, scale:F
    :goto_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 208
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 209
    or-int/lit8 v3, p3, 0x1

    invoke-static {v0, p0, p1, p2, v3}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, thumbnail:Landroid/graphics/Bitmap;
    move-object v3, v2

    .line 211
    goto :goto_0

    .line 205
    .end local v0           #matrix:Landroid/graphics/Matrix;
    .end local v1           #scale:F
    .end local v2           #thumbnail:Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .restart local v1       #scale:F
    goto :goto_1
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

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 291
    :cond_0
    if-nez p4, :cond_1

    .line 313
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v6

    .line 315
    :goto_0
    return-object v4

    .line 292
    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    move-object p5, v3

    .line 294
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p5
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 295
    .local v2, fd:Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 296
    const/4 v4, 0x1

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 297
    const/4 v4, 0x0

    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 298
    iget-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v5, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v4, v5, :cond_4

    .line 313
    :cond_3
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v6

    goto :goto_0

    .line 302
    :cond_4
    :try_start_2
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 304
    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 306
    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 307
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 308
    const/4 v4, 0x0

    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 313
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 315
    goto :goto_0

    .line 309
    .end local v2           #fd:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 310
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v4, "ThumbnailUtils"

    const-string v5, "Got oom exception "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
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
    .line 330
    :try_start_0
    const-string/jumbo v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 332
    :goto_0
    return-object v1

    .line 331
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 332
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
    .line 344
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .line 345
    .local v2, scaleUp:Z
    :goto_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_3

    .end local p4
    const/4 p4, 0x1

    move v7, p4

    .line 347
    .local v7, recycle:Z
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    sub-int v0, p4, p2

    .line 348
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int v1, p4, p3

    .line 349
    .local v1, deltaY:I
    if-nez v2, :cond_4

    if-ltz v0, :cond_0

    if-gez v1, :cond_4

    .line 356
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p0
    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 358
    .local p0, b2:Landroid/graphics/Bitmap;
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 360
    .local p4, c:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    div-int/lit8 v0, v0, 0x2

    .end local v0           #deltaX:I
    .end local v2           #scaleUp:Z
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 361
    .local v0, deltaXHalf:I
    const/4 v2, 0x0

    div-int/lit8 v1, v1, 0x2

    .end local v1           #deltaY:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 362
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

    .line 367
    .local v3, src:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .end local v0           #deltaXHalf:I
    sub-int v0, p2, v0

    div-int/lit8 v1, v0, 0x2

    .line 368
    .local v1, dstX:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v2, v0, 0x2

    .line 369
    .local v2, dstY:I
    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr p2, v1

    sub-int/2addr p3, v2

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 374
    .end local p2
    .end local p3
    .local v0, dst:Landroid/graphics/Rect;
    const/4 p2, 0x0

    invoke-virtual {p4, p1, v3, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 375
    if-eqz v7, :cond_1

    .line 376
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 431
    .end local v0           #dst:Landroid/graphics/Rect;
    .end local v1           #dstX:I
    .end local v2           #dstY:I
    .end local v3           #src:Landroid/graphics/Rect;
    .end local p4           #c:Landroid/graphics/Canvas;
    :cond_1
    :goto_2
    return-object p0

    .line 344
    .end local v7           #recycle:Z
    .local p0, scaler:Landroid/graphics/Matrix;
    .restart local p2
    .restart local p3
    .local p4, options:I
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 345
    .end local p4           #options:I
    .local v2, scaleUp:Z
    :cond_3
    const/4 p4, 0x0

    move v7, p4

    goto :goto_1

    .line 380
    .local v0, deltaX:I
    .local v1, deltaY:I
    .restart local v7       #recycle:Z
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float v1, p4

    .line 381
    .local v1, bitmapWidthF:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float v0, p4

    .line 383
    .local v0, bitmapHeightF:F
    div-float p4, v1, v0

    .line 384
    .local p4, bitmapAspect:F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    .line 386
    .local v2, viewAspect:F
    cmpl-float p4, p4, v2

    if-lez p4, :cond_a

    .line 387
    .end local p4           #bitmapAspect:F
    int-to-float p4, p3

    div-float/2addr p4, v0

    .line 388
    .local p4, scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_5

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_9

    .line 389
    :cond_5
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 403
    :goto_3
    if-eqz p0, :cond_d

    .line 405
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

    .line 411
    .local p0, b1:Landroid/graphics/Bitmap;
    :goto_4
    if-eqz v7, :cond_6

    if-eq p0, p1, :cond_6

    .line 412
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 415
    :cond_6
    const/4 p4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .end local p4           #scale:F
    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 416
    .local p4, dx1:I
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 418
    .local v0, dy1:I
    div-int/lit8 p4, p4, 0x2

    .end local p4           #dx1:I
    div-int/lit8 v0, v0, 0x2

    .end local v0           #dy1:I
    invoke-static {p0, p4, v0, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 425
    .local p2, b2:Landroid/graphics/Bitmap;
    if-eq p2, p0, :cond_8

    .line 426
    if-nez v7, :cond_7

    if-eq p0, p1, :cond_8

    .line 427
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    move-object p0, p2

    .line 431
    .end local p2           #b2:Landroid/graphics/Bitmap;
    .local p0, b2:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 391
    .restart local v1       #bitmapWidthF:F
    .restart local v2       #viewAspect:F
    .local p0, scaler:Landroid/graphics/Matrix;
    .local p2, targetWidth:I
    .local p4, scale:F
    :cond_9
    const/4 p0, 0x0

    goto :goto_3

    .line 394
    .end local p4           #scale:F
    .local v0, bitmapHeightF:F
    :cond_a
    int-to-float p4, p2

    div-float/2addr p4, v1

    .line 395
    .restart local p4       #scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_b

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_c

    .line 396
    :cond_b
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_3

    .line 398
    :cond_c
    const/4 p0, 0x0

    goto :goto_3

    .line 408
    :cond_d
    move-object p0, p1

    .local p0, b1:Landroid/graphics/Bitmap;
    goto :goto_4
.end method
