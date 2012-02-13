.class public Landroid/graphics/EmbossMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "EmbossMaskFilter.java"


# direct methods
.method public constructor <init>([FFFF)V
    .locals 2
    .parameter "direction"
    .parameter "ambient"
    .parameter "specular"
    .parameter "blurRadius"

    .prologue
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/EmbossMaskFilter;->nativeConstructor([FFFF)I

    move-result v0

    iput v0, p0, Landroid/graphics/MaskFilter;->native_instance:I

    return-void
.end method

.method private static native nativeConstructor([FFFF)I
.end method
