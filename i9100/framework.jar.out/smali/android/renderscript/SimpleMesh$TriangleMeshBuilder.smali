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

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNX:F

    .line 190
    iput v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNY:F

    .line 191
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNZ:F

    .line 192
    iput v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mS0:F

    .line 193
    iput v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mT0:F

    .line 194
    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mR:F

    .line 195
    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mG:F

    .line 196
    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mB:F

    .line 197
    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mA:F

    .line 207
    iput-object p1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 208
    iput v3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    .line 209
    iput v3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    .line 210
    new-array v0, v4, [F

    iput-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    .line 211
    new-array v0, v4, [S

    iput-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    .line 212
    iput p2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxSize:I

    .line 213
    iput p3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    .line 215
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vertex size out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    return-void
.end method

.method private latch()V
    .locals 3

    .prologue
    .line 229
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 231
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mR:F

    aput v2, v0, v1

    .line 232
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mG:F

    aput v2, v0, v1

    .line 233
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mB:F

    aput v2, v0, v1

    .line 234
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mA:F

    aput v2, v0, v1

    .line 236
    :cond_0
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 237
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 238
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mS0:F

    aput v2, v0, v1

    .line 239
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mT0:F

    aput v2, v0, v1

    .line 241
    :cond_1
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 242
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 243
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNX:F

    aput v2, v0, v1

    .line 244
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNY:F

    aput v2, v0, v1

    .line 245
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNZ:F

    aput v2, v0, v1

    .line 247
    :cond_2
    return-void
.end method

.method private makeSpace(I)V
    .locals 4
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 221
    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/2addr v1, p1

    iget-object v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 222
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [F

    .line 223
    .local v0, t:[F
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget-object v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iput-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    .line 226
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

    .line 298
    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    if-ge p2, v1, :cond_0

    if-ltz p2, :cond_0

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    if-ge p3, v1, :cond_0

    if-gez p3, :cond_1

    .line 301
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Index provided greater than vertex count."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_1
    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 304
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [S

    .line 305
    .local v0, t:[S
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    iget-object v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    iput-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    .line 308
    .end local v0           #t:[S
    :cond_2
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p1

    aput-short v3, v1, v2

    .line 309
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p2

    aput-short v3, v1, v2

    .line 310
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p3

    aput-short v3, v1, v2

    .line 311
    return-void
.end method

.method public addVertex(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x2

    .line 250
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxSize:I

    if-eq v0, v1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    invoke-direct {p0, v1}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 254
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    aput p1, v0, v1

    .line 255
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v1

    .line 256
    invoke-direct {p0}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->latch()V

    .line 257
    return-void
.end method

.method public addVertex(FFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x3

    .line 260
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxSize:I

    if-eq v0, v1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    invoke-direct {p0, v1}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 264
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    aput p1, v0, v1

    .line 265
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v1

    .line 266
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    aput p3, v0, v1

    .line 267
    invoke-direct {p0}, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->latch()V

    .line 268
    return-void
.end method

.method public create()Landroid/renderscript/SimpleMesh;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 314
    new-instance v0, Landroid/renderscript/Element$Builder;

    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v6}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 315
    .local v0, b:Landroid/renderscript/Element$Builder;
    iget v1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxSize:I

    .line 316
    .local v1, floatCount:I
    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v7, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v8, Landroid/renderscript/Element$DataKind;->POSITION:Landroid/renderscript/Element$DataKind;

    iget v9, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxSize:I

    invoke-static {v6, v7, v8, v9}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v6

    const-string/jumbo v7, "position"

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    .line 320
    iget v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 321
    add-int/lit8 v1, v1, 0x4

    .line 322
    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v7, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v8, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    const/4 v9, 0x4

    invoke-static {v6, v7, v8, v9}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v6

    const-string v7, "color"

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    .line 327
    :cond_0
    iget v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_1

    .line 328
    add-int/lit8 v1, v1, 0x2

    .line 329
    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v7, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v8, Landroid/renderscript/Element$DataKind;->TEXTURE:Landroid/renderscript/Element$DataKind;

    const/4 v9, 0x2

    invoke-static {v6, v7, v8, v9}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v6

    const-string/jumbo v7, "texture"

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    .line 334
    :cond_1
    iget v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 335
    add-int/lit8 v1, v1, 0x3

    .line 336
    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v7, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v8, Landroid/renderscript/Element$DataKind;->NORMAL:Landroid/renderscript/Element$DataKind;

    const/4 v9, 0x3

    invoke-static {v6, v7, v8, v9}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v6

    const-string/jumbo v7, "normal"

    invoke-virtual {v0, v6, v7}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    .line 341
    :cond_2
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v6

    iput-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    .line 343
    new-instance v4, Landroid/renderscript/SimpleMesh$Builder;

    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v4, v6}, Landroid/renderscript/SimpleMesh$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 344
    .local v4, smb:Landroid/renderscript/SimpleMesh$Builder;
    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    iget v7, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxCount:I

    div-int/2addr v7, v1

    invoke-virtual {v4, v6, v7}, Landroid/renderscript/SimpleMesh$Builder;->addVertexType(Landroid/renderscript/Element;I)I

    .line 345
    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->createIndex(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    iget v7, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexCount:I

    invoke-virtual {v4, v6, v7}, Landroid/renderscript/SimpleMesh$Builder;->setIndexType(Landroid/renderscript/Element;I)V

    .line 346
    sget-object v6, Landroid/renderscript/Primitive;->TRIANGLE:Landroid/renderscript/Primitive;

    invoke-virtual {v4, v6}, Landroid/renderscript/SimpleMesh$Builder;->setPrimitive(Landroid/renderscript/Primitive;)V

    .line 347
    invoke-virtual {v4}, Landroid/renderscript/SimpleMesh$Builder;->create()Landroid/renderscript/SimpleMesh;

    move-result-object v3

    .line 349
    .local v3, sm:Landroid/renderscript/SimpleMesh;
    invoke-virtual {v3, v10}, Landroid/renderscript/SimpleMesh;->createVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v5

    .line 350
    .local v5, vertexAlloc:Landroid/renderscript/Allocation;
    invoke-virtual {v3}, Landroid/renderscript/SimpleMesh;->createIndexAllocation()Landroid/renderscript/Allocation;

    move-result-object v2

    .line 351
    .local v2, indexAlloc:Landroid/renderscript/Allocation;
    invoke-virtual {v3, v5, v10}, Landroid/renderscript/SimpleMesh;->bindVertexAllocation(Landroid/renderscript/Allocation;I)V

    .line 352
    invoke-virtual {v3, v2}, Landroid/renderscript/SimpleMesh;->bindIndexAllocation(Landroid/renderscript/Allocation;)V

    .line 354
    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mVtxData:[F

    invoke-virtual {v5, v6}, Landroid/renderscript/Allocation;->data([F)V

    .line 355
    invoke-virtual {v5}, Landroid/renderscript/Allocation;->uploadToBufferObject()V

    .line 357
    iget-object v6, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mIndexData:[S

    invoke-virtual {v2, v6}, Landroid/renderscript/Allocation;->data([S)V

    .line 358
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->uploadToBufferObject()V

    .line 360
    return-object v3
.end method

.method public setColor(FFFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 288
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iput p1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mR:F

    .line 292
    iput p2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mG:F

    .line 293
    iput p3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mB:F

    .line 294
    iput p4, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mA:F

    .line 295
    return-void
.end method

.method public setNormal(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 279
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iput p1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNX:F

    .line 283
    iput p2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNY:F

    .line 284
    iput p3, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mNZ:F

    .line 285
    return-void
.end method

.method public setTexture(FF)V
    .locals 2
    .parameter "s"
    .parameter "t"

    .prologue
    .line 271
    iget v0, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iput p1, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mS0:F

    .line 275
    iput p2, p0, Landroid/renderscript/SimpleMesh$TriangleMeshBuilder;->mT0:F

    .line 276
    return-void
.end method
