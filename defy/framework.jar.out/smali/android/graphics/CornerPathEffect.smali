.class public Landroid/graphics/CornerPathEffect;
.super Landroid/graphics/PathEffect;
.source "CornerPathEffect.java"


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .parameter "radius"

    .prologue
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    invoke-static {p1}, Landroid/graphics/CornerPathEffect;->nativeCreate(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/PathEffect;->native_instance:I

    return-void
.end method

.method private static native nativeCreate(F)I
.end method
