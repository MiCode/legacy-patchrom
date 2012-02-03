.class public Landroid/renderscript/Program$BaseProgramBuilder;
.super Ljava/lang/Object;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseProgramBuilder"
.end annotation


# instance fields
.field mConstantCount:I

.field mConstants:[Landroid/renderscript/Type;

.field mInputCount:I

.field mInputs:[Landroid/renderscript/Element;

.field mOutputCount:I

.field mOutputs:[Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mShader:Ljava/lang/String;

.field mTextureCount:I

.field mTextures:[Landroid/renderscript/Type;


# direct methods
.method protected constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3
    .parameter "rs"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 85
    new-array v0, v2, [Landroid/renderscript/Element;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    .line 86
    new-array v0, v2, [Landroid/renderscript/Element;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    .line 87
    new-array v0, v2, [Landroid/renderscript/Type;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    .line 88
    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    .line 89
    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    .line 90
    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 91
    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 92
    return-void
.end method


# virtual methods
.method public addConstant(Landroid/renderscript/Type;)I
    .locals 2
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 116
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    aput-object p1, v0, v1

    .line 120
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    return v0
.end method

.method public addInput(Landroid/renderscript/Element;)V
    .locals 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 100
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    aput-object p1, v0, v1

    .line 104
    return-void
.end method

.method public addOutput(Landroid/renderscript/Element;)V
    .locals 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 108
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max output count exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    aput-object p1, v0, v1

    .line 112
    return-void
.end method

.method protected initProgram(Landroid/renderscript/Program;)V
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 132
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    new-array v0, v0, [Landroid/renderscript/Element;

    iput-object v0, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    .line 133
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    iget-object v1, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    new-array v0, v0, [Landroid/renderscript/Element;

    iput-object v0, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    .line 135
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    iget-object v1, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    new-array v0, v0, [Landroid/renderscript/Type;

    iput-object v0, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    .line 137
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    iget-object v1, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    iput v0, p1, Landroid/renderscript/Program;->mTextureCount:I

    .line 139
    return-void
.end method

.method public setShader(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 95
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setTextureCount(I)V
    .locals 2
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 125
    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max texture count exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iput p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 129
    return-void
.end method
