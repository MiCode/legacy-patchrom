.class public Lcom/google/android/gles_jni/EGLConfigImpl;
.super Ljavax/microedition/khronos/egl/EGLConfig;
.source "EGLConfigImpl.java"


# instance fields
.field private mEGLConfig:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "config"

    .prologue
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLConfig;-><init>()V

    iput p1, p0, Lcom/google/android/gles_jni/EGLConfigImpl;->mEGLConfig:I

    return-void
.end method


# virtual methods
.method get()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gles_jni/EGLConfigImpl;->mEGLConfig:I

    return v0
.end method
