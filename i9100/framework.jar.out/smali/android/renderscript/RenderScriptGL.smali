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

    .line 38
    invoke-direct {p0}, Landroid/renderscript/RenderScript;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/RenderScriptGL;->mSurface:Landroid/view/Surface;

    .line 40
    iput v2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 41
    iput v2, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 42
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nDeviceCreate()I

    move-result v0

    iput v0, p0, Landroid/renderscript/RenderScript;->mDev:I

    .line 43
    if-eqz p2, :cond_0

    .line 44
    iget v0, p0, Landroid/renderscript/RenderScript;->mDev:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Landroid/renderscript/RenderScriptGL;->nDeviceSetConfig(III)V

    .line 46
    :cond_0
    iget v0, p0, Landroid/renderscript/RenderScript;->mDev:I

    invoke-virtual {p0, v0, v2, p1}, Landroid/renderscript/RenderScriptGL;->nContextCreateGL(IIZ)I

    move-result v0

    iput v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    .line 47
    new-instance v0, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v0, p0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 48
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    .line 49
    invoke-static {p0}, Landroid/renderscript/Element;->initPredefined(Landroid/renderscript/RenderScript;)V

    .line 50
    return-void
.end method


# virtual methods
.method public contextBindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 84
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramFragment(I)V

    .line 85
    return-void
.end method

.method public contextBindProgramFragmentStore(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 79
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramFragmentStore(I)V

    .line 80
    return-void
.end method

.method public contextBindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 89
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramRaster(I)V

    .line 90
    return-void
.end method

.method public contextBindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 94
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramVertex(I)V

    .line 95
    return-void
.end method

.method public contextBindRootScript(Landroid/renderscript/Script;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 74
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindRootScript(I)V

    .line 75
    return-void
.end method

.method public contextSetSurface(IILandroid/view/Surface;)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "sur"

    .prologue
    .line 53
    iput-object p3, p0, Landroid/renderscript/RenderScriptGL;->mSurface:Landroid/view/Surface;

    .line 54
    iput p1, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 55
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 56
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 57
    iget-object v0, p0, Landroid/renderscript/RenderScriptGL;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    .line 58
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
    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 113
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "fileOpen does not accept a zero length string."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_0
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 118
    .local v0, bytes:[B
    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nFileOpen([B)I

    move-result v2

    .line 119
    .local v2, id:I
    new-instance v3, Landroid/renderscript/RenderScriptGL$File;

    invoke-direct {v3, p0, v2}, Landroid/renderscript/RenderScriptGL$File;-><init>(Landroid/renderscript/RenderScriptGL;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 120
    .end local v0           #bytes:[B
    .end local v2           #id:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 121
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method pause()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 63
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextPause()V

    .line 64
    return-void
.end method

.method resume()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 68
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextResume()V

    .line 69
    return-void
.end method
