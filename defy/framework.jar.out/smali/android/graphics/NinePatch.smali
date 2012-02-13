.class public Landroid/graphics/NinePatch;
.super Ljava/lang/Object;
.source "NinePatch.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mChunk:[B

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .locals 1
    .parameter "bitmap"
    .parameter "chunk"
    .parameter "srcName"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroid/graphics/NinePatch;->mChunk:[B

    iput-object p3, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    invoke-static {v0, p2}, Landroid/graphics/NinePatch;->validateNinePatchChunk(I[B)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .locals 2
    .parameter "patch"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p1, Landroid/graphics/NinePatch;->mChunk:[B

    iput-object v0, p0, Landroid/graphics/NinePatch;->mChunk:[B

    iget-object v0, p1, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    iget-object v0, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/NinePatch;->mChunk:[B

    invoke-static {v0, v1}, Landroid/graphics/NinePatch;->validateNinePatchChunk(I[B)V

    return-void
.end method

.method public static native isNinePatchChunk([B)Z
.end method

.method private static native nativeDraw(ILandroid/graphics/Rect;I[BIII)V
.end method

.method private static native nativeDraw(ILandroid/graphics/RectF;I[BIII)V
.end method

.method private static native nativeGetTransparentRegion(I[BLandroid/graphics/Rect;)I
.end method

.method private static native validateNinePatchChunk(I[B)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "canvas"
    .parameter "location"

    .prologue
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/NinePatch;->mChunk:[B

    iget-object v1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    iget v1, v1, Landroid/graphics/Paint;->mNativePaint:I

    move v4, v1

    :goto_0
    iget v5, p1, Landroid/graphics/Canvas;->mDensity:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, v1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/NinePatch;->nativeDraw(ILandroid/graphics/Rect;I[BIII)V

    return-void

    :cond_0
    const/4 v1, 0x0

    move v4, v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "location"
    .parameter "paint"

    .prologue
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/NinePatch;->mChunk:[B

    if-eqz p3, :cond_0

    iget v1, p3, Landroid/graphics/Paint;->mNativePaint:I

    move v4, v1

    :goto_0
    iget v5, p1, Landroid/graphics/Canvas;->mDensity:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, v1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/NinePatch;->nativeDraw(ILandroid/graphics/Rect;I[BIII)V

    return-void

    :cond_0
    const/4 v1, 0x0

    move v4, v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 7
    .parameter "canvas"
    .parameter "location"

    .prologue
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/NinePatch;->mChunk:[B

    iget-object v1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    iget v1, v1, Landroid/graphics/Paint;->mNativePaint:I

    move v4, v1

    :goto_0
    iget v5, p1, Landroid/graphics/Canvas;->mDensity:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, v1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/NinePatch;->nativeDraw(ILandroid/graphics/RectF;I[BIII)V

    return-void

    :cond_0
    const/4 v1, 0x0

    move v4, v1

    goto :goto_0
.end method

.method public getDensity()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImageSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 3
    .parameter "location"

    .prologue
    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v1

    iget-object v2, p0, Landroid/graphics/NinePatch;->mChunk:[B

    invoke-static {v1, v2, p1}, Landroid/graphics/NinePatch;->nativeGetTransparentRegion(I[BLandroid/graphics/Rect;)I

    move-result v0

    .local v0, r:I
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, v0}, Landroid/graphics/Region;-><init>(I)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public final hasAlpha()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    return v0
.end method

.method public setImageSourceName(Ljava/lang/String;)V
    .locals 0
    .parameter "source"

    .prologue
    iput-object p1, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "p"

    .prologue
    iput-object p1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    return-void
.end method
