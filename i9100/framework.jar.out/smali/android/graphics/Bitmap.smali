.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;


# instance fields
.field mDensity:I

.field private mHeight:I

.field private final mIsMutable:Z

.field private final mNativeBitmap:I

.field private mNinePatchChunk:[B

.field private mRecycled:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 897
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IZ[BI)V
    .locals 2
    .parameter "nativeBitmap"
    .parameter "isMutable"
    .parameter "ninePatchChunk"
    .parameter "density"

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 45
    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 49
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    iput v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error: native bitmap is 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iput p1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    .line 88
    iput-boolean p2, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    .line 89
    iput-object p3, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 90
    if-ltz p4, :cond_1

    .line 91
    iput p4, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 93
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private checkPixelAccess(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 792
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 793
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 797
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_1
    return-void
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "offset"
    .parameter "stride"
    .parameter "pixels"

    .prologue
    .line 815
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 816
    if-gez p3, :cond_0

    .line 817
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 819
    :cond_0
    if-gez p4, :cond_1

    .line 820
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 822
    :cond_1
    add-int v2, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 823
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 826
    :cond_2
    add-int v2, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 827
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 830
    :cond_3
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p3, :cond_4

    .line 831
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 833
    :cond_4
    const/4 v2, 0x1

    sub-int v2, p4, v2

    mul-int/2addr v2, p6

    add-int v0, p5, v2

    .line 834
    .local v0, lastScanline:I
    array-length v1, p7

    .line 835
    .local v1, length:I
    if-ltz p5, :cond_5

    add-int v2, p5, p3

    if-gt v2, v1, :cond_5

    if-ltz v0, :cond_5

    add-int v2, v0, p3

    if-le v2, v1, :cond_6

    .line 838
    :cond_5
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 840
    :cond_6
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 179
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    return-void
.end method

.method private static checkWidthHeight(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 206
    if-gtz p0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    if-gtz p1, :cond_1

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    return-void
.end method

.method private static checkXYSign(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 191
    if-gez p0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    if-gez p1, :cond_1

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    .line 477
    const/4 v0, 0x0

    iget v5, p2, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x1

    move v2, p0

    move v3, p0

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 478
    .local v7, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v7, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 479
    return-object v7
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 367
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 383
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "m"
    .parameter "filter"

    .prologue
    .line 407
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 408
    invoke-static {p3, p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 409
    add-int v0, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 410
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string/jumbo p1, "x + width must be <= bitmap.width()"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 412
    .restart local p0
    .restart local p1
    :cond_0
    add-int v0, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 413
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string/jumbo p1, "y + height must be <= bitmap.height()"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 417
    .restart local p0
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p3, v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p4, v0, :cond_3

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :cond_2
    :goto_0
    return-object p0

    .line 422
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_3
    move v3, p3

    .line 423
    .local v3, neww:I
    move v2, p4

    .line 424
    .local v2, newh:I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 428
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v5, p2, p4

    invoke-direct {v4, p1, p2, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 429
    .local v4, srcR:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    const/4 p1, 0x0

    const/4 p2, 0x0

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 431
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    .local v1, dstR:Landroid/graphics/RectF;
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 432
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v3, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 434
    .local p1, bitmap:Landroid/graphics/Bitmap;
    const/4 p2, 0x0

    .local p2, paint:Landroid/graphics/Paint;
    move-object p4, p2

    .end local p2           #paint:Landroid/graphics/Paint;
    .local p4, paint:Landroid/graphics/Paint;
    move p3, v3

    .end local v3           #neww:I
    .local p3, neww:I
    move p2, v2

    .line 459
    .end local v2           #newh:I
    .local p2, newh:I
    :goto_2
    iget p2, p0, Landroid/graphics/Bitmap;->mDensity:I

    .end local p2           #newh:I
    iput p2, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 461
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 462
    invoke-virtual {v0, p0, v4, v1, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object p0, p1

    .line 464
    goto :goto_0

    .line 432
    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .end local p3           #neww:I
    .end local p4           #paint:Landroid/graphics/Paint;
    .restart local v2       #newh:I
    .restart local v3       #neww:I
    :cond_5
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 439
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result p1

    if-nez p1, :cond_a

    :cond_7
    const/4 p1, 0x1

    move p3, p1

    .line 440
    .local p3, hasAlpha:Z
    :goto_3
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 441
    .local p2, deviceR:Landroid/graphics/RectF;
    invoke-virtual {p5, p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 442
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 443
    .end local v3           #neww:I
    .local v2, neww:I
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p4

    .line 444
    .local p4, newh:I
    if-eqz p3, :cond_b

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_4
    invoke-static {v2, p4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 445
    .restart local p1       #bitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_8

    .line 446
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 448
    .end local p3           #hasAlpha:Z
    :cond_8
    iget p3, p2, Landroid/graphics/RectF;->left:F

    neg-float p3, p3

    iget p2, p2, Landroid/graphics/RectF;->top:F

    .end local p2           #deviceR:Landroid/graphics/RectF;
    neg-float p2, p2

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 449
    invoke-virtual {v0, p5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 450
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 451
    .local p2, paint:Landroid/graphics/Paint;
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 452
    invoke-virtual {p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result p3

    if-nez p3, :cond_9

    .line 453
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_9
    move p3, v2

    .end local v2           #neww:I
    .local p3, neww:I
    move v6, p4

    .end local p4           #newh:I
    .local v6, newh:I
    move-object p4, p2

    .end local p2           #paint:Landroid/graphics/Paint;
    .local p4, paint:Landroid/graphics/Paint;
    move p2, v6

    .end local v6           #newh:I
    .local p2, newh:I
    goto :goto_2

    .line 439
    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .end local p2           #newh:I
    .end local p3           #neww:I
    .end local p4           #paint:Landroid/graphics/Paint;
    .local v2, newh:I
    .restart local v3       #neww:I
    :cond_a
    const/4 p1, 0x0

    move p3, p1

    goto :goto_3

    .line 444
    .end local v3           #neww:I
    .local v2, neww:I
    .local p2, deviceR:Landroid/graphics/RectF;
    .local p3, hasAlpha:Z
    .local p4, newh:I
    :cond_b
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_4
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 503
    invoke-static {p3, p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 504
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    const/4 v0, 0x1

    sub-int v0, p4, v0

    mul-int/2addr v0, p2

    add-int v7, p1, v0

    .line 508
    .local v7, lastScanline:I
    array-length v8, p0

    .line 509
    .local v8, length:I
    if-ltz p1, :cond_1

    add-int v0, p1, p3

    if-gt v0, v8, :cond_1

    if-ltz v7, :cond_1

    add-int v0, v7, p3

    if-le v0, v8, :cond_2

    .line 511
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 513
    :cond_2
    iget v5, p5, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 533
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "src"
    .parameter "dstWidth"
    .parameter "dstHeight"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    const-class v10, Landroid/graphics/Bitmap;

    .line 334
    const-class v0, Landroid/graphics/Bitmap;

    monitor-enter v10

    .line 336
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 337
    .local v5, m:Landroid/graphics/Matrix;
    const/4 v2, 0x0

    sput-object v2, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 338
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    if-nez v5, :cond_0

    .line 341
    new-instance v5, Landroid/graphics/Matrix;

    .end local v5           #m:Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 344
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 345
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 346
    .local v4, height:I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 347
    .local v8, sx:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 348
    .local v9, sy:F
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v0, p0

    move v2, v1

    move v6, p3

    .line 349
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 351
    .local v7, b:Landroid/graphics/Bitmap;
    const-class v0, Landroid/graphics/Bitmap;

    monitor-enter v10

    .line 353
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    .line 354
    sput-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 356
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 358
    return-object v7

    .line 338
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v8           #sx:F
    .end local v9           #sy:F
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 356
    .restart local v3       #width:I
    .restart local v4       #height:I
    .restart local v5       #m:Landroid/graphics/Matrix;
    .restart local v7       #b:Landroid/graphics/Bitmap;
    .restart local v8       #sx:F
    .restart local v9       #sy:F
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static getDefaultDensity()I
    .locals 1

    .prologue
    .line 65
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_0

    .line 66
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 69
    :goto_0
    return v0

    .line 68
    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 69
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    goto :goto_0
.end method

.method private static native nativeCompress(IIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeConfig(I)I
.end method

.method private static native nativeCopy(IIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeErase(II)V
.end method

.method private static native nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetPixel(III)I
.end method

.method private static native nativeGetPixels(I[IIIIIII)V
.end method

.method private static native nativeHasAlpha(I)Z
.end method

.method private static native nativeHeight(I)I
.end method

.method private static native nativePrepareToDraw(I)V
.end method

.method private static native nativeRecycle(I)V
.end method

.method private static native nativeRowBytes(I)I
.end method

.method private static native nativeSameAs(II)Z
.end method

.method private static native nativeSetHasAlpha(IZ)V
.end method

.method private static native nativeSetPixel(IIII)V
.end method

.method private static native nativeSetPixels(I[IIIIIII)V
.end method

.method private static native nativeWidth(I)I
.end method

.method private static native nativeWriteToParcel(IZILandroid/os/Parcel;)Z
.end method

.method public static scaleFromDensity(III)I
    .locals 2
    .parameter "size"
    .parameter "sdensity"
    .parameter "tdensity"

    .prologue
    .line 668
    if-eqz p1, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    move v0, p0

    .line 673
    :goto_0
    return v0

    :cond_1
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int/2addr v0, p1

    goto :goto_0
.end method

.method public static setDefaultDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 61
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 62
    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 3
    .parameter "format"
    .parameter "quality"
    .parameter "stream"

    .prologue
    .line 581
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 583
    if-nez p3, :cond_0

    .line 584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 586
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    .line 587
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_2
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v2, 0x1000

    new-array v2, v2, [B

    invoke-static {v0, v1, p2, p3, v2}, Landroid/graphics/Bitmap;->nativeCompress(IIILjava/io/OutputStream;[B)Z

    move-result v0

    return v0
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "config"
    .parameter "isMutable"

    .prologue
    .line 314
    const-string v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 315
    iget v1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v2, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v1, v2, p2}, Landroid/graphics/Bitmap;->nativeCopy(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 316
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 317
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 319
    :cond_0
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 10
    .parameter "src"

    .prologue
    .line 277
    const-string v6, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v6}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 281
    .local v4, elements:I
    instance-of v6, p1, Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_0

    .line 282
    const/4 v5, 0x0

    .line 291
    .local v5, shift:I
    :goto_0
    int-to-long v6, v4

    shl-long v2, v6, v5

    .line 292
    .local v2, bufferBytes:J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-long v8, v8

    mul-long v0, v6, v8

    .line 294
    .local v0, bitmapBytes:J
    cmp-long v6, v2, v0

    if-gez v6, :cond_3

    .line 295
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 283
    .end local v0           #bitmapBytes:J
    .end local v2           #bufferBytes:J
    .end local v5           #shift:I
    :cond_0
    instance-of v6, p1, Ljava/nio/ShortBuffer;

    if-eqz v6, :cond_1

    .line 284
    const/4 v5, 0x1

    .restart local v5       #shift:I
    goto :goto_0

    .line 285
    .end local v5           #shift:I
    :cond_1
    instance-of v6, p1, Ljava/nio/IntBuffer;

    if-eqz v6, :cond_2

    .line 286
    const/4 v5, 0x2

    .restart local v5       #shift:I
    goto :goto_0

    .line 288
    .end local v5           #shift:I
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "unsupported Buffer subclass"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 298
    .restart local v0       #bitmapBytes:J
    .restart local v2       #bufferBytes:J
    .restart local v5       #shift:I
    :cond_3
    iget v6, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v6, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V

    .line 299
    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 11
    .parameter "dst"

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 245
    .local v2, elements:I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    .line 246
    const/4 v6, 0x0

    .line 255
    .local v6, shift:I
    :goto_0
    int-to-long v7, v2

    shl-long v0, v7, v6

    .line 256
    .local v0, bufferSize:J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-long v9, v9

    mul-long v3, v7, v9

    .line 258
    .local v3, pixelSize:J
    cmp-long v7, v0, v3

    if-gez v7, :cond_3

    .line 259
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 247
    .end local v0           #bufferSize:J
    .end local v3           #pixelSize:J
    .end local v6           #shift:I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    .line 248
    const/4 v6, 0x1

    .restart local v6       #shift:I
    goto :goto_0

    .line 249
    .end local v6           #shift:I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    .line 250
    const/4 v6, 0x2

    .restart local v6       #shift:I
    goto :goto_0

    .line 252
    .end local v6           #shift:I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 262
    .restart local v0       #bufferSize:J
    .restart local v3       #pixelSize:J
    .restart local v6       #shift:I
    :cond_3
    iget v7, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V

    .line 265
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 266
    .local v5, position:I
    int-to-long v7, v5

    shr-long v9, v3, v6

    add-long/2addr v7, v9

    long-to-int v5, v7

    .line 267
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 268
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .locals 2
    .parameter "c"

    .prologue
    .line 730
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 735
    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 944
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "paint"
    .parameter "offsetXY"

    .prologue
    .line 973
    const-string v2, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v2}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 974
    if-eqz p1, :cond_0

    iget v2, p1, Landroid/graphics/Paint;->mNativePaint:I

    move v1, v2

    .line 975
    .local v1, nativePaint:I
    :goto_0
    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 976
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 977
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to extractAlpha on Bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 974
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #nativePaint:I
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 979
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #nativePaint:I
    :cond_1
    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v2, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 980
    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1014
    :try_start_0
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1018
    return-void

    .line 1016
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeConfig(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 607
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHeight(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    goto :goto_0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getPixel(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 748
    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 749
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 750
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(III)I

    move-result v0

    return v0
.end method

.method public getPixels([IIIIIII)V
    .locals 8
    .parameter "pixels"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 776
    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 777
    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 780
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 781
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeGetPixels(I[IIIIIII)V

    goto :goto_0
.end method

.method public final getRowBytes()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRowBytes(I)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2
    .parameter "targetDensity"

    .prologue
    .line 661
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 3
    .parameter "canvas"

    .prologue
    .line 623
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 3
    .parameter "metrics"

    .prologue
    .line 639
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(I)I
    .locals 2
    .parameter "targetDensity"

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 3
    .parameter "canvas"

    .prologue
    .line 615
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 3
    .parameter "metrics"

    .prologue
    .line 631
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 602
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeWidth(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    goto :goto_0
.end method

.method public final hasAlpha()Z
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasAlpha(I)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 1070
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    return v0
.end method

.method public prepareToDraw()V
    .locals 1

    .prologue
    .line 1008
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativePrepareToDraw(I)V

    .line 1009
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_0

    .line 158
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRecycle(I)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 162
    :cond_0
    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 991
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeSameAs(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 133
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 134
    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 1
    .parameter "hasAlpha"

    .prologue
    .line 721
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    .line 722
    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0
    .parameter "chunk"

    .prologue
    .line 144
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 145
    return-void
.end method

.method public setPixel(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "color"

    .prologue
    .line 854
    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 858
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 859
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(IIII)V

    .line 860
    return-void
.end method

.method public setPixels([IIIIIII)V
    .locals 8
    .parameter "pixels"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 885
    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 889
    :cond_0
    if-eqz p6, :cond_1

    if-nez p7, :cond_2

    .line 895
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 892
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 893
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeSetPixels(I[IIIIIII)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 930
    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 931
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(IZILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_0
    return-void
.end method
