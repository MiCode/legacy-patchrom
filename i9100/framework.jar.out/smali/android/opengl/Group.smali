.class public Landroid/opengl/Group;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field private materialIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/opengl/MaterialIndices;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private parent:Landroid/opengl/Object3D;


# direct methods
.method public constructor <init>(Landroid/opengl/Object3D;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/Group;->materialIndices:Ljava/util/List;

    .line 60
    iput-object p1, p0, Landroid/opengl/Group;->parent:Landroid/opengl/Object3D;

    .line 61
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .parameter "gl"

    .prologue
    const/16 v9, 0xde1

    const/16 v8, 0x140c

    const/4 v7, 0x0

    .line 116
    const v5, 0x8076

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 118
    const/4 v5, 0x3

    iget-object v6, p0, Landroid/opengl/Group;->parent:Landroid/opengl/Object3D;

    invoke-virtual {v6}, Landroid/opengl/Object3D;->getVertexBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    invoke-interface {p1, v5, v8, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 119
    const v5, 0x8074

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 121
    iget-object v5, p0, Landroid/opengl/Group;->parent:Landroid/opengl/Object3D;

    invoke-virtual {v5}, Landroid/opengl/Object3D;->getNormalBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    invoke-interface {p1, v8, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 122
    const v5, 0x8075

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 124
    iget-object v5, p0, Landroid/opengl/Group;->parent:Landroid/opengl/Object3D;

    invoke-virtual {v5}, Landroid/opengl/Object3D;->hasTexcoords()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    const/4 v5, 0x2

    iget-object v6, p0, Landroid/opengl/Group;->parent:Landroid/opengl/Object3D;

    invoke-virtual {v6}, Landroid/opengl/Object3D;->getTexcoordBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    invoke-interface {p1, v5, v8, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 126
    const v5, 0x8078

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 127
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 132
    :goto_0
    iget-object v5, p0, Landroid/opengl/Group;->materialIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 133
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/opengl/MaterialIndices;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/opengl/MaterialIndices;

    .line 135
    .local v3, matIdx:Landroid/opengl/MaterialIndices;
    invoke-virtual {v3}, Landroid/opengl/MaterialIndices;->getIndexBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 136
    .local v0, indexBuffer:Ljava/nio/ShortBuffer;
    invoke-virtual {v3}, Landroid/opengl/MaterialIndices;->getMaterial()Landroid/opengl/Material;

    move-result-object v2

    .line 137
    .local v2, mat:Landroid/opengl/Material;
    invoke-virtual {v2, p1}, Landroid/opengl/Material;->setMaterialParameters(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 138
    iget-object v5, p0, Landroid/opengl/Group;->parent:Landroid/opengl/Object3D;

    invoke-virtual {v5}, Landroid/opengl/Object3D;->hasTexcoords()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/opengl/Material;->getMap_Kd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 139
    iget-object v5, p0, Landroid/opengl/Group;->parent:Landroid/opengl/Object3D;

    invoke-virtual {v2}, Landroid/opengl/Material;->getMap_Kd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/opengl/Object3D;->getTexture(Ljava/lang/String;)Landroid/opengl/Texture;

    move-result-object v4

    .line 140
    .local v4, texture:Landroid/opengl/Texture;
    invoke-virtual {v4, p1}, Landroid/opengl/Texture;->setTextureParameters(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 143
    .end local v4           #texture:Landroid/opengl/Texture;
    :cond_0
    const/4 v5, 0x4

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v6

    const/16 v7, 0x1403

    invoke-interface {p1, v5, v6, v7, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_1

    .line 129
    .end local v0           #indexBuffer:Ljava/nio/ShortBuffer;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/opengl/MaterialIndices;>;"
    .end local v2           #mat:Landroid/opengl/Material;
    .end local v3           #matIdx:Landroid/opengl/MaterialIndices;
    :cond_1
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0

    .line 148
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/opengl/MaterialIndices;>;"
    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/opengl/Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumTriangles()I
    .locals 5

    .prologue
    .line 105
    const/4 v3, 0x0

    .line 106
    .local v3, numTriangles:I
    iget-object v4, p0, Landroid/opengl/Group;->materialIndices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 107
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/opengl/MaterialIndices;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/opengl/MaterialIndices;

    .line 109
    .local v2, matIdx:Landroid/opengl/MaterialIndices;
    invoke-virtual {v2}, Landroid/opengl/MaterialIndices;->getIndexBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 110
    .local v0, indexBuffer:Ljava/nio/ShortBuffer;
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    .line 111
    goto :goto_0

    .line 112
    .end local v0           #indexBuffer:Ljava/nio/ShortBuffer;
    .end local v2           #matIdx:Landroid/opengl/MaterialIndices;
    :cond_0
    return v3
.end method

.method public load(Ljava/io/DataInputStream;)V
    .locals 14
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 69
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Landroid/opengl/Group;->name:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 73
    .local v10, numMaterials:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v10, :cond_1

    .line 74
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 75
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, matName:Ljava/lang/String;
    iget-object v12, p0, Landroid/opengl/Group;->parent:Landroid/opengl/Object3D;

    invoke-virtual {v12, v7}, Landroid/opengl/Object3D;->getMaterial(Ljava/lang/String;)Landroid/opengl/Material;

    move-result-object v8

    .line 78
    .local v8, material:Landroid/opengl/Material;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 79
    .local v9, numIndices:I
    mul-int/lit8 v12, v9, 0x2

    new-array v5, v12, [B

    .line 80
    .local v5, indicesBytes:[B
    invoke-virtual {p1, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v12, v13, :cond_0

    .line 84
    const/4 v4, 0x0

    .line 85
    .local v4, idx:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v9, :cond_0

    .line 86
    aget-byte v0, v5, v4

    .line 87
    .local v0, b0:B
    add-int/lit8 v12, v4, 0x1

    aget-byte v1, v5, v12

    .line 88
    .local v1, b1:B
    aput-byte v1, v5, v4

    .line 89
    add-int/lit8 v12, v4, 0x1

    aput-byte v0, v5, v12

    .line 90
    add-int/lit8 v4, v4, 0x2

    .line 85
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 94
    .end local v0           #b0:B
    .end local v1           #b1:B
    .end local v4           #idx:I
    .end local v6           #j:I
    :cond_0
    mul-int/lit8 v12, v9, 0x2

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 95
    .local v3, ibb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 97
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v11

    .line 100
    .local v11, sb:Ljava/nio/ShortBuffer;
    iget-object v12, p0, Landroid/opengl/Group;->materialIndices:Ljava/util/List;

    new-instance v13, Landroid/opengl/MaterialIndices;

    invoke-direct {v13, v8, v11}, Landroid/opengl/MaterialIndices;-><init>(Landroid/opengl/Material;Ljava/nio/ShortBuffer;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v3           #ibb:Ljava/nio/ByteBuffer;
    .end local v5           #indicesBytes:[B
    .end local v7           #matName:Ljava/lang/String;
    .end local v8           #material:Landroid/opengl/Material;
    .end local v9           #numIndices:I
    .end local v11           #sb:Ljava/nio/ShortBuffer;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
