.class public Landroid/graphics/DiscretePathEffect;
.super Landroid/graphics/PathEffect;
.source "DiscretePathEffect.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "segmentLength"
    .parameter "deviation"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 26
    invoke-static {p1, p2}, Landroid/graphics/DiscretePathEffect;->nativeCreate(FF)I

    move-result v0

    iput v0, p0, Landroid/graphics/PathEffect;->native_instance:I

    .line 27
    return-void
.end method

.method private static native nativeCreate(FF)I
.end method
