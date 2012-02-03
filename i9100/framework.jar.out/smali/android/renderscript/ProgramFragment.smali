.class public Landroid/renderscript/ProgramFragment;
.super Landroid/renderscript/Program;
.source "ProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragment$Builder;,
        Landroid/renderscript/ProgramFragment$ShaderBuilder;
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/renderscript/Program;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 31
    return-void
.end method
