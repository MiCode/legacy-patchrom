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
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLContext;-><init>()V

    iput p1, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    new-instance v0, Lcom/google/android/gles_jni/GLImpl;

    invoke-direct {v0}, Lcom/google/android/gles_jni/GLImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    return-void
.end method


# virtual methods
.method public getGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gles_jni/EGLContextImpl;->mGLContext:Lcom/google/android/gles_jni/GLImpl;

    return-object v0
.end method
