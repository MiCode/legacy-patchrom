.class public abstract Landroid/opengl/Object3D;
.super Ljava/lang/Object;
.source "Object3D.java"


# instance fields
.field private mBoundsMaxX:F

.field private mBoundsMaxY:F

.field private mBoundsMaxZ:F

.field private mBoundsMinX:F

.field private mBoundsMinY:F

.field private mBoundsMinZ:F

.field private mGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/opengl/Group;",
            ">;"
        }
    .end annotation
.end field

.field private mHasTexcoords:Z

.field private mMaterials:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/opengl/Material;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalBuffer:Ljava/nio/IntBuffer;

.field private mTexcoordBuffer:Ljava/nio/IntBuffer;

.field private mTextures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/opengl/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private mVertexBuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x7f7fffff

    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/Object3D;->mHasTexcoords:Z

    .line 41
    iput v2, p0, Landroid/opengl/Object3D;->mBoundsMinX:F

    .line 42
    iput v1, p0, Landroid/opengl/Object3D;->mBoundsMaxX:F

    .line 43
    iput v2, p0, Landroid/opengl/Object3D;->mBoundsMinY:F

    .line 44
    iput v1, p0, Landroid/opengl/Object3D;->mBoundsMaxY:F

    .line 45
    iput v2, p0, Landroid/opengl/Object3D;->mBoundsMinZ:F

    .line 46
    iput v1, p0, Landroid/opengl/Object3D;->mBoundsMaxZ:F

    .line 62
    invoke-direct {p0}, Landroid/opengl/Object3D;->reset()V

    .line 63
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/Object3D;->mTexcoordBuffer:Ljava/nio/IntBuffer;

    iput-object v0, p0, Landroid/opengl/Object3D;->mNormalBuffer:Ljava/nio/IntBuffer;

    iput-object v0, p0, Landroid/opengl/Object3D;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/opengl/Object3D;->mGroups:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/opengl/Object3D;->mMaterials:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/opengl/Object3D;->mTextures:Ljava/util/Map;

    .line 80
    return-void
.end method

.method private static verifyByte(Ljava/io/DataInputStream;I)V
    .locals 4
    .parameter "dis"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 149
    .local v0, x:I
    if-eq v0, p1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 239
    iget-object v1, p0, Landroid/opengl/Object3D;->mGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 240
    .end local p0
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/opengl/Group;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/opengl/Group;

    invoke-virtual {p0, p1}, Landroid/opengl/Group;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public getBoundsMaxX()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/opengl/Object3D;->mBoundsMaxX:F

    return v0
.end method

.method public getBoundsMaxY()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Landroid/opengl/Object3D;->mBoundsMaxY:F

    return v0
.end method

.method public getBoundsMaxZ()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/opengl/Object3D;->mBoundsMaxZ:F

    return v0
.end method

.method public getBoundsMinX()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Landroid/opengl/Object3D;->mBoundsMinX:F

    return v0
.end method

.method public getBoundsMinY()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/opengl/Object3D;->mBoundsMinY:F

    return v0
.end method

.method public getBoundsMinZ()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Landroid/opengl/Object3D;->mBoundsMinZ:F

    return v0
.end method

.method public getMaterial(Ljava/lang/String;)Landroid/opengl/Material;
    .locals 2
    .parameter "name"

    .prologue
    .line 83
    iget-object v1, p0, Landroid/opengl/Object3D;->mMaterials:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/Material;

    .line 84
    .local v0, mat:Landroid/opengl/Material;
    return-object v0
.end method

.method public getNormalBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/opengl/Object3D;->mNormalBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getNumTriangles()I
    .locals 3

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, numTriangles:I
    iget-object v2, p0, Landroid/opengl/Object3D;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    .end local p0
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/opengl/Group;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/opengl/Group;

    invoke-virtual {p0}, Landroid/opengl/Group;->getNumTriangles()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 109
    :cond_0
    return v1
.end method

.method public getTexcoordBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/opengl/Object3D;->mTexcoordBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getTexture(Ljava/lang/String;)Landroid/opengl/Texture;
    .locals 1
    .parameter "name"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/opengl/Object3D;->mTextures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/opengl/Texture;

    return-object p0
.end method

.method public getVertexBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/opengl/Object3D;->mVertexBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public hasTexcoords()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/opengl/Object3D;->mHasTexcoords:Z

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 26
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Landroid/opengl/Object3D;->reset()V

    .line 159
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual/range {p0 .. p1}, Landroid/opengl/Object3D;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    .local v5, dis:Ljava/io/DataInputStream;
    const/16 v24, 0xe7

    move-object v0, v5

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/opengl/Object3D;->verifyByte(Ljava/io/DataInputStream;I)V

    .line 161
    const/16 v24, 0x6c

    move-object v0, v5

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/opengl/Object3D;->verifyByte(Ljava/io/DataInputStream;I)V

    .line 162
    const/16 v24, 0x65

    move-object v0, v5

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/opengl/Object3D;->verifyByte(Ljava/io/DataInputStream;I)V

    .line 163
    const/16 v24, 0x73

    move-object v0, v5

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/opengl/Object3D;->verifyByte(Ljava/io/DataInputStream;I)V

    .line 165
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 167
    .local v15, numTuples:I
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readFloat()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/Object3D;->mBoundsMinX:F

    .line 168
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readFloat()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/Object3D;->mBoundsMaxX:F

    .line 169
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readFloat()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/Object3D;->mBoundsMinY:F

    .line 170
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readFloat()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/Object3D;->mBoundsMaxY:F

    .line 171
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readFloat()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/Object3D;->mBoundsMinZ:F

    .line 172
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readFloat()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/Object3D;->mBoundsMaxZ:F

    .line 174
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/16 v24, 0x1

    :goto_0
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/Object3D;->mHasTexcoords:Z

    .line 176
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/Object3D;->mHasTexcoords:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    const/16 v24, 0x8

    move/from16 v8, v24

    .line 177
    .local v8, intsPerTuple:I
    :goto_1
    mul-int v13, v15, v8

    .line 179
    .local v13, numInts:I
    mul-int/lit8 v24, v15, 0x4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/Object3D;->mHasTexcoords:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    const/16 v25, 0x8

    :goto_2
    mul-int v9, v24, v25

    .line 181
    .local v9, len:I
    move v0, v9

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 182
    .local v18, tmp:[B
    const/16 v17, 0x0

    .line 183
    .local v17, tidx:I
    :goto_3
    move/from16 v0, v17

    move v1, v9

    if-ge v0, v1, :cond_3

    .line 184
    sub-int v24, v9, v17

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v24

    add-int v17, v17, v24

    goto :goto_3

    .line 174
    .end local v8           #intsPerTuple:I
    .end local v9           #len:I
    .end local v13           #numInts:I
    .end local v17           #tidx:I
    .end local v18           #tmp:[B
    :cond_0
    const/16 v24, 0x0

    goto :goto_0

    .line 176
    :cond_1
    const/16 v24, 0x6

    move/from16 v8, v24

    goto :goto_1

    .line 179
    .restart local v8       #intsPerTuple:I
    .restart local v13       #numInts:I
    :cond_2
    const/16 v25, 0x6

    goto :goto_2

    .line 186
    .restart local v9       #len:I
    .restart local v17       #tidx:I
    .restart local v18       #tmp:[B
    :cond_3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v24

    sget-object v25, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 187
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    if-ge v7, v9, :cond_4

    .line 188
    aget-byte v19, v18, v7

    .line 189
    .local v19, tmp0:B
    add-int/lit8 v24, v7, 0x1

    aget-byte v20, v18, v24

    .line 190
    .local v20, tmp1:B
    add-int/lit8 v24, v7, 0x2

    aget-byte v21, v18, v24

    .line 191
    .local v21, tmp2:B
    add-int/lit8 v24, v7, 0x3

    aget-byte v22, v18, v24

    .line 192
    .local v22, tmp3:B
    aput-byte v22, v18, v7

    .line 193
    add-int/lit8 v24, v7, 0x1

    aput-byte v21, v18, v24

    .line 194
    add-int/lit8 v24, v7, 0x2

    aput-byte v20, v18, v24

    .line 195
    add-int/lit8 v24, v7, 0x3

    aput-byte v19, v18, v24

    .line 187
    add-int/lit8 v7, v7, 0x4

    goto :goto_4

    .line 199
    .end local v7           #i:I
    .end local v19           #tmp0:B
    .end local v20           #tmp1:B
    .end local v21           #tmp2:B
    .end local v22           #tmp3:B
    :cond_4
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 200
    .local v4, allbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v24

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 201
    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 203
    const/16 v24, 0x0

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    mul-int/lit8 v24, v15, 0xc

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 205
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v23

    .line 206
    .local v23, vbb:Ljava/nio/ByteBuffer;
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/Object3D;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/Object3D;->mVertexBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 209
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/Object3D;->mHasTexcoords:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 210
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v24

    mul-int/lit8 v25, v15, 0x8

    add-int v24, v24, v25

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 212
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 213
    .local v16, tbb:Ljava/nio/ByteBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/Object3D;->mTexcoordBuffer:Ljava/nio/IntBuffer;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/Object3D;->mTexcoordBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    .end local v16           #tbb:Ljava/nio/ByteBuffer;
    :cond_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 218
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v24

    mul-int/lit8 v25, v15, 0xc

    add-int v24, v24, v25

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 219
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 220
    .local v11, nbb:Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/Object3D;->mNormalBuffer:Ljava/nio/IntBuffer;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/Object3D;->mNormalBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 224
    .local v14, numMaterials:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    if-ge v7, v14, :cond_6

    .line 225
    new-instance v10, Landroid/opengl/Material;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/opengl/Material;-><init>(Landroid/opengl/Object3D;)V

    .line 226
    .local v10, mat:Landroid/opengl/Material;
    invoke-virtual {v10, v5}, Landroid/opengl/Material;->load(Ljava/io/DataInputStream;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/Object3D;->mMaterials:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-virtual {v10}, Landroid/opengl/Material;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v10

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 230
    .end local v10           #mat:Landroid/opengl/Material;
    :cond_6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 231
    .local v12, numGroups:I
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v12, :cond_7

    .line 232
    new-instance v6, Landroid/opengl/Group;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/opengl/Group;-><init>(Landroid/opengl/Object3D;)V

    .line 233
    .local v6, g:Landroid/opengl/Group;
    invoke-virtual {v6, v5}, Landroid/opengl/Group;->load(Ljava/io/DataInputStream;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/Object3D;->mGroups:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-virtual {v6}, Landroid/opengl/Group;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 236
    .end local v6           #g:Landroid/opengl/Group;
    :cond_7
    return-void
.end method

.method public loadTexture(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/opengl/Object3D;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 142
    .local v0, is:Ljava/io/InputStream;
    new-instance v1, Landroid/opengl/Texture;

    invoke-direct {v1, v0}, Landroid/opengl/Texture;-><init>(Ljava/io/InputStream;)V

    .line 143
    .local v1, texture:Landroid/opengl/Texture;
    iget-object v2, p0, Landroid/opengl/Object3D;->mTextures:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public abstract readFile(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
