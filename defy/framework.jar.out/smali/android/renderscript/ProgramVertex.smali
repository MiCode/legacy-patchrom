.class public Landroid/renderscript/ProgramVertex;
.super Landroid/renderscript/Program;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramVertex$MatrixAllocation;,
        Landroid/renderscript/ProgramVertex$ShaderBuilder;,
        Landroid/renderscript/ProgramVertex$Builder;
    }
.end annotation


# static fields
.field public static final MAX_LIGHT:I = 0x8


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "id"
    .parameter "rs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/renderscript/Program;-><init>(ILandroid/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/renderscript/ProgramVertex$MatrixAllocation;)V
    .locals 2
    .parameter "va"

    .prologue
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p1, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ProgramVertex;->bindConstants(Landroid/renderscript/Allocation;I)V

    return-void
.end method
