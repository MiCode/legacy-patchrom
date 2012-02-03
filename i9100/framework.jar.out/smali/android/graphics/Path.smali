.class public Landroid/graphics/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Path$Direction;,
        Landroid/graphics/Path$FillType;
    }
.end annotation


# static fields
.field private static final sFillTypeArray:[Landroid/graphics/Path$FillType;


# instance fields
.field private final mNativePath:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Path$FillType;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Landroid/graphics/Path;->init1()I

    move-result v0

    iput v0, p0, Landroid/graphics/Path;->mNativePath:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, valNative:I
    if-eqz p1, :cond_0

    .line 43
    iget v0, p1, Landroid/graphics/Path;->mNativePath:I

    .line 45
    :cond_0
    invoke-static {v0}, Landroid/graphics/Path;->init2(I)I

    move-result v1

    iput v1, p0, Landroid/graphics/Path;->mNativePath:I

    .line 46
    return-void
.end method

.method private static native finalizer(I)V
.end method

.method private static native init1()I
.end method

.method private static native init2(I)I
.end method

.method private static native native_addArc(ILandroid/graphics/RectF;FF)V
.end method

.method private static native native_addCircle(IFFFI)V
.end method

.method private static native native_addOval(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_addPath(II)V
.end method

.method private static native native_addPath(IIFF)V
.end method

.method private static native native_addPath(III)V
.end method

.method private static native native_addRect(IFFFFI)V
.end method

.method private static native native_addRect(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_addRoundRect(ILandroid/graphics/RectF;FFI)V
.end method

.method private static native native_addRoundRect(ILandroid/graphics/RectF;[FI)V
.end method

.method private static native native_arcTo(ILandroid/graphics/RectF;FFZ)V
.end method

.method private static native native_close(I)V
.end method

.method private static native native_computeBounds(ILandroid/graphics/RectF;)V
.end method

.method private static native native_cubicTo(IFFFFFF)V
.end method

.method private static native native_getFillType(I)I
.end method

.method private static native native_incReserve(II)V
.end method

.method private static native native_isEmpty(I)Z
.end method

.method private static native native_isRect(ILandroid/graphics/RectF;)Z
.end method

.method private static native native_lineTo(IFF)V
.end method

.method private static native native_moveTo(IFF)V
.end method

.method private static native native_offset(IFF)V
.end method

.method private static native native_offset(IFFI)V
.end method

.method private static native native_quadTo(IFFFF)V
.end method

.method private static native native_rCubicTo(IFFFFFF)V
.end method

.method private static native native_rLineTo(IFF)V
.end method

.method private static native native_rMoveTo(IFF)V
.end method

.method private static native native_rQuadTo(IFFFF)V
.end method

.method private static native native_reset(I)V
.end method

.method private static native native_rewind(I)V
.end method

.method private static native native_set(II)V
.end method

.method private static native native_setFillType(II)V
.end method

.method private static native native_setLastPoint(IFF)V
.end method

.method private static native native_transform(II)V
.end method

.method private static native native_transform(III)V
.end method


# virtual methods
.method public addArc(Landroid/graphics/RectF;FF)V
    .locals 2
    .parameter "oval"
    .parameter "startAngle"
    .parameter "sweepAngle"

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 405
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need oval parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Path;->native_addArc(ILandroid/graphics/RectF;FF)V

    .line 408
    return-void
.end method

.method public addCircle(FFFLandroid/graphics/Path$Direction;)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "radius"
    .parameter "dir"

    .prologue
    .line 393
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Path;->native_addCircle(IFFFI)V

    .line 394
    return-void
.end method

.method public addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 2
    .parameter "oval"
    .parameter "dir"

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 379
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need oval parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p2, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Path;->native_addOval(ILandroid/graphics/RectF;I)V

    .line 382
    return-void
.end method

.method public addPath(Landroid/graphics/Path;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 460
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_addPath(II)V

    .line 461
    return-void
.end method

.method public addPath(Landroid/graphics/Path;FF)V
    .locals 2
    .parameter "src"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 451
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, v1, p2, p3}, Landroid/graphics/Path;->native_addPath(IIFF)V

    .line 452
    return-void
.end method

.method public addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 3
    .parameter "src"
    .parameter "matrix"

    .prologue
    .line 469
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    iget v2, p2, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Path;->native_addPath(III)V

    .line 470
    return-void
.end method

.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "dir"

    .prologue
    .line 368
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v5, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_addRect(IFFFFI)V

    .line 369
    return-void
.end method

.method public addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 2
    .parameter "rect"
    .parameter "dir"

    .prologue
    .line 351
    if-nez p1, :cond_0

    .line 352
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p2, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Path;->native_addRect(ILandroid/graphics/RectF;I)V

    .line 355
    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    .locals 2
    .parameter "rect"
    .parameter "rx"
    .parameter "ry"
    .parameter "dir"

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Path;->native_addRoundRect(ILandroid/graphics/RectF;FFI)V

    .line 423
    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .locals 2
    .parameter "rect"
    .parameter "radii"
    .parameter "dir"

    .prologue
    .line 435
    if-nez p1, :cond_0

    .line 436
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    array-length v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 439
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "radii[] needs 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p3, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Path;->native_addRoundRect(ILandroid/graphics/RectF;[FI)V

    .line 442
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FF)V
    .locals 2
    .parameter "oval"
    .parameter "startAngle"
    .parameter "sweepAngle"

    .prologue
    .line 317
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Path;->native_arcTo(ILandroid/graphics/RectF;FFZ)V

    .line 318
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FFZ)V
    .locals 1
    .parameter "oval"
    .parameter "startAngle"
    .parameter "sweepAngle"
    .parameter "forceMoveTo"

    .prologue
    .line 302
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_arcTo(ILandroid/graphics/RectF;FFZ)V

    .line 303
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_close(I)V

    .line 326
    return-void
.end method

.method public computeBounds(Landroid/graphics/RectF;Z)V
    .locals 1
    .parameter "bounds"
    .parameter "exact"

    .prologue
    .line 164
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_computeBounds(ILandroid/graphics/RectF;)V

    .line 165
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 7
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"

    .prologue
    .line 274
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->native_cubicTo(IFFFFFF)V

    .line 275
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
    .line 535
    :try_start_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 539
    return-void

    .line 537
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1}, Landroid/graphics/Path;->native_getFillType(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public incReserve(I)V
    .locals 1
    .parameter "extraPtCount"

    .prologue
    .line 175
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_incReserve(II)V

    .line 176
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_isEmpty(I)Z

    move-result v0

    return v0
.end method

.method public isInverseFillType()Z
    .locals 2

    .prologue
    .line 120
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1}, Landroid/graphics/Path;->native_getFillType(I)I

    move-result v0

    .line 121
    .local v0, ft:I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRect(Landroid/graphics/RectF;)Z
    .locals 1
    .parameter "rect"

    .prologue
    .line 152
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_isRect(ILandroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 211
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_lineTo(IFF)V

    .line 212
    return-void
.end method

.method public moveTo(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 185
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_moveTo(IFF)V

    .line 186
    return-void
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    return v0
.end method

.method public offset(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 495
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_offset(IFF)V

    .line 496
    return-void
.end method

.method public offset(FFLandroid/graphics/Path;)V
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "dst"

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, dstNative:I
    if-eqz p3, :cond_0

    .line 483
    iget v0, p3, Landroid/graphics/Path;->mNativePath:I

    .line 485
    :cond_0
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1, p1, p2, v0}, Landroid/graphics/Path;->native_offset(IFFI)V

    .line 486
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 1
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 239
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_quadTo(IFFFF)V

    .line 240
    return-void
.end method

.method public rCubicTo(FFFFFF)V
    .locals 7
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"

    .prologue
    .line 284
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->native_rCubicTo(IFFFFFF)V

    .line 285
    return-void
.end method

.method public rLineTo(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 225
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_rLineTo(IFF)V

    .line 226
    return-void
.end method

.method public rMoveTo(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 199
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_rMoveTo(IFF)V

    .line 200
    return-void
.end method

.method public rQuadTo(FFFF)V
    .locals 1
    .parameter "dx1"
    .parameter "dy1"
    .parameter "dx2"
    .parameter "dy2"

    .prologue
    .line 257
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_rQuadTo(IFFFF)V

    .line 258
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_reset(I)V

    .line 54
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_rewind(I)V

    .line 62
    return-void
.end method

.method public set(Landroid/graphics/Path;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 67
    if-eq p0, p1, :cond_0

    .line 68
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_set(II)V

    .line 70
    :cond_0
    return-void
.end method

.method public setFillType(Landroid/graphics/Path$FillType;)V
    .locals 2
    .parameter "ft"

    .prologue
    .line 111
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path$FillType;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_setFillType(II)V

    .line 112
    return-void
.end method

.method public setLastPoint(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 505
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_setLastPoint(IFF)V

    .line 506
    return-void
.end method

.method public toggleInverseFillType()V
    .locals 2

    .prologue
    .line 128
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1}, Landroid/graphics/Path;->native_getFillType(I)I

    move-result v0

    .line 129
    .local v0, ft:I
    xor-int/lit8 v0, v0, 0x2

    .line 130
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1, v0}, Landroid/graphics/Path;->native_setFillType(II)V

    .line 131
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    .line 530
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_transform(II)V

    .line 531
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3
    .parameter "matrix"
    .parameter "dst"

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, dstNative:I
    if-eqz p2, :cond_0

    .line 519
    iget v0, p2, Landroid/graphics/Path;->mNativePath:I

    .line 521
    :cond_0
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    iget v2, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v1, v2, v0}, Landroid/graphics/Path;->native_transform(III)V

    .line 522
    return-void
.end method
