.class public Landroid/graphics/PorterDuffXfermode;
.super Landroid/graphics/Xfermode;
.source "PorterDuffXfermode.java"


# direct methods
.method public constructor <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/PorterDuffXfermode;->nativeCreateXfermode(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Xfermode;->native_instance:I

    return-void
.end method

.method private static native nativeCreateXfermode(I)I
.end method
