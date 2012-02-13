.class public Landroid/graphics/Canvas;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Canvas$VertexMode;,
        Landroid/graphics/Canvas$EdgeType;
    }
.end annotation


# static fields
.field public static final ALL_SAVE_FLAG:I = 0x1f

.field public static final CLIP_SAVE_FLAG:I = 0x2

.field public static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field public static final FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field public static final MATRIX_SAVE_FLAG:I = 0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field mDensity:I

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private mGL:Ljavax/microedition/khronos/opengles/GL;

.field final mNativeCanvas:I

.field private mScreenDensity:I

.field private mSurfaceFormat:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    invoke-static {v0}, Landroid/graphics/Canvas;->initRaster(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "nativeCanvas"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Immutable bitmap passed to Canvas constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Canvas;->initRaster(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 1
    .parameter "gl"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    invoke-static {}, Landroid/graphics/Canvas;->initGL()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iput-object p1, p0, Landroid/graphics/Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL;

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void
.end method

.method private static checkRange(III)V
    .locals 1
    .parameter "length"
    .parameter "offset"
    .parameter "count"

    .prologue
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    if-le v0, p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method private static native finalizer(I)V
.end method

.method public static native freeCaches()V
.end method

.method public static freeGlCaches()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    return-void
.end method

.method private static native initGL()I
.end method

.method private static native initRaster(I)I
.end method

.method private static native nativeDrawBitmapMatrix(IIII)V
.end method

.method private static native nativeDrawBitmapMesh(IIII[FI[III)V
.end method

.method private static native nativeDrawVertices(III[FI[FI[II[SIII)V
.end method

.method private static native nativeSetDrawFilter(II)V
.end method

.method private static native nativeSetViewport(III)V
.end method

.method private static native native_clipPath(III)Z
.end method

.method private static native native_clipRect(IFFFFI)Z
.end method

.method private static native native_clipRegion(III)Z
.end method

.method private static native native_concat(II)V
.end method

.method private static native native_drawARGB(IIIII)V
.end method

.method private static native native_drawArc(ILandroid/graphics/RectF;FFZI)V
.end method

.method private native native_drawBitmap(IIFFIIII)V
.end method

.method private static native native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/Rect;III)V
.end method

.method private native native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/RectF;III)V
.end method

.method private static native native_drawBitmap(I[IIIFFIIZI)V
.end method

.method private static native native_drawCircle(IFFFI)V
.end method

.method private static native native_drawColor(II)V
.end method

.method private static native native_drawColor(III)V
.end method

.method private static native native_drawLine(IFFFFI)V
.end method

.method private static native native_drawOval(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_drawPaint(II)V
.end method

.method private static native native_drawPath(III)V
.end method

.method private static native native_drawPicture(II)V
.end method

.method private static native native_drawPosText(ILjava/lang/String;[FI)V
.end method

.method private static native native_drawPosText(I[CII[FI)V
.end method

.method private static native native_drawRGB(IIII)V
.end method

.method private static native native_drawRect(IFFFFI)V
.end method

.method private static native native_drawRect(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_drawRoundRect(ILandroid/graphics/RectF;FFI)V
.end method

.method private static native native_drawText(ILjava/lang/String;IIFFI)V
.end method

.method private static native native_drawText(I[CIIFFI)V
.end method

.method private static native native_drawTextOnPath(ILjava/lang/String;IFFI)V
.end method

.method private static native native_drawTextOnPath(I[CIIIFFI)V
.end method

.method private static native native_getCTM(II)V
.end method

.method private static native native_getClipBounds(ILandroid/graphics/Rect;)Z
.end method

.method private static native native_quickReject(IFFFFI)Z
.end method

.method private static native native_quickReject(III)Z
.end method

.method private static native native_quickReject(ILandroid/graphics/RectF;I)Z
.end method

.method private static native native_saveLayer(IFFFFII)I
.end method

.method private static native native_saveLayer(ILandroid/graphics/RectF;II)I
.end method

.method private static native native_saveLayerAlpha(IFFFFII)I
.end method

.method private static native native_saveLayerAlpha(ILandroid/graphics/RectF;II)I
.end method

.method private static native native_setBitmap(II)V
.end method

.method private static native native_setMatrix(II)V
.end method

.method private static throwIfRecycled(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public clipPath(Landroid/graphics/Path;)Z
    .locals 1
    .parameter "path"

    .prologue
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 3
    .parameter "path"
    .parameter "op"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_clipPath(III)Z

    move-result v0

    return v0
.end method

.method public native clipRect(FFFF)Z
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "op"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public native clipRect(IIII)Z
.end method

.method public native clipRect(Landroid/graphics/Rect;)Z
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 6
    .parameter "rect"
    .parameter "op"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public native clipRect(Landroid/graphics/RectF;)Z
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 6
    .parameter "rect"
    .parameter "op"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .locals 1
    .parameter "region"

    .prologue
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 3
    .parameter "region"
    .parameter "op"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Region;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_clipRegion(III)Z

    move-result v0

    return v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_concat(II)V

    return-void
.end method

.method public drawARGB(IIII)V
    .locals 1
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->native_drawARGB(IIIII)V

    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 6
    .parameter "oval"
    .parameter "startAngle"
    .parameter "sweepAngle"
    .parameter "useCenter"
    .parameter "paint"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawArc(ILandroid/graphics/RectF;FFZI)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 9
    .parameter "bitmap"
    .parameter "left"
    .parameter "top"
    .parameter "paint"

    .prologue
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz p4, :cond_0

    iget v0, p4, Landroid/graphics/Paint;->mNativePaint:I

    move v5, v0

    :goto_0
    iget v6, p0, Landroid/graphics/Canvas;->mDensity:I

    iget v7, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v8, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Canvas;->native_drawBitmap(IIFFIIII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 4
    .parameter "bitmap"
    .parameter "matrix"
    .parameter "paint"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()I

    move-result v2

    if-eqz p3, :cond_0

    iget v3, p3, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nativeDrawBitmapMatrix(IIII)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v1

    if-eqz p4, :cond_1

    iget v2, p4, Landroid/graphics/Paint;->mNativePaint:I

    move v4, v2

    :goto_0
    iget v5, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v6, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/Rect;III)V

    return-void

    :cond_1
    const/4 v2, 0x0

    move v4, v2

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz p4, :cond_1

    iget v0, p4, Landroid/graphics/Paint;->mNativePaint:I

    move v5, v0

    :goto_0
    iget v6, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v7, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/RectF;III)V

    return-void

    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 14
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    if-gez p6, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-gez p7, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move v0, v2

    move/from16 v1, p6

    if-ge v0, v1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v2, 0x1

    sub-int v2, p7, v2

    mul-int v2, v2, p3

    add-int v12, p2, v2

    .local v12, lastScanline:I
    array-length v13, p1

    .local v13, length:I
    if-ltz p2, :cond_3

    add-int v2, p2, p6

    if-gt v2, v13, :cond_3

    if-ltz v12, :cond_3

    add-int v2, v12, p6

    if-le v2, v13, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_4
    if-eqz p6, :cond_5

    if-nez p7, :cond_6

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget v2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p9, :cond_7

    move-object/from16 v0, p9

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v3, v0

    move v11, v3

    :goto_1
    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v11}, Landroid/graphics/Canvas;->native_drawBitmap(I[IIIFFIIZI)V

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    move v11, v3

    goto :goto_1
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 13
    .parameter "bitmap"
    .parameter "meshWidth"
    .parameter "meshHeight"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "paint"

    .prologue
    or-int v3, p2, p3

    or-int v3, v3, p5

    or-int v3, v3, p7

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x1

    mul-int v12, v3, v4

    .local v12, count:I
    move-object/from16 v0, p4

    array-length v0, v0

    move v3, v0

    mul-int/lit8 v4, v12, 0x2

    move v0, v3

    move/from16 v1, p5

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    if-eqz p6, :cond_3

    move-object/from16 v0, p6

    array-length v0, v0

    move v3, v0

    move v0, v3

    move/from16 v1, p7

    move v2, v12

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    :cond_3
    iget v3, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v4

    if-eqz p8, :cond_4

    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v5, v0

    move v11, v5

    :goto_1
    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v3 .. v11}, Landroid/graphics/Canvas;->nativeDrawBitmapMesh(IIII[FI[III)V

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 2
    .parameter "cx"
    .parameter "cy"
    .parameter "radius"
    .parameter "paint"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->native_drawCircle(IFFFI)V

    return-void
.end method

.method public drawColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_drawColor(II)V

    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .parameter "color"
    .parameter "mode"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_drawColor(III)V

    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "stopX"
    .parameter "stopY"
    .parameter "paint"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawLine(IFFFFI)V

    return-void
.end method

.method public native drawLines([FIILandroid/graphics/Paint;)V
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .parameter "pts"
    .parameter "paint"

    .prologue
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "oval"
    .parameter "paint"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_drawOval(ILandroid/graphics/RectF;I)V

    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 2
    .parameter "paint"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_drawPaint(II)V

    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 3
    .parameter "path"
    .parameter "paint"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_drawPath(III)V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 2
    .parameter "picture"

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Picture;->ni()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_drawPicture(II)V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "picture"
    .parameter "dst"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3
    .parameter "picture"
    .parameter "dst"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public native drawPoint(FFLandroid/graphics/Paint;)V
.end method

.method public native drawPoints([FIILandroid/graphics/Paint;)V
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .parameter "pts"
    .parameter "paint"

    .prologue
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 2
    .parameter "text"
    .parameter "pos"
    .parameter "paint"

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    array-length v1, p2

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p3, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Canvas;->native_drawPosText(ILjava/lang/String;[FI)V

    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 6
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "pos"
    .parameter "paint"

    .prologue
    if-ltz p2, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawPosText(I[CII[FI)V

    return-void
.end method

.method public drawRGB(III)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_drawRGB(IIII)V

    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawRect(IFFFFI)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "r"
    .parameter "paint"

    .prologue
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "rect"
    .parameter "paint"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_drawRect(ILandroid/graphics/RectF;I)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 2
    .parameter "rect"
    .parameter "rx"
    .parameter "ry"
    .parameter "paint"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->native_drawRoundRect(ILandroid/graphics/RectF;FFI)V

    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    const/4 v3, 0x0

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/text/SpannedString;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v7}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFI)V

    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    sub-int v1, p3, p2

    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .local v2, buf:[C
    invoke-static {p1, p2, p3, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v4, p3, p2

    move-object v1, p0

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public native drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v6, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFI)V

    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 7
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v6, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawText(I[CIIFFI)V

    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 6
    .parameter "text"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p2}, Landroid/graphics/Path;->ni()I

    move-result v2

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawTextOnPath(ILjava/lang/String;IFFI)V

    :cond_0
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 8
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    if-ltz p2, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p4}, Landroid/graphics/Path;->ni()I

    move-result v4

    iget v7, p7, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawTextOnPath(I[CIIIFFI)V

    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 16
    .parameter "mode"
    .parameter "vertexCount"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "texs"
    .parameter "texOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "indices"
    .parameter "indexOffset"
    .parameter "indexCount"
    .parameter "paint"

    .prologue
    move-object/from16 v0, p3

    array-length v0, v0

    move v3, v0

    move v0, v3

    move/from16 v1, p4

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v0, v0

    move v3, v0

    move v0, v3

    move/from16 v1, p6

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    :cond_0
    if-eqz p7, :cond_1

    move-object/from16 v0, p7

    array-length v0, v0

    move v3, v0

    move v0, v3

    move/from16 v1, p8

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    :cond_1
    if-eqz p9, :cond_2

    move-object/from16 v0, p9

    array-length v0, v0

    move v3, v0

    move v0, v3

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    move v4, v0

    move-object/from16 v0, p12

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v15, v0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v3 .. v15}, Landroid/graphics/Canvas;->nativeDrawVertices(III[FI[FI[II[SIII)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0}, Landroid/graphics/Canvas;->finalizer(I)V

    :cond_0
    return-void
.end method

.method public final getClipBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "bounds"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_getClipBounds(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getDensity()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL;

    return-object v0
.end method

.method public native getHeight()I
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "ctm"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_getCTM(II)V

    return-void
.end method

.method public native getSaveCount()I
.end method

.method public native getWidth()I
.end method

.method public native isOpaque()Z
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "type"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_quickReject(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 3
    .parameter "path"
    .parameter "type"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->native_quickReject(III)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 2
    .parameter "rect"
    .parameter "type"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p2, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Canvas;->native_quickReject(ILandroid/graphics/RectF;I)Z

    move-result v0

    return v0
.end method

.method public native restore()V
.end method

.method public native restoreToCount(I)V
.end method

.method public native rotate(F)V
.end method

.method public final rotate(FFF)V
    .locals 2
    .parameter "degrees"
    .parameter "px"
    .parameter "py"

    .prologue
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public native save()I
.end method

.method public native save(I)I
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"
    .parameter "saveFlags"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p5, :cond_0

    iget v1, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v5, v1

    :goto_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_saveLayer(IFFFFII)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x0

    move v5, v1

    goto :goto_0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 2
    .parameter "bounds"
    .parameter "paint"
    .parameter "saveFlags"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p2, :cond_0

    iget v1, p2, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    invoke-static {v0, p1, v1, p3}, Landroid/graphics/Canvas;->native_saveLayer(ILandroid/graphics/RectF;II)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "alpha"
    .parameter "saveFlags"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_saveLayerAlpha(IFFFFII)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 2
    .parameter "bounds"
    .parameter "alpha"
    .parameter "saveFlags"

    .prologue
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_saveLayerAlpha(ILandroid/graphics/RectF;II)I

    move-result v0

    return v0
.end method

.method public native scale(FF)V
.end method

.method public final scale(FFFF)V
    .locals 2
    .parameter "sx"
    .parameter "sy"
    .parameter "px"
    .parameter "py"

    .prologue
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, p3

    neg-float v1, p4

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t set a bitmap device on a GL canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfRecycled(Landroid/graphics/Bitmap;)V

    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_setBitmap(II)V

    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void
.end method

.method public setDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    const/4 v0, 0x0

    .local v0, nativeFilter:I
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/DrawFilter;->mNativeInt:I

    :cond_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v1, v0}, Landroid/graphics/Canvas;->nativeSetDrawFilter(II)V

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/graphics/Canvas;->native_setMatrix(II)V

    return-void

    :cond_0
    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    goto :goto_0
.end method

.method public setScreenDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    iput p1, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    return-void
.end method

.method public setViewport(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    iget-object v0, p0, Landroid/graphics/Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Canvas;->nativeSetViewport(III)V

    :cond_0
    return-void
.end method

.method public native skew(FF)V
.end method

.method public native translate(FF)V
.end method
