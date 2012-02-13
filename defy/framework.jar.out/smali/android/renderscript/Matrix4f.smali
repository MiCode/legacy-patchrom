.class public Landroid/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 2
    .parameter "i"
    .parameter "j"

    .prologue
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public load(Landroid/renderscript/Matrix4f;)V
    .locals 3
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x10

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadFrustum(FFFFFF)V
    .locals 5
    .parameter "l"
    .parameter "r"
    .parameter "b"
    .parameter "t"
    .parameter "n"
    .parameter "f"

    .prologue
    const/high16 v4, 0x4000

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    mul-float v2, v4, p5

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    mul-float v2, v4, p5

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x8

    add-float v2, p2, p1

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x9

    add-float v2, p4, p3

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    add-float v2, p6, p5

    neg-float v2, v2

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    const/high16 v2, -0x4080

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    const/high16 v2, -0x4000

    mul-float/2addr v2, p6

    mul-float/2addr v2, p5

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V
    .locals 13
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v12, :cond_1

    const/4 v3, 0x0

    .local v3, ri0:F
    const/4 v4, 0x0

    .local v4, ri1:F
    const/4 v5, 0x0

    .local v5, ri2:F
    const/4 v6, 0x0

    .local v6, ri3:F
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v12, :cond_0

    invoke-virtual {p2, v0, v1}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v2

    .local v2, rhs_ij:F
    invoke-virtual {p1, v1, v8}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v3, v7

    invoke-virtual {p1, v1, v9}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v4, v7

    invoke-virtual {p1, v1, v10}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v5, v7

    invoke-virtual {p1, v1, v11}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #rhs_ij:F
    :cond_0
    invoke-virtual {p0, v0, v8, v3}, Landroid/renderscript/Matrix4f;->set(IIF)V

    invoke-virtual {p0, v0, v9, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    invoke-virtual {p0, v0, v10, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    invoke-virtual {p0, v0, v11, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #j:I
    .end local v3           #ri0:F
    .end local v4           #ri1:F
    .end local v5           #ri2:F
    .end local v6           #ri3:F
    :cond_1
    return-void
.end method

.method public loadOrtho(FFFFFF)V
    .locals 4
    .parameter "l"
    .parameter "r"
    .parameter "b"
    .parameter "t"
    .parameter "n"
    .parameter "f"

    .prologue
    const/high16 v3, 0x4000

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    sub-float v2, p2, p1

    div-float v2, v3, v2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    sub-float v2, p4, p3

    div-float v2, v3, v2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    const/high16 v2, -0x4000

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    add-float v2, p2, p1

    neg-float v2, v2

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    add-float v2, p4, p3

    neg-float v2, v2

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    add-float v2, p6, p5

    neg-float v2, v2

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 14
    .parameter "rot"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x7

    const/4 v13, 0x0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xb

    const/4 v13, 0x0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xc

    const/4 v13, 0x0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xd

    const/4 v13, 0x0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xe

    const/4 v13, 0x0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xf

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    const v11, 0x3c8efa35

    mul-float/2addr p1, v11

    float-to-double v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v0, v11

    .local v0, c:F
    float-to-double v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v4, v11

    .local v4, s:F
    mul-float v11, p2, p2

    mul-float v12, p3, p3

    add-float/2addr v11, v12

    mul-float v12, p4, p4

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v1, v11

    .local v1, len:F
    const/high16 v11, 0x3f80

    cmpl-float v11, v1, v11

    if-nez v11, :cond_0

    const/high16 v11, 0x3f80

    div-float v3, v11, v1

    .local v3, recipLen:F
    mul-float p2, p2, v3

    mul-float p3, p3, v3

    mul-float p4, p4, v3

    .end local v3           #recipLen:F
    :cond_0
    const/high16 v11, 0x3f80

    sub-float v2, v11, v0

    .local v2, nc:F
    mul-float v6, p2, p3

    .local v6, xy:F
    mul-float v8, p3, p4

    .local v8, yz:F
    mul-float v10, p4, p2

    .local v10, zx:F
    mul-float v5, p2, v4

    .local v5, xs:F
    mul-float v7, p3, v4

    .local v7, ys:F
    mul-float v9, p4, v4

    .local v9, zs:F
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x0

    mul-float v13, p2, p2

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x4

    mul-float v13, v6, v2

    sub-float/2addr v13, v9

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0x8

    mul-float v13, v10, v2

    add-float/2addr v13, v7

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x1

    mul-float v13, v6, v2

    add-float/2addr v13, v9

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x5

    mul-float v13, p3, p3

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0x9

    mul-float v13, v8, v2

    sub-float/2addr v13, v5

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x2

    mul-float v13, v10, v2

    sub-float/2addr v13, v7

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x6

    mul-float v13, v8, v2

    add-float/2addr v13, v5

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xa

    mul-float v13, p4, p4

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    return-void
.end method

.method public loadScale(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    return-void
.end method

.method public loadTranslate(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix4f;)V
    .locals 1
    .parameter "rhs"

    .prologue
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v0, tmp:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .parameter "rot"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v0, tmp:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v0, tmp:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public set(IIF)V
    .locals 2
    .parameter "i"
    .parameter "j"
    .parameter "v"

    .prologue
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aput p3, v0, v1

    return-void
.end method

.method public translate(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v0, tmp:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    return-void
.end method
