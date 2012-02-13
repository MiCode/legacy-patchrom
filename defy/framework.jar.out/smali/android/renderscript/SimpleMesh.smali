.class public Landroid/renderscript/SimpleMesh;
.super Landroid/renderscript/BaseObj;
.source "SimpleMesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;,
        Landroid/renderscript/SimpleMesh$Builder;
    }
.end annotation


# instance fields
.field mIndexType:Landroid/renderscript/Type;

.field mPrimitive:Landroid/renderscript/Primitive;

.field mVertexTypes:[Landroid/renderscript/Type;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "id"
    .parameter "rs"

    .prologue
    invoke-direct {p0, p2}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    return-void
.end method


# virtual methods
.method public bindIndexAllocation(Landroid/renderscript/Allocation;)V
    .locals 3
    .parameter "a"

    .prologue
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget v2, p1, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nSimpleMeshBindIndex(II)V

    return-void
.end method

.method public bindVertexAllocation(Landroid/renderscript/Allocation;I)V
    .locals 3
    .parameter "a"
    .parameter "slot"

    .prologue
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    iget v2, p1, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/renderscript/RenderScript;->nSimpleMeshBindVertex(III)V

    return-void
.end method

.method public createIndexAllocation()Landroid/renderscript/Allocation;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/SimpleMesh;->mIndexType:Landroid/renderscript/Type;

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public createVertexAllocation(I)Landroid/renderscript/Allocation;
    .locals 2
    .parameter "slot"

    .prologue
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/SimpleMesh;->mVertexTypes:[Landroid/renderscript/Type;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic destroy()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method public bridge synthetic getID()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    return v0
.end method

.method public getIndexType()Landroid/renderscript/Type;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/SimpleMesh;->mIndexType:Landroid/renderscript/Type;

    return-object v0
.end method

.method public getVertexType(I)Landroid/renderscript/Type;
    .locals 1
    .parameter "slot"

    .prologue
    iget-object v0, p0, Landroid/renderscript/SimpleMesh;->mVertexTypes:[Landroid/renderscript/Type;

    aget-object v0, v0, p1

    return-object v0
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
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method
