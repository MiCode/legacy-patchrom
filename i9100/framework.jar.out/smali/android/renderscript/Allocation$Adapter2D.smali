.class public Landroid/renderscript/Allocation$Adapter2D;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Allocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter2D"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(Landroid/renderscript/Allocation;ILandroid/renderscript/RenderScript;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 191
    iput-object p1, p0, Landroid/renderscript/Allocation$Adapter2D;->this$0:Landroid/renderscript/Allocation;

    .line 192
    invoke-direct {p0, p3}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 193
    iput p2, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 194
    return-void
.end method


# virtual methods
.method public data([F)V
    .locals 2
    .parameter "d"

    .prologue
    .line 207
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 208
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAdapter2DData(I[F)V

    .line 209
    return-void
.end method

.method public data([I)V
    .locals 2
    .parameter "d"

    .prologue
    .line 202
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 203
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAdapter2DData(I[I)V

    .line 204
    return-void
.end method

.method public bridge synthetic destroy()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method public bridge synthetic getID()I
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    return v0
.end method

.method public setConstraint(Landroid/renderscript/Dimension;I)V
    .locals 3
    .parameter "dim"
    .parameter "value"

    .prologue
    .line 197
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 198
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget v2, p1, Landroid/renderscript/Dimension;->mID:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/renderscript/RenderScript;->nAdapter2DSetConstraint(III)V

    .line 199
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
    .line 190
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public subData(IIII[F)V
    .locals 7
    .parameter "xoff"
    .parameter "yoff"
    .parameter "w"
    .parameter "h"
    .parameter "d"

    .prologue
    .line 217
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 218
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAdapter2DSubData(IIIII[F)V

    .line 219
    return-void
.end method

.method public subData(IIII[I)V
    .locals 7
    .parameter "xoff"
    .parameter "yoff"
    .parameter "w"
    .parameter "h"
    .parameter "d"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 213
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAdapter2DSubData(IIIII[I)V

    .line 214
    return-void
.end method
