.class public Landroid/renderscript/RenderScriptGL;
.super Landroid/renderscript/RenderScript;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScriptGL$File;
    }
.end annotation


# instance fields
.field mHeight:I

.field private mSurface:Landroid/view/Surface;

.field mWidth:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 3
    .parameter "useDepth"
    .parameter "forceSW"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/renderscript/RenderScript;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/RenderScriptGL;->mSurface:Landroid/view/Surface;

    iput v2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    iput v2, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nDeviceCreate()I

    move-result v0

    iput v0, p0, Landroid/renderscript/RenderScript;->mDev:I

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/renderscript/RenderScript;->mDev:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Landroid/renderscript/RenderScriptGL;->nDeviceSetConfig(III)V

    :cond_0
    iget v0, p0, Landroid/renderscript/RenderScript;->mDev:I

    invoke-virtual {p0, v0, v2, p1}, Landroid/renderscript/RenderScriptGL;->nContextCreateGL(IIZ)I

    move-result v0

    iput v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    new-instance v0, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v0, p0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    invoke-static {p0}, Landroid/renderscript/Element;->initPredefined(Landroid/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public contextBindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "p"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramFragment(I)V

    return-void
.end method

.method public contextBindProgramFragmentStore(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "p"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramFragmentStore(I)V

    return-void
.end method

.method public contextBindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .locals 1
    .parameter "p"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramRaster(I)V

    return-void
.end method

.method public contextBindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "p"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramVertex(I)V

    return-void
.end method

.method public contextBindRootScript(Landroid/renderscript/Script;)V
    .locals 1
    .parameter "s"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindRootScript(I)V

    return-void
.end method

.method public contextSetSurface(IILandroid/view/Surface;)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "sur"

    .prologue
    iput-object p3, p0, Landroid/renderscript/RenderScriptGL;->mSurface:Landroid/view/Surface;

    iput p1, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    iget-object v0, p0, Landroid/renderscript/RenderScriptGL;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    return-void
.end method

.method public fileOpen(Ljava/lang/String;)Landroid/renderscript/RenderScriptGL$File;
    .locals 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "fileOpen does not accept a zero length string."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, bytes:[B
    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nFileOpen([B)I

    move-result v2

    .local v2, id:I
    new-instance v3, Landroid/renderscript/RenderScriptGL$File;

    invoke-direct {v3, p0, v2}, Landroid/renderscript/RenderScriptGL$File;-><init>(Landroid/renderscript/RenderScriptGL;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .end local v0           #bytes:[B
    .end local v2           #id:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method pause()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextPause()V

    return-void
.end method

.method resume()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextResume()V

    return-void
.end method
