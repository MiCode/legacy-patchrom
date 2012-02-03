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
    .line 25
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLDisplay;-><init>()V

    .line 26
    iput p1, p0, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    .line 27
    return-void
.end method
