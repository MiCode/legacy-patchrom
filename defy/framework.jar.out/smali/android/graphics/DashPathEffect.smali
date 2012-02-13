.class public Landroid/graphics/DashPathEffect;
.super Landroid/graphics/PathEffect;
.source "DashPathEffect.java"


# direct methods
.method public constructor <init>([FF)V
    .locals 2
    .parameter "intervals"
    .parameter "phase"

    .prologue
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/DashPathEffect;->nativeCreate([FF)I

    move-result v0

    iput v0, p0, Landroid/graphics/PathEffect;->native_instance:I

    return-void
.end method

.method private static native nativeCreate([FF)I
.end method
