.class public Landroid/renderscript/RSSurfaceView;
.super Landroid/view/SurfaceView;
.source "RSSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Landroid/renderscript/RSSurfaceView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Landroid/renderscript/RSSurfaceView;->init()V

    .line 59
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/renderscript/RSSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 65
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 66
    return-void
.end method


# virtual methods
.method public createRenderScript(Z)Landroid/renderscript/RenderScriptGL;
    .locals 1
    .parameter "useDepth"

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/renderscript/RSSurfaceView;->createRenderScript(ZZ)Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    return-object v0
.end method

.method public createRenderScript(ZZ)Landroid/renderscript/RenderScriptGL;
    .locals 2
    .parameter "useDepth"
    .parameter "forceSW"

    .prologue
    .line 150
    const-string v0, "RenderScript_jni"

    const-string v1, "createRenderScript"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, p1, p2}, Landroid/renderscript/RenderScriptGL;-><init>(ZZ)V

    iput-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 152
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    return-object v0
.end method

.method public createRenderScript(Landroid/renderscript/RenderScriptGL;)V
    .locals 0
    .parameter "rs"

    .prologue
    .line 166
    iput-object p1, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 167
    return-void
.end method

.method public destroyRenderScript()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "RenderScript_jni"

    const-string v1, "destroyRenderScript"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 163
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->pause()V

    .line 111
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->resume()V

    .line 125
    :cond_0
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 135
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 94
    const-string v0, "RenderScript_jni"

    const-string/jumbo v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Landroid/renderscript/RenderScriptGL;->contextSetSurface(IILandroid/view/Surface;)V

    .line 98
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 73
    const-string v0, "RenderScript_jni"

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Landroid/renderscript/RSSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 75
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const/4 v2, 0x0

    .line 83
    const-string v0, "RenderScript_jni"

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/renderscript/RenderScriptGL;->contextSetSurface(IILandroid/view/Surface;)V

    .line 87
    :cond_0
    return-void
.end method
