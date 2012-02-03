.class public Lcom/google/android/gles_jni/EGLContextImpl;
.super Ljavax/microedition/khronos/egl/EGLContext;
.source "EGLContextImpl.java"


# instance fields
.field mEGLContext:I

.field private mGLContext:Lcom/google/android/gles_jni/GLImpl;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 27
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLContext;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    .line 29
    new-instance v0, Lcom/google/android/gles_jni/GLImpl;

    invoke-direct {v0}, Lcom/google/android/gles_jni/GLImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    .line 30
    return-void
.end method


# virtual methods
.method public getGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    return-object v0
.end method
