.class public Landroid/renderscript/Matrix2f;
.super Ljava/lang/Object;
.source "Matrix2f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    .line 31
    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    .line 32
    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 2
    .parameter "i"
    .parameter "j"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public load(Landroid/renderscript/Matrix2f;)V
    .locals 3
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x4

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 44
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 46
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 47
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 48
    return-void
.end method

.method public set(IIF)V
    .locals 2
    .parameter "i"
    .parameter "j"
    .parameter "v"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 40
    return-void
.end method
