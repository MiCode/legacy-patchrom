.class public Landroid/renderscript/ProgramStore;
.super Landroid/renderscript/BaseObj;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramStore$Builder;,
        Landroid/renderscript/ProgramStore$BlendDstFunc;,
        Landroid/renderscript/ProgramStore$BlendSrcFunc;,
        Landroid/renderscript/ProgramStore$DepthFunc;
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 79
    invoke-direct {p0, p2}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 80
    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 81
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
