.class Landroid/widget/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageDecoder$1;,
        Landroid/widget/ImageDecoder$PanDirection;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final SPEED_DATA_MODE:I = 0x5

.field private static final SPEED_DATA_QUALITY:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Image Decoder"

.field private static final sMaxZoom:F = 9.0f

.field private static final sPanRate:I = 0x14

.field private static final sZoomRate:F = 1.05f


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

.field private mInitialHeight:I

.field private mInitialWidth:I

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOutBuf:Landroid/graphics/Bitmap;

.field private mOutHeight:I

.field private mOutWidth:I

.field private mPanX:F

.field private mPanY:F

.field private mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

.field private mZoom:F

.field private spmoHeight:I

.field private spmoWidth:I


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 7
    .parameter "inputFile"
    .parameter "isThumbnail"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "Image Decoder"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x140

    iput v2, p0, Landroid/widget/ImageDecoder;->spmoWidth:I

    const/16 v2, 0xf0

    iput v2, p0, Landroid/widget/ImageDecoder;->spmoHeight:I

    iput-object v5, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    iput-object v5, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    iput-object v5, p0, Landroid/widget/ImageDecoder;->mFilePath:Ljava/lang/String;

    iput v4, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    iput v4, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    iput-object v5, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    iput v4, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    iput v4, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    const/high16 v2, 0x3f80

    iput v2, p0, Landroid/widget/ImageDecoder;->mZoom:F

    iput v3, p0, Landroid/widget/ImageDecoder;->mPanX:F

    iput v3, p0, Landroid/widget/ImageDecoder;->mPanY:F

    iput v3, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    iput v3, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    const/4 v1, 0x0

    .local v1, spmo:[B
    const-string v2, "Image Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating ImageDecoder for file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/widget/ImageDecoder;->mFilePath:Ljava/lang/String;

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/ImageDecoder;->getSpeedData(Ljava/lang/String;)[B

    move-result-object v1

    :cond_0
    const-string v2, "Image Decoder"

    const-string v2, "call new ImageProcessorImpl\n"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-direct {v2, p1, v1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;-><init>(Ljava/lang/String;[B)V

    iput-object v2, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Error;
    const-string v2, "Image Decoder"

    const-string v2, "new ImageProcessorImpl ERROR!"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v2, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>([BZ)V
    .locals 7
    .parameter "inputImage"
    .parameter "isThumbnail"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v4, "Image Decoder"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x140

    iput v2, p0, Landroid/widget/ImageDecoder;->spmoWidth:I

    const/16 v2, 0xf0

    iput v2, p0, Landroid/widget/ImageDecoder;->spmoHeight:I

    iput-object v3, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    iput-object v3, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    iput-object v3, p0, Landroid/widget/ImageDecoder;->mFilePath:Ljava/lang/String;

    iput v6, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    iput v6, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    iput-object v3, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    iput v6, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    iput v6, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    const/high16 v2, 0x3f80

    iput v2, p0, Landroid/widget/ImageDecoder;->mZoom:F

    iput v5, p0, Landroid/widget/ImageDecoder;->mPanX:F

    iput v5, p0, Landroid/widget/ImageDecoder;->mPanY:F

    iput v5, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    iput v5, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    const/4 v1, 0x0

    .local v1, spmo:[B
    const-string v2, "Image Decoder"

    const-string v2, "creating ImageDecoder for ByteArray"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Landroid/widget/ImageDecoder;->mFilePath:Ljava/lang/String;

    if-nez p2, :cond_0

    :try_start_0
    const-string v2, "Image Decoder"

    const-string v3, "call extractSpeedData\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->extractSpeedData([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    :try_start_1
    const-string v2, "Image Decoder"

    const-string v3, "call new ImageProcessorImpl\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-direct {v2, p1, v1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;-><init>([B[B)V

    iput-object v2, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Image Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No SpeedData Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Error;
    const-string v2, "Image Decoder"

    const-string v2, "new ImageProcessorImpl ERROR!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v2, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private adjustCenter(F)V
    .locals 5
    .parameter "zoom"

    .prologue
    iget v2, p0, Landroid/widget/ImageDecoder;->mPanX:F

    mul-float v0, p1, v2

    .local v0, newPanX:F
    iget v2, p0, Landroid/widget/ImageDecoder;->mPanY:F

    mul-float v1, p1, v2

    .local v1, newPanY:F
    const-string v2, "Image Decoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Centering to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ImageDecoder;->panTo(FFZ)V

    return-void
.end method

.method private calcInitialDimensions()V
    .locals 10

    .prologue
    const-string v9, "Image Decoder"

    const/4 v6, 0x0

    .local v6, widthFactor:F
    const/4 v0, 0x0

    .local v0, heightFactor:F
    const/4 v3, 0x0

    .local v3, scaleFactor:F
    invoke-virtual {p0}, Landroid/widget/ImageDecoder;->getImageWidth()I

    move-result v2

    .local v2, iw:I
    invoke-virtual {p0}, Landroid/widget/ImageDecoder;->getImageHeight()I

    move-result v1

    .local v1, ih:I
    iget v5, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    .local v5, vw:I
    iget v4, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    .local v4, vh:I
    const-string v7, "Image Decoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iw "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ih "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vw "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vh "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v2, v5, :cond_0

    if-le v1, v4, :cond_1

    :cond_0
    int-to-float v7, v5

    int-to-float v8, v2

    div-float v6, v7, v8

    int-to-float v7, v4

    int-to-float v8, v1

    div-float v0, v7, v8

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const-string v7, "Image Decoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scaleFactor:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " widthFactor:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " heightFactor:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v7, v2

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    int-to-float v7, v1

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    :goto_0
    iget v7, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iput v7, p0, Landroid/widget/ImageDecoder;->mPanX:F

    iget v7, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iput v7, p0, Landroid/widget/ImageDecoder;->mPanY:F

    return-void

    :cond_1
    iput v2, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    iput v1, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    goto :goto_0
.end method

.method private convertPixelToOffset(FFF)F
    .locals 3
    .parameter "pixel"
    .parameter "imageSize"
    .parameter "viewSize"

    .prologue
    const/high16 v1, 0x4000

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    sub-float v2, p2, p3

    div-float v0, v1, v2

    .local v0, offset:F
    const/high16 v1, -0x4080

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/high16 v0, -0x4080

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const/high16 v0, 0x3f80

    goto :goto_0

    :cond_2
    cmpg-float v1, p2, p3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSpeedData(Ljava/lang/String;)[B
    .locals 14
    .parameter "fileName"

    .prologue
    const-string v13, "Image Decoder"

    const/4 v2, 0x0

    .local v2, spmo:[B
    :try_start_0
    const-string v9, "Image Decoder"

    const-string v10, "call extractSpeedData\n"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->extractSpeedData(Ljava/lang/String;)[B

    move-result-object v2

    const-string v9, "Image Decoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SpeedData Size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " B"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v2, :cond_0

    :try_start_1
    const-string v9, "Image Decoder"

    const-string v10, "Generating missing SpeedData\n"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .local v3, spmoStartTime:J
    const/4 v9, 0x5

    const/4 v10, 0x5

    iget v11, p0, Landroid/widget/ImageDecoder;->spmoWidth:I

    iget v12, p0, Landroid/widget/ImageDecoder;->spmoHeight:I

    invoke-static {p1, v9, v10, v11, v12}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->createSpeedData(Ljava/lang/String;IIII)[B

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v9, "Image Decoder"

    const-string v10, "Inserting SpeedData into Image"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v5, v9, v3

    .local v5, spmoTime:J
    const-string v9, "Image Decoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SpeedData Perf Info: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " B "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, origFile:Ljava/io/File;
    const-string v9, "_tmp"

    invoke-virtual {p1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, tempFileName:Ljava/lang/String;
    invoke-static {p1, v2, v8}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->insertSpeedData(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, tempFile:Ljava/io/File;
    invoke-virtual {v7, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string v9, "Image Decoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Original file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "Image Decoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Temp file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .end local v1           #origFile:Ljava/io/File;
    .end local v3           #spmoStartTime:J
    .end local v5           #spmoTime:J
    .end local v7           #tempFile:Ljava/io/File;
    .end local v8           #tempFileName:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    :catch_0
    move-exception v9

    move-object v0, v9

    .local v0, e:Ljava/lang/Exception;
    const-string v9, "Image Decoder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No SpeedData Found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    move-object v0, v9

    .restart local v0       #e:Ljava/lang/Exception;
    const-string v9, "Image Decoder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSpeedData exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v9

    move-object v0, v9

    .local v0, e:Ljava/lang/Error;
    const-string v9, "Image Decoder"

    const-string v9, "createSpeedData ERROR!"

    invoke-static {v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private panTo(FFZ)V
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "shouldRender"

    .prologue
    const-string v10, ","

    const-string v8, ")"

    const-string v9, "Image Decoder"

    const-string v6, "Image Decoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PanTo Pixel(x,y): ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    .local v4, xOffset:F
    const/4 v5, 0x0

    .local v5, yOffset:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, panStartTime:J
    iget v6, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/ImageDecoder;->mZoom:F

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    int-to-float v7, v7

    invoke-direct {p0, p1, v6, v7}, Landroid/widget/ImageDecoder;->convertPixelToOffset(FFF)F

    move-result v6

    iput v6, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    iget v6, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/ImageDecoder;->mZoom:F

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    int-to-float v7, v7

    invoke-direct {p0, p2, v6, v7}, Landroid/widget/ImageDecoder;->convertPixelToOffset(FFF)F

    move-result v6

    iput v6, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    const-string v6, "Image Decoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PanTo Offset(x,y): ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    iget v7, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    iget v8, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    invoke-virtual {v6, v7, v8}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->pan(FF)V

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageDecoder;->storePanPosition(FF)V

    const/4 v6, 0x1

    if-ne p3, v6, :cond_0

    iget-object v6, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    invoke-virtual {v6}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->renderScreen()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .local v2, panTime:J
    const-string v6, "Image Decoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PERF: Pan "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #panStartTime:J
    .end local v2           #panTime:J
    .end local v4           #xOffset:F
    .end local v5           #yOffset:F
    :cond_1
    return-void
.end method

.method private storePanPosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v2, -0x4080

    iget v0, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/widget/ImageDecoder;->mPanX:F

    :goto_0
    iget v0, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/widget/ImageDecoder;->mPanY:F

    :goto_1
    const-string v0, "Image Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storePanPosition ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/ImageDecoder;->mPanX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/ImageDecoder;->mPanY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ImageDecoder;->mPanX:F

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/widget/ImageDecoder;->mPanX:F

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget v0, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ImageDecoder;->mPanY:F

    goto :goto_1

    :cond_3
    iput p2, p0, Landroid/widget/ImageDecoder;->mPanY:F

    goto :goto_1
.end method


# virtual methods
.method public canPan(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/high16 v6, 0x3f80

    const/high16 v5, -0x4080

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v1, Landroid/widget/ImageDecoder$PanDirection;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/widget/ImageDecoder$PanDirection;

    aget-object v0, v1, p1

    .local v0, eDirection:Landroid/widget/ImageDecoder$PanDirection;
    sget-object v1, Landroid/widget/ImageDecoder$1;->$SwitchMap$android$widget$ImageDecoder$PanDirection:[I

    invoke-virtual {v0}, Landroid/widget/ImageDecoder$PanDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move v1, v3

    :goto_0
    return v1

    :pswitch_0
    iget v1, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    :pswitch_1
    iget v1, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :pswitch_2
    iget v1, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :pswitch_3
    iget v1, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public crop(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->crop(IIII)V

    return-void
.end method

.method public decode()V
    .locals 2

    .prologue
    const-string v1, "Image Decoder"

    const-string v0, "Image Decoder"

    const-string v0, "Enter decode\n"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-nez v0, :cond_0

    const-string v0, "Image Decoder"

    const-string v0, "Decoder not set correctly.\n"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    invoke-virtual {v0}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->renderScreen()V

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-virtual {v0}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-virtual {v0}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getNumberOfFrames()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->nativeGetSourceAttributeInt(I)I

    move-result v0

    return v0
.end method

.method public getOutputBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getZoomLevel()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/ImageDecoder;->mZoom:F

    return v0
.end method

.method public pan(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/high16 v6, 0x3f80

    const/high16 v5, -0x4080

    const/high16 v4, 0x41a0

    const/4 v1, 0x0

    .local v1, handled:Z
    const-class v2, Landroid/widget/ImageDecoder$PanDirection;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/widget/ImageDecoder$PanDirection;

    aget-object v0, v2, p1

    .local v0, eDirection:Landroid/widget/ImageDecoder$PanDirection;
    sget-object v2, Landroid/widget/ImageDecoder$1;->$SwitchMap$android$widget$ImageDecoder$PanDirection:[I

    invoke-virtual {v0}, Landroid/widget/ImageDecoder$PanDirection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget v2, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/ImageDecoder;->mPanX:F

    iget v3, p0, Landroid/widget/ImageDecoder;->mPanY:F

    sub-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/widget/ImageDecoder;->panTo(FF)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/ImageDecoder;->mPanX:F

    iget v3, p0, Landroid/widget/ImageDecoder;->mPanY:F

    add-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/widget/ImageDecoder;->panTo(FF)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    iget v2, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/ImageDecoder;->mPanX:F

    sub-float/2addr v2, v4

    iget v3, p0, Landroid/widget/ImageDecoder;->mPanY:F

    invoke-virtual {p0, v2, v3}, Landroid/widget/ImageDecoder;->panTo(FF)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    iget v2, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/ImageDecoder;->mPanX:F

    add-float/2addr v2, v4

    iget v3, p0, Landroid/widget/ImageDecoder;->mPanY:F

    invoke-virtual {p0, v2, v3}, Landroid/widget/ImageDecoder;->panTo(FF)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public panBy(FF)V
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ImageDecoder;->mPanX:F

    add-float/2addr v0, p1

    iget v1, p0, Landroid/widget/ImageDecoder;->mPanY:F

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageDecoder;->panTo(FF)V

    :cond_0
    return-void
.end method

.method public panTo(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageDecoder;->panTo(FFZ)V

    return-void
.end method

.method public rotate(I)V
    .locals 1
    .parameter "degrees"

    .prologue
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-virtual {v0, p1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->rotate(I)V

    return-void
.end method

.method public setFrameNumber(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-virtual {v0, p1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->setAGIFFrame(I)I

    move-result v0

    return v0
.end method

.method public setOutputBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    const-string v3, "Image Decoder"

    const-string v1, "Image Decoder"

    const-string v1, "ImageDecoder::setOutputBitmap"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-virtual {v1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->release()V

    iput-object v2, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    iput-object v2, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .local v0, colorFormat:Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :cond_1
    const-string v1, "Image Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating screen  W "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " H "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    iget v2, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    iget v3, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    iget-object v4, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->createScreen(IILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    invoke-direct {p0}, Landroid/widget/ImageDecoder;->calcInitialDimensions()V

    return-void
.end method

.method public zoomIn()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    const/high16 v2, 0x4110

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    const v2, 0x3f866666

    mul-float v0, v1, v2

    .local v0, newZoomLevel:F
    invoke-virtual {p0, v0}, Landroid/widget/ImageDecoder;->zoomToLevel(F)Z

    move-result v1

    .end local v0           #newZoomLevel:F
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 4

    .prologue
    const-string v1, "Image Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoomOut zoom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/ImageDecoder;->mZoom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    const v2, 0x3f866666

    div-float v0, v1, v2

    .local v0, newZoomLevel:F
    invoke-virtual {p0, v0}, Landroid/widget/ImageDecoder;->zoomToLevel(F)Z

    move-result v1

    .end local v0           #newZoomLevel:F
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public zoomToLevel(F)Z
    .locals 8
    .parameter "zoomLevel"

    .prologue
    const-string v7, "Image Decoder"

    const/high16 v0, 0x3f80

    .local v0, zoomRate:F
    iget-object v5, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .local v1, zoomStartTime:J
    const-string v5, "Image Decoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zoomToLevel zoomLevel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v5, 0x4110

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    const/high16 p1, 0x4110

    :cond_1
    :goto_1
    iget v5, p0, Landroid/widget/ImageDecoder;->mZoom:F

    div-float v0, p1, v5

    iput p1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    iget-object v5, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    iget v6, p0, Landroid/widget/ImageDecoder;->mZoom:F

    invoke-virtual {v5, v6}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->zoom(F)V

    invoke-direct {p0, v0}, Landroid/widget/ImageDecoder;->adjustCenter(F)V

    iget-object v5, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    invoke-virtual {v5}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->renderScreen()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v1

    .local v3, zoomTime:J
    const-string v5, "Image Decoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PERF: Zoom "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_0

    .end local v3           #zoomTime:J
    :cond_2
    const/high16 v5, 0x3f80

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    const/high16 p1, 0x3f80

    goto :goto_1
.end method

.method public zoomToPoint(FFF)Z
    .locals 11
    .parameter "zoomLevel"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    const-string v10, "Image Decoder"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .local v3, zoomStartTime:J
    const-string v7, "Image Decoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "zoomToLevel zoomLevel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-nez v7, :cond_0

    move v7, v9

    :goto_0
    return v7

    :cond_0
    const/high16 v7, 0x4110

    cmpl-float v7, p1, v7

    if-lez v7, :cond_2

    const/high16 p1, 0x4110

    :cond_1
    :goto_1
    iget v7, p0, Landroid/widget/ImageDecoder;->mZoom:F

    div-float v2, p1, v7

    .local v2, zoomRate:F
    iget v7, p0, Landroid/widget/ImageDecoder;->mPanX:F

    iget v8, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v8, p2, v8

    add-float/2addr v7, v8

    mul-float v0, v2, v7

    .local v0, newX:F
    iget v7, p0, Landroid/widget/ImageDecoder;->mPanY:F

    iget v8, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v8, p3, v8

    add-float/2addr v7, v8

    mul-float v1, v2, v7

    .local v1, newY:F
    iput p1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    iget-object v7, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    iget v8, p0, Landroid/widget/ImageDecoder;->mZoom:F

    invoke-virtual {v7, v8}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->zoom(F)V

    invoke-direct {p0, v0, v1, v9}, Landroid/widget/ImageDecoder;->panTo(FFZ)V

    iget-object v7, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    invoke-virtual {v7}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->renderScreen()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v3

    .local v5, zoomTime:J
    const-string v7, "Image Decoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PERF: Zoom "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto :goto_0

    .end local v0           #newX:F
    .end local v1           #newY:F
    .end local v2           #zoomRate:F
    .end local v5           #zoomTime:J
    :cond_2
    const/high16 v7, 0x3f80

    cmpg-float v7, p1, v7

    if-gez v7, :cond_1

    const/high16 p1, 0x3f80

    goto :goto_1
.end method
