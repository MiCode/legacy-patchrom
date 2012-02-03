.class public Landroid/graphics/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Shader$TileMode;
    }
.end annotation


# instance fields
.field native_instance:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeGetLocalMatrix(II)Z
.end method

.method private static native nativeSetLocalMatrix(II)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    iget v0, p0, Landroid/graphics/Shader;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Shader;->nativeDestructor(I)V

    .line 73
    return-void
.end method

.method public getLocalMatrix(Landroid/graphics/Matrix;)Z
    .locals 2
    .parameter "localM"

    .prologue
    .line 58
    iget v0, p0, Landroid/graphics/Shader;->native_instance:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Shader;->nativeGetLocalMatrix(II)Z

    move-result v0

    return v0
.end method

.method public setLocalMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "localM"

    .prologue
    .line 67
    iget v0, p0, Landroid/graphics/Shader;->native_instance:I

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    :goto_0
    invoke-static {v0, v1}, Landroid/graphics/Shader;->nativeSetLocalMatrix(II)V

    .line 69
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
