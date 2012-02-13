.class public Lcom/google/android/gles_jni/EGLDisplayImpl;
.super Ljavax/microedition/khronos/egl/EGLDisplay;
.source "EGLDisplayImpl.java"


# instance fields
.field mEGLDisplay:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "dpy"

    .prologue
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLDisplay;-><init>()V

    iput p1, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    return-void
.end method
