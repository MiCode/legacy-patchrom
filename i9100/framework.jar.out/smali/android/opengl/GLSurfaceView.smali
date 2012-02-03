.class public Landroid/opengl/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLSurfaceView$1;,
        Landroid/opengl/GLSurfaceView$GLThreadManager;,
        Landroid/opengl/GLSurfaceView$LogWriter;,
        Landroid/opengl/GLSurfaceView$GLThread;,
        Landroid/opengl/GLSurfaceView$EglHelper;,
        Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;,
        Landroid/opengl/GLSurfaceView$ComponentSizeChooser;,
        Landroid/opengl/GLSurfaceView$BaseConfigChooser;,
        Landroid/opengl/GLSurfaceView$EGLConfigChooser;,
        Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;,
        Landroid/opengl/GLSurfaceView$DefaultContextFactory;,
        Landroid/opengl/GLSurfaceView$EGLContextFactory;,
        Landroid/opengl/GLSurfaceView$Renderer;,
        Landroid/opengl/GLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final LOG_EGL:Z = true

.field private static final LOG_PAUSE_RESUME:Z = true

.field private static final LOG_RENDERER:Z = true

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = true

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

.field private mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1759
    new-instance v0, Landroid/opengl/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;-><init>(Landroid/opengl/GLSurfaceView$1;)V

    sput-object v0, Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1760
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mSizeChanged:Z

    .line 208
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->init()V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1760
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mSizeChanged:Z

    .line 217
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->init()V

    .line 218
    return-void
.end method

.method static synthetic access$1000(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    return-object v0
.end method

.method static synthetic access$200(Landroid/opengl/GLSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Landroid/opengl/GLSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Landroid/opengl/GLSurfaceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$902(Landroid/opengl/GLSurfaceView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView;->mSizeChanged:Z

    return p1
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1646
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 1647
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1650
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 224
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 232
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 537
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 538
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 539
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->onPause()V

    .line 507
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->onResume()V

    .line 518
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestRender()V

    .line 467
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .parameter "debugFlags"

    .prologue
    .line 261
    iput p1, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    .line 262
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    .line 392
    new-instance v0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 394
    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .parameter "configChooser"

    .prologue
    .line 355
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 356
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 357
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .parameter "needDepth"

    .prologue
    .line 374
    new-instance v0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 375
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 423
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 424
    iput p1, p0, Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    .line 425
    return-void
.end method

.method public setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 324
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 325
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 326
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 338
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 339
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 340
    return-void
.end method

.method public setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V
    .locals 0
    .parameter "glWrapper"

    .prologue
    .line 248
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

    .line 249
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter "renderMode"

    .prologue
    .line 444
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 445
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 299
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 300
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;Z)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 304
    new-instance v0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Landroid/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$1;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 306
    :cond_1
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 307
    new-instance v0, Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Landroid/opengl/GLSurfaceView$1;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 309
    :cond_2
    new-instance v0, Landroid/opengl/GLSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLSurfaceView$GLThread;-><init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    .line 310
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->start()V

    .line 311
    return-void
.end method

.method public stopRender()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->stopRender()V

    .line 472
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 496
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Landroid/opengl/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 497
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 479
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 480
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 488
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 489
    return-void
.end method
