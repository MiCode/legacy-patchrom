.class public Landroid/graphics/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# instance fields
.field native_instance:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/graphics/Camera;->nativeConstructor()V

    return-void
.end method

.method private native nativeApplyToCanvas(I)V
.end method

.method private native nativeConstructor()V
.end method

.method private native nativeDestructor()V
.end method

.method private native nativeGetMatrix(I)V
.end method


# virtual methods
.method public applyToCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-direct {p0, v0}, Landroid/graphics/Camera;->nativeApplyToCanvas(I)V

    return-void
.end method

.method public native dotWithNormal(FFF)F
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/graphics/Camera;->nativeDestructor()V

    return-void
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "matrix"

    .prologue
    iget v0, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-direct {p0, v0}, Landroid/graphics/Camera;->nativeGetMatrix(I)V

    return-void
.end method

.method public native restore()V
.end method

.method public native rotateX(F)V
.end method

.method public native rotateY(F)V
.end method

.method public native rotateZ(F)V
.end method

.method public native save()V
.end method

.method public native translate(FFF)V
.end method
