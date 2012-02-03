.class public Landroid/graphics/PorterDuffColorFilter;
.super Landroid/graphics/ColorFilter;
.source "PorterDuffColorFilter.java"


# direct methods
.method public constructor <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "srcColor"
    .parameter "mode"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 28
    iget v0, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {p1, v0}, Landroid/graphics/PorterDuffColorFilter;->native_CreatePorterDuffFilter(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/ColorFilter;->native_instance:I

    .line 30
    return-void
.end method

.method private static native native_CreatePorterDuffFilter(II)I
.end method
