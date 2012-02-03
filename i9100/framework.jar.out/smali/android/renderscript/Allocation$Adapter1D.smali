.class public Landroid/renderscript/Allocation$Adapter1D;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Allocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter1D"
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
    .line 148
    iput-object p1, p0, Landroid/renderscript/Allocation$Adapter1D;->this$0:Landroid/renderscript/Allocation;

    .line 149
    invoke-direct {p0, p3}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 150
    iput p2, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 151
    return-void
.end method


# virtual methods
.method public data([F)V
    .locals 2
    .parameter "d"

    .prologue
    .line 164
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 165
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAdapter1DData(I[F)V

    .line 166
    return-void
.end method

.method public data([I)V
    .locals 2
    .parameter "d"

    .prologue
    .line 159
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 160
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAdapter1DData(I[I)V

    .line 161
    return-void
.end method

.method public bridge synthetic destroy()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method public bridge synthetic getID()I
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    return v0
.end method

.method public setConstraint(Landroid/renderscript/Dimension;I)V
    .locals 3
    .parameter "dim"
    .parameter "value"

    .prologue
    .line 154
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 155
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget v2, p1, Landroid/renderscript/Dimension;->mID:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/renderscript/RenderScript;->nAdapter1DSetConstraint(III)V

    .line 156
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
    .line 147
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public subData(II[F)V
    .locals 2
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 174
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 175
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/renderscript/RenderScript;->nAdapter1DSubData(III[F)V

    .line 176
    return-void
.end method

.method public subData(II[I)V
    .locals 2
    .parameter "off"
    .parameter "count"
    .parameter "d"

    .prologue
    .line 169
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 170
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/renderscript/RenderScript;->nAdapter1DSubData(III[I)V

    .line 171
    return-void
.end method
