.class public Landroid/graphics/ColorMatrixColorFilter;
.super Landroid/graphics/ColorFilter;
.source "ColorMatrixColorFilter.java"


# direct methods
.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)I

    move-result v0

    iput v0, p0, Landroid/graphics/ColorFilter;->native_instance:I

    .line 29
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .parameter "array"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 39
    array-length v0, p1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 42
    :cond_0
    invoke-static {p1}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)I

    move-result v0

    iput v0, p0, Landroid/graphics/ColorFilter;->native_instance:I

    .line 43
    return-void
.end method

.method private static native nativeColorMatrixFilter([F)I
.end method
