.class public final Landroid/graphics/BitmapRegionDecoder;
.super Ljava/lang/Object;
.source "BitmapRegionDecoder.java"


# instance fields
.field private mNativeBitmapRegionDecoder:I

.field private mRecycled:Z


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    .line 170
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 234
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    return-void
.end method

.method private static native nativeClean(I)V
.end method

.method private static native nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(I)I
.end method

.method private static native nativeGetWidth(I)I
.end method

.method private static native nativeNewInstance(IZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .parameter "fd"
    .parameter "isShareable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .parameter "is"
    .parameter "isShareable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x4000

    .line 110
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v0, is:Ljava/io/InputStream;
    move-object p0, v0

    .line 114
    .end local v0           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    instance-of v2, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_1

    .line 115
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(IZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 123
    :goto_0
    return-object v2

    .line 122
    .restart local p0
    :cond_1
    new-array v1, v3, [B

    .line 123
    .local v1, tempStorage:[B
    invoke-static {p0, v1, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 5
    .parameter "pathName"
    .parameter "isShareable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, decoder:Landroid/graphics/BitmapRegionDecoder;
    const/4 v1, 0x0

    .line 148
    .local v1, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v1           #stream:Ljava/io/InputStream;
    .local v2, stream:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 151
    if-eqz v2, :cond_0

    .line 153
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 151
    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_1

    .line 153
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 156
    :cond_1
    :goto_2
    throw v3

    .line 154
    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 151
    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "isShareable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 63
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "rect"
    .parameter "options"

    .prologue
    .line 182
    const-string v0, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 183
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rectangle is not inside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BitmapRegionDecoder;->nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 242
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 198
    const-string v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 199
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeGetHeight(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 192
    const-string v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeGetWidth(I)I

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    .line 214
    iget v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:I

    invoke-static {v0}, Landroid/graphics/BitmapRegionDecoder;->nativeClean(I)V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    .line 217
    :cond_0
    return-void
.end method
