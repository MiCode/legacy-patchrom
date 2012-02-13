.class public Landroid/graphics/SumPathEffect;
.super Landroid/graphics/PathEffect;
.source "SumPathEffect.java"


# direct methods
.method public constructor <init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V
    .locals 2
    .parameter "first"
    .parameter "second"

    .prologue
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    iget v0, p1, Landroid/graphics/PathEffect;->native_instance:I

    iget v1, p2, Landroid/graphics/PathEffect;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/SumPathEffect;->nativeCreate(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/PathEffect;->native_instance:I

    return-void
.end method

.method private static native nativeCreate(II)I
.end method
