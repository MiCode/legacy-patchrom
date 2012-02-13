.class public Landroid/graphics/utils/BoundaryPatch;
.super Ljava/lang/Object;
.source "BoundaryPatch.java"


# instance fields
.field private mCols:I

.field private mCubicPoints:[F

.field private mDirty:Z

.field private mIndices:[S

.field private mPaint:Landroid/graphics/Paint;

.field private mRows:I

.field private mTexture:Landroid/graphics/Bitmap;

.field private mVerts:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/utils/BoundaryPatch;->mCols:I

    iput v0, p0, Landroid/graphics/utils/BoundaryPatch;->mRows:I

    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mCubicPoints:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iput-boolean v1, p0, Landroid/graphics/utils/BoundaryPatch;->mDirty:Z

    return-void
.end method

.method private buildCache()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    iget v0, p0, Landroid/graphics/utils/BoundaryPatch;->mRows:I

    iget v1, p0, Landroid/graphics/utils/BoundaryPatch;->mCols:I

    mul-int/2addr v0, v1

    mul-int/lit8 v8, v0, 0x4

    .local v8, vertCount:I
    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mVerts:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mVerts:[F

    array-length v0, v0

    if-eq v0, v8, :cond_1

    :cond_0
    new-array v0, v8, [F

    iput-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mVerts:[F

    :cond_1
    iget v0, p0, Landroid/graphics/utils/BoundaryPatch;->mRows:I

    sub-int/2addr v0, v2

    iget v1, p0, Landroid/graphics/utils/BoundaryPatch;->mCols:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    mul-int/lit8 v7, v0, 0x6

    .local v7, indexCount:I
    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mIndices:[S

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mIndices:[S

    array-length v0, v0

    if-eq v0, v7, :cond_3

    :cond_2
    new-array v0, v7, [S

    iput-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mIndices:[S

    :cond_3
    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mCubicPoints:[F

    iget-object v1, p0, Landroid/graphics/utils/BoundaryPatch;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/graphics/utils/BoundaryPatch;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/graphics/utils/BoundaryPatch;->mRows:I

    iget v4, p0, Landroid/graphics/utils/BoundaryPatch;->mCols:I

    iget-object v5, p0, Landroid/graphics/utils/BoundaryPatch;->mVerts:[F

    iget-object v6, p0, Landroid/graphics/utils/BoundaryPatch;->mIndices:[S

    invoke-static/range {v0 .. v6}, Landroid/graphics/utils/BoundaryPatch;->nativeComputeCubicPatch([FIIII[F[S)V

    return-void
.end method

.method private static native nativeComputeCubicPatch([FIIII[F[S)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/graphics/utils/BoundaryPatch;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/graphics/utils/BoundaryPatch;->buildCache()V

    iput-boolean v4, p0, Landroid/graphics/utils/BoundaryPatch;->mDirty:Z

    :cond_0
    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mVerts:[F

    array-length v0, v0

    shr-int/lit8 v2, v0, 0x1

    .local v2, vertCount:I
    sget-object v1, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    iget-object v3, p0, Landroid/graphics/utils/BoundaryPatch;->mVerts:[F

    iget-object v5, p0, Landroid/graphics/utils/BoundaryPatch;->mVerts:[F

    const/4 v7, 0x0

    iget-object v9, p0, Landroid/graphics/utils/BoundaryPatch;->mIndices:[S

    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mIndices:[S

    array-length v11, v0

    iget-object v12, p0, Landroid/graphics/utils/BoundaryPatch;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v6, v2

    move v8, v4

    move v10, v4

    invoke-virtual/range {v0 .. v12}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    return-void
.end method

.method public getPaintFlags()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setCubicBoundary([FIII)V
    .locals 3
    .parameter "pts"
    .parameter "offset"
    .parameter "rows"
    .parameter "cols"

    .prologue
    const/4 v0, 0x2

    if-lt p3, v0, :cond_0

    if-ge p4, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "rows and cols must be >= 2"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mCubicPoints:[F

    const/4 v1, 0x0

    const/16 v2, 0x18

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroid/graphics/utils/BoundaryPatch;->mRows:I

    if-ne v0, p3, :cond_2

    iget v0, p0, Landroid/graphics/utils/BoundaryPatch;->mCols:I

    if-eq v0, p4, :cond_3

    :cond_2
    iput p3, p0, Landroid/graphics/utils/BoundaryPatch;->mRows:I

    iput p4, p0, Landroid/graphics/utils/BoundaryPatch;->mCols:I

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/utils/BoundaryPatch;->mDirty:Z

    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "texture"

    .prologue
    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mTexture:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/utils/BoundaryPatch;->mDirty:Z

    :cond_1
    iput-object p1, p0, Landroid/graphics/utils/BoundaryPatch;->mTexture:Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .parameter "mode"

    .prologue
    iget-object v0, p0, Landroid/graphics/utils/BoundaryPatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method
