.class public Landroid/opengl/ETC1Util;
.super Ljava/lang/Object;
.source "ETC1Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/ETC1Util$ETC1Texture;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;
    .locals 7
    .parameter "input"
    .parameter "width"
    .parameter "height"
    .parameter "pixelSize"
    .parameter "stride"

    .prologue
    invoke-static {p1, p2}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v6

    .local v6, encodedImageSize:I
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .local v5, compressedImage:Ljava/nio/ByteBuffer;
    const/4 v3, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1;->encodeImage(Ljava/nio/Buffer;IIIILjava/nio/Buffer;)V

    new-instance v0, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {v0, p1, p2, v5}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;
    .locals 12
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x0

    const/4 v7, 0x0

    .local v7, width:I
    const/4 v4, 0x0

    .local v4, height:I
    const/16 v8, 0x1000

    new-array v6, v8, [B

    .local v6, ioBuffer:[B
    invoke-virtual {p0, v6, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-eq v8, v11, :cond_0

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unable to read PKM file header."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, headerBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v6, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v3}, Landroid/opengl/ETC1;->isValid(Ljava/nio/Buffer;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Not a PKM file."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-static {v3}, Landroid/opengl/ETC1;->getWidth(Ljava/nio/Buffer;)I

    move-result v7

    invoke-static {v3}, Landroid/opengl/ETC1;->getHeight(Ljava/nio/Buffer;)I

    move-result v4

    invoke-static {v7, v4}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v2

    .local v2, encodedSize:I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, dataBuffer:Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_3

    array-length v8, v6

    sub-int v9, v2, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, chunkSize:I
    invoke-virtual {p0, v6, v10, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-eq v8, v0, :cond_2

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unable to read PKM file data."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    invoke-virtual {v1, v6, v10, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v5, v0

    goto :goto_0

    .end local v0           #chunkSize:I
    :cond_3
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v8, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {v8, v7, v4, v1}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    return-object v8
.end method

.method public static isETC1Supported()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x14

    new-array v2, v3, [I

    .local v2, results:[I
    const v3, 0x86a2

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    aget v1, v2, v5

    .local v1, numFormats:I
    array-length v3, v2

    if-le v1, v3, :cond_0

    new-array v2, v1, [I

    :cond_0
    const v3, 0x86a3

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    aget v3, v2, v0

    const v4, 0x8d64

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method public static loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V
    .locals 24
    .parameter "target"
    .parameter "level"
    .parameter "border"
    .parameter "fallbackFormat"
    .parameter "fallbackType"
    .parameter "texture"

    .prologue
    const/16 v2, 0x1907

    move/from16 v0, p3

    move v1, v2

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "fallbackFormat must be GL_RGB"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0
    .restart local p1
    :cond_0
    const v2, 0x8363

    move/from16 v0, p4

    move v1, v2

    if-eq v0, v1, :cond_1

    const/16 v2, 0x1401

    move/from16 v0, p4

    move v1, v2

    if-eq v0, v1, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Unsupported fallbackType"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local p0
    .restart local p1
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v5

    .local v5, width:I
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v6

    .local v6, height:I
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v9

    .local v9, data:Ljava/nio/Buffer;
    invoke-static {}, Landroid/opengl/ETC1Util;->isETC1Supported()Z

    move-result p5

    .end local p5
    if-eqz p5, :cond_2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    .local v8, imageSize:I
    const v4, 0x8d64

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v7, p2

    invoke-static/range {v2 .. v9}, Landroid/opengl/GLES10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .end local v8           #imageSize:I
    :goto_0
    return-void

    :cond_2
    const/16 p5, 0x1401

    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_3

    const/16 p5, 0x1

    .local p5, useShorts:Z
    :goto_1
    if-eqz p5, :cond_4

    const/16 p5, 0x2

    move/from16 v13, p5

    .end local p5           #useShorts:Z
    .local v13, pixelSize:I
    :goto_2
    mul-int v14, v13, v5

    .local v14, stride:I
    mul-int p5, v14, v6

    invoke-static/range {p5 .. p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    move-object/from16 v0, p5

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .local v10, decodedData:Ljava/nio/ByteBuffer;
    move v11, v5

    move v12, v6

    invoke-static/range {v9 .. v14}, Landroid/opengl/ETC1;->decodeImage(Ljava/nio/Buffer;Ljava/nio/Buffer;IIII)V

    move/from16 v15, p0

    move/from16 v16, p1

    move/from16 v17, p3

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, p2

    move/from16 v21, p3

    move/from16 v22, p4

    move-object/from16 v23, v10

    invoke-static/range {v15 .. v23}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_0

    .end local v10           #decodedData:Ljava/nio/ByteBuffer;
    .end local v13           #pixelSize:I
    .end local v14           #stride:I
    :cond_3
    const/16 p5, 0x0

    goto :goto_1

    .restart local p5       #useShorts:Z
    :cond_4
    const/16 p5, 0x3

    move/from16 v13, p5

    goto :goto_2
.end method

.method public static loadTexture(IIIIILjava/io/InputStream;)V
    .locals 6
    .parameter "target"
    .parameter "level"
    .parameter "border"
    .parameter "fallbackFormat"
    .parameter "fallbackType"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p5}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v5

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    return-void
.end method

.method public static writeTexture(Landroid/opengl/ETC1Util$ETC1Texture;Ljava/io/OutputStream;)V
    .locals 11
    .parameter "texture"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, dataBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .local v7, originalPosition:I
    :try_start_0
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v8

    .local v8, width:I
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v4

    .local v4, height:I
    const/16 v9, 0x10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, header:Ljava/nio/ByteBuffer;
    invoke-static {v3, v8, v4}, Landroid/opengl/ETC1;->formatHeader(Ljava/nio/Buffer;II)V

    const/16 v9, 0x1000

    new-array v6, v9, [B

    .local v6, ioBuffer:[B
    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {v3, v6, v9, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {p1, v6, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    invoke-static {v8, v4}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v2

    .local v2, encodedSize:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_0

    array-length v9, v6

    sub-int v10, v2, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, chunkSize:I
    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v9, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v5, v0

    goto :goto_0

    .end local v0           #chunkSize:I
    .end local v2           #encodedSize:I
    .end local v3           #header:Ljava/nio/ByteBuffer;
    .end local v4           #height:I
    .end local v5           #i:I
    .end local v6           #ioBuffer:[B
    .end local v8           #width:I
    :catchall_0
    move-exception v9

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v9

    .restart local v2       #encodedSize:I
    .restart local v3       #header:Ljava/nio/ByteBuffer;
    .restart local v4       #height:I
    .restart local v5       #i:I
    .restart local v6       #ioBuffer:[B
    .restart local v8       #width:I
    :cond_0
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
