.class public Landroid/graphics/TableMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "TableMaskFilter.java"


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .parameter "ni"

    .prologue
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    iput p1, p0, Landroid/graphics/MaskFilter;->native_instance:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "table"

    .prologue
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    array-length v0, p1

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "table.length must be >= 256"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/graphics/TableMaskFilter;->nativeNewTable([B)I

    move-result v0

    iput v0, p0, Landroid/graphics/MaskFilter;->native_instance:I

    return-void
.end method

.method public static CreateClipTable(II)Landroid/graphics/TableMaskFilter;
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    new-instance v0, Landroid/graphics/TableMaskFilter;

    invoke-static {p0, p1}, Landroid/graphics/TableMaskFilter;->nativeNewClip(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/TableMaskFilter;-><init>(I)V

    return-object v0
.end method

.method public static CreateGammaTable(F)Landroid/graphics/TableMaskFilter;
    .locals 2
    .parameter "gamma"

    .prologue
    new-instance v0, Landroid/graphics/TableMaskFilter;

    invoke-static {p0}, Landroid/graphics/TableMaskFilter;->nativeNewGamma(F)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/TableMaskFilter;-><init>(I)V

    return-object v0
.end method

.method private static native nativeNewClip(II)I
.end method

.method private static native nativeNewGamma(F)I
.end method

.method private static native nativeNewTable([B)I
.end method
