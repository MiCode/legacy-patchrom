.class public Landroid/graphics/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Matrix$ScaleToFit;
    }
.end annotation


# static fields
.field public static final MPERSP_0:I = 0x6

.field public static final MPERSP_1:I = 0x7

.field public static final MPERSP_2:I = 0x8

.field public static final MSCALE_X:I = 0x0

.field public static final MSCALE_Y:I = 0x4

.field public static final MSKEW_X:I = 0x1

.field public static final MSKEW_Y:I = 0x3

.field public static final MTRANS_X:I = 0x2

.field public static final MTRANS_Y:I = 0x5


# instance fields
.field native_instance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Matrix;->native_create(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Matrix;->native_instance:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Matrix;->native_instance:I

    :goto_0
    invoke-static {v0}, Landroid/graphics/Matrix;->native_create(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Matrix;->native_instance:I

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkPointArrays([FI[FII)V
    .locals 3
    .parameter "src"
    .parameter "srcIndex"
    .parameter "dst"
    .parameter "dstIndex"
    .parameter "pointCount"

    .prologue
    .line 359
    shl-int/lit8 v2, p4, 0x1

    add-int v1, p1, v2

    .line 360
    .local v1, srcStop:I
    shl-int/lit8 v2, p4, 0x1

    add-int v0, p3, v2

    .line 361
    .local v0, dstStop:I
    or-int v2, p4, p1

    or-int/2addr v2, p3

    or-int/2addr v2, v1

    or-int/2addr v2, v0

    if-ltz v2, :cond_0

    array-length v2, p0

    if-gt v1, v2, :cond_0

    array-length v2, p2

    if-le v0, v2, :cond_1

    .line 363
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 365
    :cond_1
    return-void
.end method

.method private static native finalizer(I)V
.end method

.method private static native native_create(I)I
.end method

.method private static native native_equals(II)Z
.end method

.method private static native native_getValues(I[F)V
.end method

.method private static native native_invert(II)Z
.end method

.method private static native native_isIdentity(I)Z
.end method

.method private static native native_mapPoints(I[FI[FIIZ)V
.end method

.method private static native native_mapRadius(IF)F
.end method

.method private static native native_mapRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Z
.end method

.method private static native native_postConcat(II)Z
.end method

.method private static native native_postRotate(IF)Z
.end method

.method private static native native_postRotate(IFFF)Z
.end method

.method private static native native_postScale(IFF)Z
.end method

.method private static native native_postScale(IFFFF)Z
.end method

.method private static native native_postSkew(IFF)Z
.end method

.method private static native native_postSkew(IFFFF)Z
.end method

.method private static native native_postTranslate(IFF)Z
.end method

.method private static native native_preConcat(II)Z
.end method

.method private static native native_preRotate(IF)Z
.end method

.method private static native native_preRotate(IFFF)Z
.end method

.method private static native native_preScale(IFF)Z
.end method

.method private static native native_preScale(IFFFF)Z
.end method

.method private static native native_preSkew(IFF)Z
.end method

.method private static native native_preSkew(IFFFF)Z
.end method

.method private static native native_preTranslate(IFF)Z
.end method

.method private static native native_rectStaysRect(I)Z
.end method

.method private static native native_reset(I)V
.end method

.method private static native native_set(II)V
.end method

.method private static native native_setConcat(III)Z
.end method

.method private static native native_setPolyToPoly(I[FI[FII)Z
.end method

.method private static native native_setRectToRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_setRotate(IF)V
.end method

.method private static native native_setRotate(IFFF)V
.end method

.method private static native native_setScale(IFF)V
.end method

.method private static native native_setScale(IFFFF)V
.end method

.method private static native native_setSinCos(IFF)V
.end method

.method private static native native_setSinCos(IFFFF)V
.end method

.method private static native native_setSkew(IFF)V
.end method

.method private static native native_setSkew(IFFFF)V
.end method

.method private static native native_setTranslate(IFF)V
.end method

.method private static native native_setValues(I[F)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 89
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    check-cast p1, Landroid/graphics/Matrix;

    .end local p1
    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 591
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Matrix;->finalizer(I)V

    .line 592
    return-void
.end method

.method public getValues([F)V
    .locals 2
    .parameter "values"

    .prologue
    .line 524
    array-length v0, p1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 525
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 527
    :cond_0
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_getValues(I[F)V

    .line 528
    return-void
.end method

.method public invert(Landroid/graphics/Matrix;)Z
    .locals 2
    .parameter "inverse"

    .prologue
    .line 396
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_invert(II)Z

    move-result v0

    return v0
.end method

.method public isIdentity()Z
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Matrix;->native_isIdentity(I)Z

    move-result v0

    return v0
.end method

.method public mapPoints([F)V
    .locals 6
    .parameter "pts"

    .prologue
    const/4 v2, 0x0

    .line 472
    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 473
    return-void
.end method

.method public mapPoints([FI[FII)V
    .locals 7
    .parameter "dst"
    .parameter "dstIndex"
    .parameter "src"
    .parameter "srcIndex"
    .parameter "pointCount"

    .prologue
    .line 412
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 413
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Matrix;->native_mapPoints(I[FI[FIIZ)V

    .line 415
    return-void
.end method

.method public mapPoints([F[F)V
    .locals 6
    .parameter "dst"
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 444
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 445
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 447
    :cond_0
    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 448
    return-void
.end method

.method public mapRadius(F)F
    .locals 1
    .parameter "radius"

    .prologue
    .line 518
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_mapRadius(IF)F

    move-result v0

    return v0
.end method

.method public mapRect(Landroid/graphics/RectF;)Z
    .locals 1
    .parameter "rect"

    .prologue
    .line 509
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1
    .parameter "dst"
    .parameter "src"

    .prologue
    .line 494
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 495
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 497
    :cond_1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_mapRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public mapVectors([F)V
    .locals 6
    .parameter "vecs"

    .prologue
    const/4 v2, 0x0

    .line 481
    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    .line 482
    return-void
.end method

.method public mapVectors([FI[FII)V
    .locals 7
    .parameter "dst"
    .parameter "dstIndex"
    .parameter "src"
    .parameter "srcIndex"
    .parameter "vectorCount"

    .prologue
    .line 430
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 431
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Matrix;->native_mapPoints(I[FI[FIIZ)V

    .line 433
    return-void
.end method

.method public mapVectors([F[F)V
    .locals 6
    .parameter "dst"
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 459
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 460
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 462
    :cond_0
    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    .line 463
    return-void
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    return v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 297
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_postConcat(II)Z

    move-result v0

    return v0
.end method

.method public postRotate(F)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 273
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_postRotate(IF)Z

    move-result v0

    return v0
.end method

.method public postRotate(FFF)Z
    .locals 1
    .parameter "degrees"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 265
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Matrix;->native_postRotate(IFFF)Z

    move-result v0

    return v0
.end method

.method public postScale(FF)Z
    .locals 1
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 257
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_postScale(IFF)Z

    move-result v0

    return v0
.end method

.method public postScale(FFFF)Z
    .locals 1
    .parameter "sx"
    .parameter "sy"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 249
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_postScale(IFFFF)Z

    move-result v0

    return v0
.end method

.method public postSkew(FF)Z
    .locals 1
    .parameter "kx"
    .parameter "ky"

    .prologue
    .line 289
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_postSkew(IFF)Z

    move-result v0

    return v0
.end method

.method public postSkew(FFFF)Z
    .locals 1
    .parameter "kx"
    .parameter "ky"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 281
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_postSkew(IFFFF)Z

    move-result v0

    return v0
.end method

.method public postTranslate(FF)Z
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 241
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_postTranslate(IFF)Z

    move-result v0

    return v0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 233
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_preConcat(II)Z

    move-result v0

    return v0
.end method

.method public preRotate(F)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 209
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_preRotate(IF)Z

    move-result v0

    return v0
.end method

.method public preRotate(FFF)Z
    .locals 1
    .parameter "degrees"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 201
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Matrix;->native_preRotate(IFFF)Z

    move-result v0

    return v0
.end method

.method public preScale(FF)Z
    .locals 1
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 193
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_preScale(IFF)Z

    move-result v0

    return v0
.end method

.method public preScale(FFFF)Z
    .locals 1
    .parameter "sx"
    .parameter "sy"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 185
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_preScale(IFFFF)Z

    move-result v0

    return v0
.end method

.method public preSkew(FF)Z
    .locals 1
    .parameter "kx"
    .parameter "ky"

    .prologue
    .line 225
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_preSkew(IFF)Z

    move-result v0

    return v0
.end method

.method public preSkew(FFFF)Z
    .locals 1
    .parameter "kx"
    .parameter "ky"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 217
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_preSkew(IFFFF)Z

    move-result v0

    return v0
.end method

.method public preTranslate(FF)Z
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 177
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_preTranslate(IFF)Z

    move-result v0

    return v0
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pw"

    .prologue
    const-string v3, "]["

    const-string v2, ", "

    .line 578
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 579
    .local v0, values:[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 580
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 581
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, "]["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    const/4 v1, 0x3

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x4

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    const/4 v1, 0x5

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, "]["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    const/4 v1, 0x6

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x7

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 586
    const/16 v1, 0x8

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 588
    return-void
.end method

.method public rectStaysRect()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Matrix;->native_rectStaysRect(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Matrix;->native_reset(I)V

    .line 97
    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_set(II)V

    goto :goto_0
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 168
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    iget v2, p2, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Matrix;->native_setConcat(III)Z

    move-result v0

    return v0
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 6
    .parameter "src"
    .parameter "srcIndex"
    .parameter "dst"
    .parameter "dstIndex"
    .parameter "pointCount"

    .prologue
    .line 382
    const/4 v0, 0x4

    if-le p5, v0, :cond_0

    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 385
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 386
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_setPolyToPoly(I[FI[FII)Z

    move-result v0

    return v0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 2
    .parameter "src"
    .parameter "dst"
    .parameter "stf"

    .prologue
    .line 348
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 351
    :cond_1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget v1, p3, Landroid/graphics/Matrix$ScaleToFit;->nativeInt:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Matrix;->native_setRectToRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result v0

    return v0
.end method

.method public setRotate(F)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 131
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_setRotate(IF)V

    .line 132
    return-void
.end method

.method public setRotate(FFF)V
    .locals 1
    .parameter "degrees"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 124
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Matrix;->native_setRotate(IFFF)V

    .line 125
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 115
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setScale(IFF)V

    .line 116
    return-void
.end method

.method public setScale(FFFF)V
    .locals 1
    .parameter "sx"
    .parameter "sy"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 110
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_setScale(IFFFF)V

    .line 111
    return-void
.end method

.method public setSinCos(FF)V
    .locals 1
    .parameter "sinValue"
    .parameter "cosValue"

    .prologue
    .line 145
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setSinCos(IFF)V

    .line 146
    return-void
.end method

.method public setSinCos(FFFF)V
    .locals 1
    .parameter "sinValue"
    .parameter "cosValue"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 140
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_setSinCos(IFFFF)V

    .line 141
    return-void
.end method

.method public setSkew(FF)V
    .locals 1
    .parameter "kx"
    .parameter "ky"

    .prologue
    .line 159
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setSkew(IFF)V

    .line 160
    return-void
.end method

.method public setSkew(FFFF)V
    .locals 1
    .parameter "kx"
    .parameter "ky"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 154
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_setSkew(IFFFF)V

    .line 155
    return-void
.end method

.method public setTranslate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 101
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setTranslate(IFF)V

    .line 102
    return-void
.end method

.method public setValues([F)V
    .locals 2
    .parameter "values"

    .prologue
    .line 537
    array-length v0, p1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 538
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 540
    :cond_0
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_setValues(I[F)V

    .line 541
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 554
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "sb"

    .prologue
    const-string v3, "]["

    const-string v2, ", "

    .line 562
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 563
    .local v0, values:[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 564
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 565
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const/4 v1, 0x3

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const/4 v1, 0x5

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const/4 v1, 0x6

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const/16 v1, 0x8

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 545
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Matrix{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 547
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
