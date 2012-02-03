.class public Landroid/renderscript/Program;
.super Landroid/renderscript/BaseObj;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Program$BaseProgramBuilder;
    }
.end annotation


# static fields
.field public static final MAX_CONSTANT:I = 0x8

.field public static final MAX_INPUT:I = 0x8

.field public static final MAX_OUTPUT:I = 0x8

.field public static final MAX_TEXTURE:I = 0x8


# instance fields
.field mConstants:[Landroid/renderscript/Type;

.field mInputs:[Landroid/renderscript/Element;

.field mOutputs:[Landroid/renderscript/Element;

.field mShader:Ljava/lang/String;

.field mTextureCount:I


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 41
    invoke-direct {p0, p2}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 42
    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 43
    return-void
.end method


# virtual methods
.method public bindConstants(Landroid/renderscript/Allocation;I)V
    .locals 3
    .parameter "a"
    .parameter "slot"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget v2, p1, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p2, v2}, Landroid/renderscript/RenderScript;->nProgramBindConstants(III)V

    .line 47
    return-void
.end method

.method public bindSampler(Landroid/renderscript/Sampler;I)V
    .locals 3
    .parameter "vs"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 62
    if-ltz p2, :cond_0

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p2, v0, :cond_1

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget v2, p1, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p2, v2}, Landroid/renderscript/RenderScript;->nProgramBindSampler(III)V

    .line 67
    return-void
.end method

.method public bindTexture(Landroid/renderscript/Allocation;I)V
    .locals 3
    .parameter "va"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 52
    if-ltz p2, :cond_0

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p2, v0, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget v2, p1, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p2, v2}, Landroid/renderscript/RenderScript;->nProgramBindTexture(III)V

    .line 57
    return-void
.end method

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
