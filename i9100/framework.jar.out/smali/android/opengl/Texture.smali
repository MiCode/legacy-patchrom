.class public Landroid/opengl/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# instance fields
.field private bpp:I

.field private data:Ljava/nio/ByteBuffer;

.field private height:I

.field private name:I

.field private width:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 11
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v9, -0x1

    iput v9, p0, Landroid/opengl/Texture;->name:I

    .line 53
    invoke-direct {p0, p1}, Landroid/opengl/Texture;->readInt16(Ljava/io/InputStream;)I

    move-result v9

    iput v9, p0, Landroid/opengl/Texture;->width:I

    .line 54
    invoke-direct {p0, p1}, Landroid/opengl/Texture;->readInt16(Ljava/io/InputStream;)I

    move-result v9

    iput v9, p0, Landroid/opengl/Texture;->height:I

    .line 55
    const/4 v9, 0x2

    iput v9, p0, Landroid/opengl/Texture;->bpp:I

    .line 57
    iget v9, p0, Landroid/opengl/Texture;->width:I

    iget v10, p0, Landroid/opengl/Texture;->height:I

    mul-int v6, v9, v10

    .line 58
    .local v6, npixels:I
    iget v9, p0, Landroid/opengl/Texture;->bpp:I

    mul-int v5, v6, v9

    .line 59
    .local v5, nbytes:I
    new-array v0, v5, [B

    .line 61
    .local v0, arr:[B
    const/4 v2, 0x0

    .line 62
    .local v2, idx:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 63
    sub-int v9, v5, v2

    invoke-virtual {p1, v0, v2, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 64
    .local v7, nread:I
    add-int/2addr v2, v7

    .line 65
    goto :goto_0

    .line 67
    .end local v7           #nread:I
    :cond_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v9, v10, :cond_1

    .line 69
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 70
    mul-int/lit8 v3, v1, 0x2

    .line 71
    .local v3, j:I
    add-int/lit8 v4, v3, 0x1

    .line 73
    .local v4, k:I
    aget-byte v8, v0, v3

    .line 74
    .local v8, tmp:B
    aget-byte v9, v0, v4

    aput-byte v9, v0, v3

    .line 75
    aput-byte v8, v0, v4

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    .end local v1           #i:I
    .end local v3           #j:I
    .end local v4           #k:I
    .end local v8           #tmp:B
    :cond_1
    array-length v9, v0

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Landroid/opengl/Texture;->data:Ljava/nio/ByteBuffer;

    .line 80
    iget-object v9, p0, Landroid/opengl/Texture;->data:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    iget-object v9, p0, Landroid/opengl/Texture;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 82
    iget-object v9, p0, Landroid/opengl/Texture;->data:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    return-void
.end method

.method private loadTexture(Ljavax/microedition/khronos/opengles/GL10;IIIIIIIIILjava/nio/Buffer;)I
    .locals 12
    .parameter "gl"
    .parameter "textureUnit"
    .parameter "minFilter"
    .parameter "magFilter"
    .parameter "wrapS"
    .parameter "wrapT"
    .parameter "mode"
    .parameter "width"
    .parameter "height"
    .parameter "dataType"
    .parameter "data"

    .prologue
    .line 93
    const/4 v1, 0x1

    new-array v11, v1, [I

    .line 94
    .local v11, texture:[I
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v11, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 96
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 97
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 98
    const/16 v1, 0xde1

    const/4 v2, 0x0

    aget v2, v11, v2

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 99
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    int-to-float v3, p3

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 102
    const/16 v1, 0xde1

    const/16 v2, 0x2800

    move/from16 v0, p4

    int-to-float v0, v0

    move v3, v0

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 105
    const/16 v1, 0xde1

    const/16 v2, 0x2802

    move/from16 v0, p5

    int-to-float v0, v0

    move v3, v0

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 108
    const/16 v1, 0xde1

    const/16 v2, 0x2803

    move/from16 v0, p6

    int-to-float v0, v0

    move v3, v0

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 111
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    move/from16 v0, p7

    int-to-float v0, v0

    move v3, v0

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 113
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1907

    const/4 v7, 0x0

    const/16 v8, 0x1907

    move-object v1, p1

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 118
    const/4 v1, 0x0

    aget v1, v11, v1

    return v1
.end method

.method private readInt16(Ljava/io/InputStream;)I
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public setTextureParameters(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .parameter "gl"

    .prologue
    const/16 v5, 0x2901

    const/16 v3, 0x2600

    .line 122
    iget v0, p0, Landroid/opengl/Texture;->name:I

    if-gez v0, :cond_0

    .line 123
    const v2, 0x84c0

    const/16 v7, 0x2100

    iget v8, p0, Landroid/opengl/Texture;->width:I

    iget v9, p0, Landroid/opengl/Texture;->height:I

    const v10, 0x8363

    iget-object v11, p0, Landroid/opengl/Texture;->data:Ljava/nio/ByteBuffer;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v6, v5

    invoke-direct/range {v0 .. v11}, Landroid/opengl/Texture;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;IIIIIIIIILjava/nio/Buffer;)I

    move-result v0

    iput v0, p0, Landroid/opengl/Texture;->name:I

    .line 133
    :cond_0
    const/16 v0, 0xde1

    iget v1, p0, Landroid/opengl/Texture;->name:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 134
    return-void
.end method
