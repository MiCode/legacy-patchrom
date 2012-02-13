.class public Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;
.super Ljava/lang/Object;
.source "SimpleMesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/SimpleMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriangleMeshBuilder"
.end annotation


# static fields
.field public static final COLOR:I = 0x1

.field public static final NORMAL:I = 0x2

.field public static final TEXTURE_0:I = 0x100


# instance fields
.field mA:F

.field mB:F

.field mElement:Landroid/renderscript/Element;

.field mFlags:I

.field mG:F

.field mIndexCount:I

.field mIndexData:[S

.field mNX:F

.field mNY:F

.field mNZ:F

.field mR:F

.field mRS:Landroid/renderscript/RenderScript;

.field mS0:F

.field mT0:F

.field mVtxCount:I

.field mVtxData:[F

.field mVtxSize:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 5
    .parameter "rs"
    .parameter "vtxSize"
    .parameter "flags"

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNX:F

    iput v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNY:F

    const/high16 v0, -0x4080

    iput v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNZ:F

    iput v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mS0:F

    iput v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mT0:F

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mR:F

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mG:F

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mB:F

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mA:F

    iput-object p1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    iput v3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iput v3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    new-array v0, v4, [F

    iput-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    new-array v0, v4, [S

    iput-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    iput p2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxSize:I

    iput p3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vertex size out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private latch()V
    .locals 3

    .prologue
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->makeSpace(I)V

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mR:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mG:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mB:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mA:F

    aput v2, v0, v1

    :cond_0
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->makeSpace(I)V

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mS0:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mT0:F

    aput v2, v0, v1

    :cond_1
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->makeSpace(I)V

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNX:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNY:F

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNZ:F

    aput v2, v0, v1

    :cond_2
    return-void
.end method

.method private makeSpace(I)V
    .locals 4
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/2addr v1, p1

    iget-object v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v2, v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [F

    .local v0, t:[F
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget-object v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    .end local v0           #t:[F
    :cond_0
    return-void
.end method


# virtual methods
.method public addTriangle(III)V
    .locals 4
    .parameter "idx1"
    .parameter "idx2"
    .parameter "idx3"

    .prologue
    const/4 v3, 0x0

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    if-ge p2, v1, :cond_0

    if-ltz p2, :cond_0

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    if-ge p3, v1, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Index provided greater than vertex count."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v2, v2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [S

    .local v0, t:[S
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    iget-object v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    .end local v0           #t:[S
    :cond_2
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p1

    aput-short v3, v1, v2

    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p2

    aput-short v3, v1, v2

    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p3

    aput-short v3, v1, v2

    return-void
.end method

.method public addVertex(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x2

    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxSize:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, v1}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->makeSpace(I)V

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v1

    invoke-direct {p0}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->latch()V

    return-void
.end method

.method public addVertex(FFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x3

    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxSize:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, v1}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->makeSpace(I)V

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v1

    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    aput p3, v0, v1

    invoke-direct {p0}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->latch()V

    return-void
.end method

.method public create()Landroid/renderscript/SimpleMesh;
    .locals 11

    .prologue
    const/4 v10, 0x0

    new-instance v0, Landroid/renderscript/Element$Builder;

    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v6}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .local v0, b:Landroid/renderscript/Element$Builder;
    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxSize:I

    .local v1, floatCount:I
    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v7, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v8, Landroid/renderscript/Element$DataKind;->POSITION:Landroid/renderscript/Element$DataKind;

    iget v9, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxSize:I

    invoke-static {v6, v7, v8, v9}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v6

    const-string v7, "position"

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    iget v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    add-int/lit8 v1, v1, 0x4

    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v7, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v8, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    const/4 v9, 0x4

    invoke-static {v6, v7, v8, v9}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v6

    const-string v7, "color"

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    :cond_0
    iget v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_1

    add-int/lit8 v1, v1, 0x2

    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v7, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v8, Landroid/renderscript/Element$DataKind;->TEXTURE:Landroid/renderscript/Element$DataKind;

    const/4 v9, 0x2

    invoke-static {v6, v7, v8, v9}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v6

    const-string v7, "texture"

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    :cond_1
    iget v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    add-int/lit8 v1, v1, 0x3

    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v7, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v8, Landroid/renderscript/Element$DataKind;->NORMAL:Landroid/renderscript/Element$DataKind;

    const/4 v9, 0x3

    invoke-static {v6, v7, v8, v9}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v6

    const-string v7, "normal"

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v6

    iput-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    new-instance v4, Landroid/renderscript/SimpleMesh$Builder;

    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v4, v6}, Landroid/renderscript/SimpleMesh$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .local v4, smb:Landroid/renderscript/SimpleMesh$Builder;
    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    iget v7, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    div-int/2addr v7, v1

    invoke-virtual {v4, v6, v7}, Landroid/renderscript/SimpleMesh$Builder;->addVertexType(Landroid/renderscript/Element;I)I

    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->createIndex(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    iget v7, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    invoke-virtual {v4, v6, v7}, Landroid/renderscript/SimpleMesh$Builder;->setIndexType(Landroid/renderscript/Element;I)V

    sget-object v6, Landroid/renderscript/Primitive;->TRIANGLE:Landroid/renderscript/Primitive;

    invoke-virtual {v4, v6}, Landroid/renderscript/SimpleMesh$Builder;->setPrimitive(Landroid/renderscript/Primitive;)V

    invoke-virtual {v4}, Landroid/renderscript/SimpleMesh$Builder;->create()Landroid/renderscript/SimpleMesh;

    move-result-object v3

    .local v3, sm:Landroid/renderscript/SimpleMesh;
    invoke-virtual {v3, v10}, Landroid/renderscript/SimpleMesh;->createVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v5

    .local v5, vertexAlloc:Landroid/renderscript/Allocation;
    invoke-virtual {v3}, Landroid/renderscript/SimpleMesh;->createIndexAllocation()Landroid/renderscript/Allocation;

    move-result-object v2

    .local v2, indexAlloc:Landroid/renderscript/Allocation;
    invoke-virtual {v3, v5, v10}, Landroid/renderscript/SimpleMesh;->bindVertexAllocation(Landroid/renderscript/Allocation;I)V

    invoke-virtual {v3, v2}, Landroid/renderscript/SimpleMesh;->bindIndexAllocation(Landroid/renderscript/Allocation;)V

    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    invoke-virtual {v5, v6}, Landroid/renderscript/Allocation;->data([F)V

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->uploadToBufferObject()V

    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    invoke-virtual {v2, v6}, Landroid/renderscript/Allocation;->data([S)V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->uploadToBufferObject()V

    return-object v3
.end method

.method public setColor(FFFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mR:F

    iput p2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mG:F

    iput p3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mB:F

    iput p4, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mA:F

    return-void
.end method

.method public setNormal(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNX:F

    iput p2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNY:F

    iput p3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNZ:F

    return-void
.end method

.method public setTexture(FF)V
    .locals 2
    .parameter "s"
    .parameter "t"

    .prologue
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mS0:F

    iput p2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mT0:F

    return-void
.end method
