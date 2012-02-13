.class public Landroid/renderscript/ProgramStore$Builder;
.super Ljava/lang/Object;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field mColorMaskA:Z

.field mColorMaskB:Z

.field mColorMaskG:Z

.field mColorMaskR:Z

.field mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

.field mDepthMask:Z

.field mDither:Z

.field mIn:Landroid/renderscript/Element;

.field mOut:Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;Landroid/renderscript/Element;)V
    .locals 2
    .parameter "rs"
    .parameter "in"
    .parameter "out"

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    iput-object p2, p0, Landroid/renderscript/ProgramStore$Builder;->mIn:Landroid/renderscript/Element;

    iput-object p3, p0, Landroid/renderscript/ProgramStore$Builder;->mOut:Landroid/renderscript/Element;

    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    sget-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/ProgramStore$Builder;)Landroid/renderscript/ProgramStore;
    .locals 8
    .parameter "rs"
    .parameter "b"

    .prologue
    const-class v3, Landroid/renderscript/ProgramStore$Builder;

    monitor-enter v3

    const/4 v1, 0x0

    .local v1, inID:I
    const/4 v2, 0x0

    .local v2, outID:I
    :try_start_0
    iget-object v4, p1, Landroid/renderscript/ProgramStore$Builder;->mIn:Landroid/renderscript/Element;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/renderscript/ProgramStore$Builder;->mIn:Landroid/renderscript/Element;

    iget v1, v4, Landroid/renderscript/BaseObj;->mID:I

    :cond_0
    iget-object v4, p1, Landroid/renderscript/ProgramStore$Builder;->mOut:Landroid/renderscript/Element;

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/renderscript/ProgramStore$Builder;->mOut:Landroid/renderscript/Element;

    iget v2, v4, Landroid/renderscript/BaseObj;->mID:I

    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/RenderScript;->nProgramFragmentStoreBegin(II)V

    iget-object v4, p1, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    iget v4, v4, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    invoke-virtual {p0, v4}, Landroid/renderscript/RenderScript;->nProgramFragmentStoreDepthFunc(I)V

    iget-boolean v4, p1, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    invoke-virtual {p0, v4}, Landroid/renderscript/RenderScript;->nProgramFragmentStoreDepthMask(Z)V

    iget-boolean v4, p1, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iget-boolean v5, p1, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iget-boolean v6, p1, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iget-boolean v7, p1, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/renderscript/RenderScript;->nProgramFragmentStoreColorMask(ZZZZ)V

    iget-object v4, p1, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iget v4, v4, Landroid/renderscript/ProgramStore$BlendSrcFunc;->mID:I

    iget-object v5, p1, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iget v5, v5, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    invoke-virtual {p0, v4, v5}, Landroid/renderscript/RenderScript;->nProgramFragmentStoreBlendFunc(II)V

    iget-boolean v4, p1, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    invoke-virtual {p0, v4}, Landroid/renderscript/RenderScript;->nProgramFragmentStoreDither(Z)V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nProgramFragmentStoreCreate()I

    move-result v0

    .local v0, id:I
    new-instance v4, Landroid/renderscript/ProgramStore;

    invoke-direct {v4, v0, p0}, Landroid/renderscript/ProgramStore;-><init>(ILandroid/renderscript/RenderScript;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v4

    .end local v0           #id:I
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramStore;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v0, p0}, Landroid/renderscript/ProgramStore$Builder;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/ProgramStore$Builder;)Landroid/renderscript/ProgramStore;

    move-result-object v0

    return-object v0
.end method

.method public setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)V
    .locals 0
    .parameter "src"
    .parameter "dst"

    .prologue
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object p2, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-void
.end method

.method public setColorMask(ZZZZ)V
    .locals 0
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iput-boolean p2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iput-boolean p3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iput-boolean p4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    return-void
.end method

.method public setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)V
    .locals 0
    .parameter "func"

    .prologue
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    return-void
.end method

.method public setDepthMask(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    return-void
.end method

.method public setDitherEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    return-void
.end method
