.class public Landroid/renderscript/ProgramVertex$ShaderBuilder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShaderBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "rs"

    .prologue
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramVertex;
    .locals 8

    .prologue
    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6}, Landroid/renderscript/RenderScript;->validate()V

    iget v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    iget v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x2

    new-array v5, v6, [I

    .local v5, tmp:[I
    const/4 v2, 0x0

    .local v2, idx:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    if-ge v0, v6, :cond_0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .local v3, idx:I
    const/4 v6, 0x0

    aput v6, v5, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/renderscript/BaseObj;->mID:I

    aput v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    if-ge v0, v6, :cond_1

    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    const/4 v6, 0x1

    aput v6, v5, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/renderscript/BaseObj;->mID:I

    aput v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    if-ge v0, v6, :cond_2

    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    const/4 v6, 0x2

    aput v6, v5, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/renderscript/BaseObj;->mID:I

    aput v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .restart local v3       #idx:I
    const/4 v6, 0x3

    aput v6, v5, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    iget v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    aput v6, v5, v3

    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/renderscript/RenderScript;->nProgramVertexCreate2(Ljava/lang/String;[I)I

    move-result v1

    .local v1, id:I
    new-instance v4, Landroid/renderscript/ProgramVertex;

    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v4, v1, v6}, Landroid/renderscript/ProgramVertex;-><init>(ILandroid/renderscript/RenderScript;)V

    .local v4, pv:Landroid/renderscript/ProgramVertex;
    invoke-virtual {p0, v4}, Landroid/renderscript/ProgramVertex$ShaderBuilder;->initProgram(Landroid/renderscript/Program;)V

    return-object v4
.end method
