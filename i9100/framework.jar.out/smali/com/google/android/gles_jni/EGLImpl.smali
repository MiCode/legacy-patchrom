.class public Lcom/google/android/gles_jni/EGLImpl;
.super Ljava/lang/Object;
.source "EGLImpl.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL10;


# instance fields
.field private mContext:Lcom/google/android/gles_jni/EGLContextImpl;

.field private mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

.field private mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 144
    invoke-static {}, Lcom/google/android/gles_jni/EGLImpl;->_nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 29
    new-instance v0, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 30
    new-instance v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    return-void
.end method

.method private native _eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)I
.end method

.method private native _eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)I
.end method

.method private native _eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V
.end method

.method private native _eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)I
.end method

.method private native _eglGetCurrentContext()I
.end method

.method private native _eglGetCurrentDisplay()I
.end method

.method private native _eglGetCurrentSurface(I)I
.end method

.method private native _eglGetDisplay(Ljava/lang/Object;)I
.end method

.method private static native _nativeClassInit()V
.end method


# virtual methods
.method public native eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "share_context"
    .parameter "attrib_list"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)I

    move-result v0

    .line 51
    .local v0, eglContextId:I
    if-nez v0, :cond_0

    .line 52
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 54
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(I)V

    goto :goto_0
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "attrib_list"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)I

    move-result v0

    .line 59
    .local v0, eglSurfaceId:I
    if-nez v0, :cond_0

    .line 60
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 62
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(I)V

    goto :goto_0
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 6
    .parameter "display"
    .parameter "config"
    .parameter "native_pixmap"
    .parameter "attrib_list"

    .prologue
    .line 66
    new-instance v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>()V

    .local v1, sur:Lcom/google/android/gles_jni/EGLSurfaceImpl;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V

    .line 68
    iget v0, v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 7
    .parameter "display"
    .parameter "config"
    .parameter "native_window"
    .parameter "attrib_list"

    .prologue
    .line 76
    instance-of v5, p3, Landroid/view/SurfaceView;

    if-eqz v5, :cond_0

    .line 77
    move-object v0, p3

    check-cast v0, Landroid/view/SurfaceView;

    move-object v4, v0

    .line 78
    .local v4, surfaceView:Landroid/view/SurfaceView;
    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    .line 87
    .end local v4           #surfaceView:Landroid/view/SurfaceView;
    .local v3, sur:Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)I

    move-result v1

    .line 88
    .local v1, eglSurfaceId:I
    if-nez v1, :cond_2

    .line 89
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 91
    :goto_1
    return-object v5

    .line 79
    .end local v1           #eglSurfaceId:I
    .end local v3           #sur:Landroid/view/Surface;
    :cond_0
    instance-of v5, p3, Landroid/view/SurfaceHolder;

    if-eqz v5, :cond_1

    .line 80
    move-object v0, p3

    check-cast v0, Landroid/view/SurfaceHolder;

    move-object v2, v0

    .line 81
    .local v2, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    .line 82
    .restart local v3       #sur:Landroid/view/Surface;
    goto :goto_0

    .line 83
    .end local v2           #holder:Landroid/view/SurfaceHolder;
    .end local v3           #sur:Landroid/view/Surface;
    :cond_1
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "eglCreateWindowSurface() can only be called with an instance of SurfaceView or SurfaceHolder at the moment, this will be fixed later."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    .restart local v1       #eglSurfaceId:I
    .restart local v3       #sur:Landroid/view/Surface;
    :cond_2
    new-instance v5, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v5, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(I)V

    goto :goto_1
.end method

.method public native eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public declared-synchronized eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentContext()I

    move-result v0

    .line 106
    .local v0, value:I
    if-nez v0, :cond_0

    .line 107
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    monitor-exit p0

    return-object v1

    .line 109
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    iget v1, v1, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:I

    if-eq v1, v0, :cond_1

    .line 110
    new-instance v1, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    .end local v0           #value:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentDisplay()I

    move-result v0

    .line 116
    .local v0, value:I
    if-nez v0, :cond_0

    .line 117
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit p0

    return-object v1

    .line 119
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    iget v1, v1, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    if-eq v1, v0, :cond_1

    .line 120
    new-instance v1, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    .end local v0           #value:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "readdraw"

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentSurface(I)I

    move-result v0

    .line 126
    .local v0, value:I
    if-nez v0, :cond_0

    .line 127
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :goto_0
    monitor-exit p0

    return-object v1

    .line 129
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    iget v1, v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:I

    if-eq v1, v0, :cond_1

    .line 130
    new-instance v1, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    .end local v0           #value:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 2
    .parameter "native_display"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetDisplay(Ljava/lang/Object;)I

    move-result v0

    .line 96
    .local v0, value:I
    if-nez v0, :cond_0

    .line 97
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    monitor-exit p0

    return-object v1

    .line 99
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    iget v1, v1, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:I

    if-eq v1, v0, :cond_1

    .line 100
    new-instance v1, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v0           #value:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public native eglGetError()I
.end method

.method public native eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
.end method

.method public native eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
.end method

.method public native eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
.end method

.method public native eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
.end method

.method public native eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
.end method

.method public native eglWaitGL()Z
.end method

.method public native eglWaitNative(ILjava/lang/Object;)Z
.end method
