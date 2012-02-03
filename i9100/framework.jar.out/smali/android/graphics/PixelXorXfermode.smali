.class public Landroid/graphics/PixelXorXfermode;
.super Landroid/graphics/Xfermode;
.source "PixelXorXfermode.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "opColor"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 28
    invoke-static {p1}, Landroid/graphics/PixelXorXfermode;->nativeCreate(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Xfermode;->native_instance:I

    .line 29
    return-void
.end method

.method private static native nativeCreate(I)I
.end method
