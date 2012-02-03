.class public Landroid/renderscript/ProgramVertex$Builder;
.super Ljava/lang/Object;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mRS:Landroid/renderscript/RenderScript;

.field mTextureMatrixEnable:Z


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;Landroid/renderscript/Element;)V
    .locals 0
    .parameter "rs"
    .parameter "in"
    .parameter "out"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 48
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramVertex;
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-boolean v2, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureMatrixEnable:Z

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->nProgramVertexCreate(Z)I

    move-result v0

    .line 56
    .local v0, id:I
    new-instance v1, Landroid/renderscript/ProgramVertex;

    iget-object v2, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v0, v2}, Landroid/renderscript/ProgramVertex;-><init>(ILandroid/renderscript/RenderScript;)V

    return-object v1
.end method

.method public setTextureMatrixEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureMatrixEnable:Z

    .line 52
    return-void
.end method
