.class public Landroid/renderscript/ProgramRaster;
.super Landroid/renderscript/BaseObj;
.source "ProgramRaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramRaster$Builder;
    }
.end annotation


# instance fields
.field mIn:Landroid/renderscript/Element;

.field mLineSmooth:Z

.field mLineWidth:F

.field mOut:Landroid/renderscript/Element;

.field mPointSize:F

.field mPointSmooth:Z

.field mPointSprite:Z


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 2
    .parameter "id"
    .parameter "rs"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p2}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 39
    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 41
    iput v1, p0, Landroid/renderscript/ProgramRaster;->mPointSize:F

    .line 42
    iput v1, p0, Landroid/renderscript/ProgramRaster;->mLineWidth:F

    .line 43
    iput-boolean v0, p0, Landroid/renderscript/ProgramRaster;->mPointSmooth:Z

    .line 44
    iput-boolean v0, p0, Landroid/renderscript/ProgramRaster;->mLineSmooth:Z

    .line 45
    iput-boolean v0, p0, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic destroy()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method public bridge synthetic getID()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    return v0
.end method

.method internalInit()V
    .locals 6

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, inID:I
    const/4 v2, 0x0

    .line 63
    .local v2, outID:I
    iget-object v0, p0, Landroid/renderscript/ProgramRaster;->mIn:Landroid/renderscript/Element;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Landroid/renderscript/ProgramRaster;->mIn:Landroid/renderscript/Element;

    iget v1, v0, Landroid/renderscript/BaseObj;->mID:I

    .line 66
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ProgramRaster;->mOut:Landroid/renderscript/Element;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Landroid/renderscript/ProgramRaster;->mOut:Landroid/renderscript/Element;

    iget v2, v0, Landroid/renderscript/BaseObj;->mID:I

    .line 69
    :cond_1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-boolean v3, p0, Landroid/renderscript/ProgramRaster;->mPointSmooth:Z

    iget-boolean v4, p0, Landroid/renderscript/ProgramRaster;->mLineSmooth:Z

    iget-boolean v5, p0, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nProgramRasterCreate(IIZZZ)I

    move-result v0

    iput v0, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 70
    return-void
.end method

.method public setLineWidth(F)V
    .locals 2
    .parameter "w"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 50
    iput p1, p0, Landroid/renderscript/ProgramRaster;->mLineWidth:F

    .line 51
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nProgramRasterSetLineWidth(IF)V

    .line 52
    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setPointSize(F)V
    .locals 2
    .parameter "s"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 56
    iput p1, p0, Landroid/renderscript/ProgramRaster;->mPointSize:F

    .line 57
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nProgramRasterSetPointSize(IF)V

    .line 58
    return-void
.end method
