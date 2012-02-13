.class public Landroid/renderscript/ProgramVertex$MatrixAllocation;
.super Ljava/lang/Object;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatrixAllocation"
.end annotation


# static fields
.field static final MODELVIEW_OFFSET:I = 0x0

.field static final PROJECTION_OFFSET:I = 0x10

.field static final TEXTURE_OFFSET:I = 0x20


# instance fields
.field public mAlloc:Landroid/renderscript/Allocation;

.field mModel:Landroid/renderscript/Matrix4f;

.field mProjection:Landroid/renderscript/Matrix4f;

.field mTexture:Landroid/renderscript/Matrix4f;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 4
    .parameter "rs"

    .prologue
    const/16 v3, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mModel:Landroid/renderscript/Matrix4f;

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mProjection:Landroid/renderscript/Matrix4f;

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mTexture:Landroid/renderscript/Matrix4f;

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-static {p1, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {p1, v0, v1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    iget-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mModel:Landroid/renderscript/Matrix4f;

    iget-object v2, v2, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {v0, v1, v3, v2}, Landroid/renderscript/Allocation;->subData1D(II[F)V

    iget-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mProjection:Landroid/renderscript/Matrix4f;

    iget-object v1, v1, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {v0, v3, v3, v1}, Landroid/renderscript/Allocation;->subData1D(II[F)V

    iget-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    const/16 v1, 0x20

    iget-object v2, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mTexture:Landroid/renderscript/Matrix4f;

    iget-object v2, v2, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {v0, v1, v3, v2}, Landroid/renderscript/Allocation;->subData1D(II[F)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    return-void
.end method

.method public loadModelview(Landroid/renderscript/Matrix4f;)V
    .locals 4
    .parameter "m"

    .prologue
    iput-object p1, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mModel:Landroid/renderscript/Matrix4f;

    iget-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    const/16 v2, 0x10

    iget-object v3, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/Allocation;->subData1D(II[F)V

    return-void
.end method

.method public loadProjection(Landroid/renderscript/Matrix4f;)V
    .locals 3
    .parameter "m"

    .prologue
    const/16 v2, 0x10

    iput-object p1, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mProjection:Landroid/renderscript/Matrix4f;

    iget-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    iget-object v1, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {v0, v2, v2, v1}, Landroid/renderscript/Allocation;->subData1D(II[F)V

    return-void
.end method

.method public loadTexture(Landroid/renderscript/Matrix4f;)V
    .locals 4
    .parameter "m"

    .prologue
    iput-object p1, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mTexture:Landroid/renderscript/Matrix4f;

    iget-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    const/16 v1, 0x20

    const/16 v2, 0x10

    iget-object v3, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/Allocation;->subData1D(II[F)V

    return-void
.end method

.method public setupOrthoNormalized(II)V
    .locals 13
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v12, 0x10

    const/high16 v4, 0x3f80

    const/high16 v3, -0x4080

    if-le p1, p2, :cond_0

    int-to-float v0, p1

    int-to-float v1, p2

    div-float v2, v0, v1

    .local v2, aspect:F
    iget-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mProjection:Landroid/renderscript/Matrix4f;

    neg-float v1, v2

    move v5, v3

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    :goto_0
    iget-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mProjection:Landroid/renderscript/Matrix4f;

    iget-object v1, v1, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {v0, v12, v12, v1}, Landroid/renderscript/Allocation;->subData1D(II[F)V

    return-void

    .end local v2           #aspect:F
    :cond_0
    int-to-float v0, p2

    int-to-float v1, p1

    div-float v2, v0, v1

    .restart local v2       #aspect:F
    iget-object v5, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mProjection:Landroid/renderscript/Matrix4f;

    neg-float v8, v2

    move v6, v3

    move v7, v4

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    goto :goto_0
.end method

.method public setupOrthoWindow(II)V
    .locals 8
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v7, 0x10

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mProjection:Landroid/renderscript/Matrix4f;

    int-to-float v2, p1

    int-to-float v3, p2

    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    iget-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mProjection:Landroid/renderscript/Matrix4f;

    iget-object v1, v1, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {v0, v7, v7, v1}, Landroid/renderscript/Allocation;->subData1D(II[F)V

    return-void
.end method

.method public setupProjectionNormalized(II)V
    .locals 11
    .parameter "w"
    .parameter "h"

    .prologue
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v0, m1:Landroid/renderscript/Matrix4f;
    new-instance v10, Landroid/renderscript/Matrix4f;

    invoke-direct {v10}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v10, m2:Landroid/renderscript/Matrix4f;
    if-le p1, p2, :cond_0

    int-to-float v1, p1

    int-to-float v2, p2

    div-float v2, v1, v2

    .local v2, aspect:F
    neg-float v1, v2

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x42c8

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    :goto_0
    const/high16 v1, 0x4334

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .end local v2           #aspect:F
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    const/high16 v1, -0x4000

    const/high16 v2, 0x4000

    const/high16 v3, 0x3f80

    invoke-virtual {v10, v1, v2, v3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-virtual {v10, v1, v2, v3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    iput-object v0, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mProjection:Landroid/renderscript/Matrix4f;

    iget-object v1, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mAlloc:Landroid/renderscript/Allocation;

    const/16 v2, 0x10

    const/16 v3, 0x10

    iget-object v4, p0, Landroid/renderscript/ProgramVertex$MatrixAllocation;->mProjection:Landroid/renderscript/Matrix4f;

    iget-object v4, v4, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {v1, v2, v3, v4}, Landroid/renderscript/Allocation;->subData1D(II[F)V

    return-void

    :cond_0
    int-to-float v1, p2

    int-to-float v2, p1

    div-float v2, v1, v2

    .restart local v2       #aspect:F
    const/high16 v4, -0x4080

    const/high16 v5, 0x3f80

    neg-float v6, v2

    const/high16 v8, 0x3f80

    const/high16 v9, 0x42c8

    move-object v3, v0

    move v7, v2

    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    goto :goto_0
.end method
