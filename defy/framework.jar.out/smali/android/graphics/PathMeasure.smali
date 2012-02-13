.class public Landroid/graphics/PathMeasure;
.super Ljava/lang/Object;
.source "PathMeasure.java"


# static fields
.field public static final POSITION_MATRIX_FLAG:I = 0x1

.field public static final TANGENT_MATRIX_FLAG:I = 0x2


# instance fields
.field private final native_instance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v0}, Landroid/graphics/PathMeasure;->native_create(IZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Z)V
    .locals 1
    .parameter "path"
    .parameter "forceClosed"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v0

    :goto_0
    invoke-static {v0, p2}, Landroid/graphics/PathMeasure;->native_create(IZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native native_create(IZ)I
.end method

.method private static native native_destroy(I)V
.end method

.method private static native native_getLength(I)F
.end method

.method private static native native_getMatrix(IFII)Z
.end method

.method private static native native_getPosTan(IF[F[F)Z
.end method

.method private static native native_getSegment(IFFIZ)Z
.end method

.method private static native native_isClosed(I)Z
.end method

.method private static native native_nextContour(I)Z
.end method

.method private static native native_setPath(IIZ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    invoke-static {v0}, Landroid/graphics/PathMeasure;->native_destroy(I)V

    return-void
.end method

.method public getLength()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    invoke-static {v0}, Landroid/graphics/PathMeasure;->native_getLength(I)F

    move-result v0

    return v0
.end method

.method public getMatrix(FLandroid/graphics/Matrix;I)Z
    .locals 2
    .parameter "distance"
    .parameter "matrix"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    iget v1, p2, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, v1, p3}, Landroid/graphics/PathMeasure;->native_getMatrix(IFII)Z

    move-result v0

    return v0
.end method

.method public getPosTan(F[F[F)Z
    .locals 2
    .parameter "distance"
    .parameter "pos"
    .parameter "tan"

    .prologue
    const/4 v1, 0x2

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lt v0, v1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    array-length v0, p3

    if-ge v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/PathMeasure;->native_getPosTan(IF[F[F)Z

    move-result v0

    return v0
.end method

.method public getSegment(FFLandroid/graphics/Path;Z)Z
    .locals 2
    .parameter "startD"
    .parameter "stopD"
    .parameter "dst"
    .parameter "startWithMoveTo"

    .prologue
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    invoke-virtual {p3}, Landroid/graphics/Path;->ni()I

    move-result v1

    invoke-static {v0, p1, p2, v1, p4}, Landroid/graphics/PathMeasure;->native_getSegment(IFFIZ)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    invoke-static {v0}, Landroid/graphics/PathMeasure;->native_isClosed(I)Z

    move-result v0

    return v0
.end method

.method public nextContour()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    invoke-static {v0}, Landroid/graphics/PathMeasure;->native_nextContour(I)Z

    move-result v0

    return v0
.end method

.method public setPath(Landroid/graphics/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "forceClosed"

    .prologue
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    :goto_0
    invoke-static {v0, v1, p2}, Landroid/graphics/PathMeasure;->native_setPath(IIZ)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
