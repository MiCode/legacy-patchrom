.class public Lcom/google/android/gles_jni/EGLSurfaceImpl;
.super Ljavax/microedition/khronos/egl/EGLSurface;
.source "EGLSurfaceImpl.java"


# instance fields
.field mEGLSurface:I

.field private mNativePixelRef:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    .line 26
    iput v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    .line 27
    iput v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mNativePixelRef:I

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "surface"

    .prologue
    .line 29
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    .line 30
    iput p1, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mNativePixelRef:I

    .line 32
    return-void
.end method
