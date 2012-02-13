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

    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    iput v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    iput v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mNativePixelRef:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "surface"

    .prologue
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    iput p1, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mNativePixelRef:I

    return-void
.end method
