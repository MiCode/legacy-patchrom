.class public final Landroid/graphics/LargeBitmap;
.super Ljava/lang/Object;
.source "LargeBitmap.java"


# instance fields
.field private mNativeLargeBitmap:I

.field private mRecycled:Z


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "lbm"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "rect"
    .parameter "options"

    .prologue
    const-string v0, "decodeRegion called on recycled large bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rectangle is not inside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/LargeBitmap;->nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->recycle()V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    const-string v0, "getHeight called on recycled large bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:I

    invoke-static {v0}, Landroid/graphics/LargeBitmap;->nativeGetHeight(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    const-string v0, "getWidth called on recycled large bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:I

    invoke-static {v0}, Landroid/graphics/LargeBitmap;->nativeGetWidth(I)I

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:I

    invoke-static {v0}, Landroid/graphics/LargeBitmap;->nativeClean(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    :cond_0
    return-void
.end method
