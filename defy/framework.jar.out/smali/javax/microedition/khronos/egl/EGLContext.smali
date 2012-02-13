.class public abstract Ljavax/microedition/khronos/egl/EGLContext;
.super Ljava/lang/Object;
.source "EGLContext.java"


# static fields
.field private static final EGL_INSTANCE:Ljavax/microedition/khronos/egl/EGL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/google/android/gles_jni/EGLImpl;

    invoke-direct {v0}, Lcom/google/android/gles_jni/EGLImpl;-><init>()V

    sput-object v0, Ljavax/microedition/khronos/egl/EGLContext;->EGL_INSTANCE:Ljavax/microedition/khronos/egl/EGL;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEGL()Ljavax/microedition/khronos/egl/EGL;
    .locals 1

    .prologue
    sget-object v0, Ljavax/microedition/khronos/egl/EGLContext;->EGL_INSTANCE:Ljavax/microedition/khronos/egl/EGL;

    return-object v0
.end method


# virtual methods
.method public abstract getGL()Ljavax/microedition/khronos/opengles/GL;
.end method
