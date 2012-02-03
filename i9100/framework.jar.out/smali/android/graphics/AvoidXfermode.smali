.class public Landroid/graphics/AvoidXfermode;
.super Landroid/graphics/Xfermode;
.source "AvoidXfermode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/AvoidXfermode$Mode;
    }
.end annotation


# direct methods
.method public constructor <init>(IILandroid/graphics/AvoidXfermode$Mode;)V
    .locals 2
    .parameter "opColor"
    .parameter "tolerance"
    .parameter "mode"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 52
    if-ltz p2, :cond_0

    const/16 v0, 0xff

    if-le p2, v0, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tolerance must be 0..255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iget v0, p3, Landroid/graphics/AvoidXfermode$Mode;->nativeInt:I

    invoke-static {p1, p2, v0}, Landroid/graphics/AvoidXfermode;->nativeCreate(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/Xfermode;->native_instance:I

    .line 56
    return-void
.end method

.method private static native nativeCreate(III)I
.end method
