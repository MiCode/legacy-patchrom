.class public Lcom/motorola/android/graphics/SmartCrop;
.super Ljava/lang/Object;
.source "SmartCrop.java"


# static fields
.field private static final MAP_SIZE:I = 0x7

.field private static final MAX_LOSS_PCT:I = 0x19

.field private static final MAX_REGION_LOSS_PCT:I = 0x12c

.field private static final MIN_STRIP_SIZE:I = 0x8

.field private static final SENSITIVITY:I = 0x15e

.field private static final UNDEFINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cropHeight(Landroid/graphics/Bitmap;I)I
    .locals 12
    .parameter "image"
    .parameter "cropAmount"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .local v1, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .local v0, h:I
    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_2

    new-instance v4, Lcom/motorola/android/graphics/NullOutputStream;

    invoke-direct {v4}, Lcom/motorola/android/graphics/NullOutputStream;-><init>()V

    .local v4, nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    div-int/lit8 v2, v0, 0xa

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .local v6, stripSize:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, strip:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v3, canvas:Landroid/graphics/Canvas;
    const/4 v7, -0x1

    .local v7, topValue:I
    const/4 v1, -0x1

    .local v1, bottomValue:I
    const/4 v2, 0x0

    .local v2, top:I
    move v0, v0

    .local v0, bottom:I
    move v10, v0

    .end local v0           #bottom:I
    .local v10, bottom:I
    move v0, v1

    .end local v1           #bottomValue:I
    .local v0, bottomValue:I
    move v1, v10

    .end local v10           #bottom:I
    .local v1, bottom:I
    move v11, v2

    .end local v2           #top:I
    .local v11, top:I
    move v2, v7

    .end local v7           #topValue:I
    .local v2, topValue:I
    move v7, v11

    .end local v11           #top:I
    .local v7, top:I
    :goto_0
    const/4 v8, -0x1

    if-ne v2, v8, :cond_5

    const/4 v2, 0x0

    neg-int v8, v7

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v3, p0, v2, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v2           #topValue:I
    invoke-static {v5, v4}, Lcom/motorola/android/graphics/SmartCrop;->getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I

    move-result v2

    .restart local v2       #topValue:I
    move v8, v2

    .end local v2           #topValue:I
    .local v8, topValue:I
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    sub-int v2, v1, v6

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v9, 0x0

    invoke-virtual {v3, p0, v0, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v0           #bottomValue:I
    invoke-static {v5, v4}, Lcom/motorola/android/graphics/SmartCrop;->getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I

    move-result v0

    .restart local v0       #bottomValue:I
    move v2, v0

    .end local v0           #bottomValue:I
    .local v2, bottomValue:I
    :goto_2
    sub-int v0, v8, v2

    mul-int/lit16 v0, v0, 0x15e

    add-int v9, v8, v2

    div-int/2addr v0, v9

    .local v0, bias:I
    if-gez v0, :cond_0

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .local v8, trimAmount:I
    add-int v0, v7, v8

    .end local v7           #top:I
    .local v0, top:I
    sub-int/2addr p1, v8

    const/4 v7, -0x1

    .local v7, topValue:I
    move v10, v1

    .end local v1           #bottom:I
    .restart local v10       #bottom:I
    move v1, v2

    .end local v2           #bottomValue:I
    .local v1, bottomValue:I
    move v2, v0

    .end local v0           #top:I
    .local v2, top:I
    move v0, v10

    .end local v10           #bottom:I
    .local v0, bottom:I
    :goto_3
    if-gtz p1, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    move p0, v2

    .end local v0           #bottom:I
    .end local v1           #bottomValue:I
    .end local v2           #top:I
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v4           #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .end local v5           #strip:Landroid/graphics/Bitmap;
    .end local v6           #stripSize:I
    .end local v7           #topValue:I
    .end local v8           #trimAmount:I
    .end local p0
    :goto_4
    return p0

    .local v0, bias:I
    .local v1, bottom:I
    .local v2, bottomValue:I
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    .restart local v4       #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .restart local v5       #strip:Landroid/graphics/Bitmap;
    .restart local v6       #stripSize:I
    .local v7, top:I
    .local v8, topValue:I
    .restart local p0
    :cond_0
    if-lez v0, :cond_1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, trimAmount:I
    sub-int v0, v1, v2

    .end local v1           #bottom:I
    .local v0, bottom:I
    sub-int/2addr p1, v2

    const/4 v1, -0x1

    .local v1, bottomValue:I
    move v10, v2

    .end local v2           #trimAmount:I
    .local v10, trimAmount:I
    move v2, v7

    .end local v7           #top:I
    .local v2, top:I
    move v7, v8

    .end local v8           #topValue:I
    .local v7, topValue:I
    move v8, v10

    .end local v10           #trimAmount:I
    .local v8, trimAmount:I
    goto :goto_3

    .local v0, bias:I
    .local v1, bottom:I
    .local v2, bottomValue:I
    .local v7, top:I
    .local v8, topValue:I
    :cond_1
    shl-int/lit8 v0, v6, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .end local v0           #bias:I
    move-result v8

    .local v8, trimAmount:I
    shr-int/lit8 v0, v8, 0x1

    add-int v2, v7, v0

    .end local v7           #top:I
    .local v2, top:I
    shr-int/lit8 v0, v8, 0x1

    sub-int v0, v8, v0

    sub-int v0, v1, v0

    .end local v1           #bottom:I
    .local v0, bottom:I
    sub-int/2addr p1, v8

    const/4 v7, -0x1

    .local v7, topValue:I
    const/4 v1, -0x1

    .local v1, bottomValue:I
    goto :goto_3

    .end local v2           #top:I
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v4           #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .end local v5           #strip:Landroid/graphics/Bitmap;
    .end local v6           #stripSize:I
    .end local v7           #topValue:I
    .end local v8           #trimAmount:I
    .local v0, h:I
    .local v1, w:I
    :cond_2
    const/4 p0, 0x0

    goto :goto_4

    .local v0, bottom:I
    .local v1, bottomValue:I
    .restart local v2       #top:I
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    .restart local v4       #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .restart local v5       #strip:Landroid/graphics/Bitmap;
    .restart local v6       #stripSize:I
    .restart local v7       #topValue:I
    .restart local v8       #trimAmount:I
    :cond_3
    move v10, v0

    .end local v0           #bottom:I
    .local v10, bottom:I
    move v0, v1

    .end local v1           #bottomValue:I
    .local v0, bottomValue:I
    move v1, v10

    .end local v10           #bottom:I
    .local v1, bottom:I
    move v11, v2

    .end local v2           #top:I
    .restart local v11       #top:I
    move v2, v7

    .end local v7           #topValue:I
    .local v2, topValue:I
    move v7, v11

    .end local v11           #top:I
    .local v7, top:I
    goto :goto_0

    .end local v2           #topValue:I
    .local v8, topValue:I
    :cond_4
    move v2, v0

    .end local v0           #bottomValue:I
    .local v2, bottomValue:I
    goto :goto_2

    .end local v8           #topValue:I
    .restart local v0       #bottomValue:I
    .local v2, topValue:I
    :cond_5
    move v8, v2

    .end local v2           #topValue:I
    .restart local v8       #topValue:I
    goto :goto_1
.end method

.method public static cropWidth(Landroid/graphics/Bitmap;I)I
    .locals 11
    .parameter "image"
    .parameter "cropAmount"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .local v0, h:I
    const/4 v1, 0x1

    sub-int v1, v3, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_3

    new-instance v4, Lcom/motorola/android/graphics/NullOutputStream;

    invoke-direct {v4}, Lcom/motorola/android/graphics/NullOutputStream;-><init>()V

    .local v4, nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    div-int/lit8 v1, v3, 0xa

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .local v8, stripSize:I
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, strip:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v2, -0x1

    .local v2, leftValue:I
    const/4 v5, -0x1

    .local v5, rightValue:I
    const/4 v0, 0x0

    .local v0, left:I
    move v3, v3

    .local v3, right:I
    move v6, v5

    .end local v5           #rightValue:I
    .local v6, rightValue:I
    move v5, v3

    .end local v3           #right:I
    .local v5, right:I
    move v10, v0

    .end local v0           #left:I
    .local v10, left:I
    move v0, v2

    .end local v2           #leftValue:I
    .local v0, leftValue:I
    move v2, v10

    .end local v10           #left:I
    .local v2, left:I
    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    neg-int v0, v2

    int-to-float v0, v0

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, p0, v0, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v0           #leftValue:I
    invoke-static {v7, v4}, Lcom/motorola/android/graphics/SmartCrop;->getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I

    move-result v0

    .restart local v0       #leftValue:I
    move v3, v0

    .end local v0           #leftValue:I
    .local v3, leftValue:I
    :goto_1
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    sub-int v0, v5, v8

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, p0, v0, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v6           #rightValue:I
    invoke-static {v7, v4}, Lcom/motorola/android/graphics/SmartCrop;->getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I

    move-result v0

    .local v0, rightValue:I
    move v6, v0

    .end local v0           #rightValue:I
    .restart local v6       #rightValue:I
    :cond_0
    sub-int v0, v3, v6

    mul-int/lit16 v0, v0, 0x15e

    add-int v9, v3, v6

    div-int/2addr v0, v9

    .local v0, bias:I
    if-gez v0, :cond_1

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, trimAmount:I
    add-int v0, v2, v3

    .end local v2           #left:I
    .local v0, left:I
    sub-int/2addr p1, v3

    const/4 v2, -0x1

    .local v2, leftValue:I
    move v10, v3

    .end local v3           #trimAmount:I
    .local v10, trimAmount:I
    move v3, v5

    .end local v5           #right:I
    .local v3, right:I
    move v5, v6

    .end local v6           #rightValue:I
    .local v5, rightValue:I
    move v6, v10

    .end local v10           #trimAmount:I
    .local v6, trimAmount:I
    :goto_2
    if-gtz p1, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move p0, v0

    .end local v0           #left:I
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #leftValue:I
    .end local v3           #right:I
    .end local v4           #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .end local v5           #rightValue:I
    .end local v6           #trimAmount:I
    .end local v7           #strip:Landroid/graphics/Bitmap;
    .end local v8           #stripSize:I
    .end local p0
    :goto_3
    return p0

    .local v0, bias:I
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .local v2, left:I
    .local v3, leftValue:I
    .restart local v4       #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .local v5, right:I
    .local v6, rightValue:I
    .restart local v7       #strip:Landroid/graphics/Bitmap;
    .restart local v8       #stripSize:I
    .restart local p0
    :cond_1
    if-lez v0, :cond_2

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, trimAmount:I
    sub-int v0, v5, v6

    .end local v5           #right:I
    .local v0, right:I
    sub-int/2addr p1, v6

    const/4 v5, -0x1

    .local v5, rightValue:I
    move v10, v0

    .end local v0           #right:I
    .local v10, right:I
    move v0, v2

    .end local v2           #left:I
    .local v0, left:I
    move v2, v3

    .end local v3           #leftValue:I
    .local v2, leftValue:I
    move v3, v10

    .end local v10           #right:I
    .local v3, right:I
    goto :goto_2

    .local v0, bias:I
    .local v2, left:I
    .local v3, leftValue:I
    .local v5, right:I
    .local v6, rightValue:I
    :cond_2
    shl-int/lit8 v0, v8, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .end local v0           #bias:I
    move-result v6

    .local v6, trimAmount:I
    shr-int/lit8 v0, v6, 0x1

    add-int/2addr v0, v2

    .end local v2           #left:I
    .local v0, left:I
    shr-int/lit8 v2, v6, 0x1

    sub-int v2, v6, v2

    sub-int v3, v5, v2

    .end local v5           #right:I
    .local v3, right:I
    sub-int/2addr p1, v6

    const/4 v2, -0x1

    .local v2, leftValue:I
    const/4 v5, -0x1

    .local v5, rightValue:I
    goto :goto_2

    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #leftValue:I
    .end local v4           #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .end local v5           #rightValue:I
    .end local v6           #trimAmount:I
    .end local v7           #strip:Landroid/graphics/Bitmap;
    .end local v8           #stripSize:I
    .local v0, h:I
    .local v3, w:I
    :cond_3
    const/4 p0, 0x0

    goto :goto_3

    .local v0, left:I
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v2       #leftValue:I
    .local v3, right:I
    .restart local v4       #nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    .restart local v5       #rightValue:I
    .restart local v6       #trimAmount:I
    .restart local v7       #strip:Landroid/graphics/Bitmap;
    .restart local v8       #stripSize:I
    :cond_4
    move v6, v5

    .end local v5           #rightValue:I
    .local v6, rightValue:I
    move v5, v3

    .end local v3           #right:I
    .local v5, right:I
    move v10, v0

    .end local v0           #left:I
    .local v10, left:I
    move v0, v2

    .end local v2           #leftValue:I
    .local v0, leftValue:I
    move v2, v10

    .end local v10           #left:I
    .local v2, left:I
    goto :goto_0

    :cond_5
    move v3, v0

    .end local v0           #leftValue:I
    .local v3, leftValue:I
    goto :goto_1
.end method

.method private static getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I
    .locals 2
    .parameter "img"
    .parameter "nos"

    .prologue
    invoke-virtual {p1}, Lcom/motorola/android/graphics/NullOutputStream;->reset()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Lcom/motorola/android/graphics/NullOutputStream;->getBytesWritten()I

    move-result v0

    return v0
.end method

.method public static zoom(Landroid/graphics/Bitmap;Landroid/graphics/Rect;II)V
    .locals 20
    .parameter "image"
    .parameter "clip"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v17, v5, 0x7

    .local v17, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v6, v5, 0x7

    .local v6, h:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int p2, v5, p2

    div-int p2, p2, v17

    .end local p2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int p3, v5, p3

    div-int p3, p3, v6

    .end local p3
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .local v9, loopLimit:I
    if-gtz v9, :cond_0

    move/from16 p0, v9

    .end local v9           #loopLimit:I
    .local p0, loopLimit:I
    :goto_0
    return-void

    .restart local v9       #loopLimit:I
    .local p0, image:Landroid/graphics/Bitmap;
    :cond_0
    new-instance v10, Lcom/motorola/android/graphics/NullOutputStream;

    invoke-direct {v10}, Lcom/motorola/android/graphics/NullOutputStream;-><init>()V

    .local v10, nullStream:Lcom/motorola/android/graphics/NullOutputStream;
    const/16 p2, 0x7

    const/16 p3, 0x7

    filled-new-array/range {p2 .. p3}, [I

    move-result-object p2

    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    .local v11, mHeatmap:[[I
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move v1, v6

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .local v12, region:Landroid/graphics/Bitmap;
    new-instance p3, Landroid/graphics/Canvas;

    move-object/from16 v0, p3

    move-object v1, v12

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local p3, canvas:Landroid/graphics/Canvas;
    invoke-static {v12, v10}, Lcom/motorola/android/graphics/SmartCrop;->getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I

    move-result p2

    .local p2, baseline:I
    const/4 v7, 0x0

    .local v7, sum:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    .local v8, y:I
    const/4 v5, 0x0

    .local v5, i:I
    move v15, v8

    .end local v8           #y:I
    .local v15, y:I
    move v8, v7

    .end local v7           #sum:I
    .local v8, sum:I
    :goto_1
    const/4 v7, 0x7

    if-ge v5, v7, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v13, v0

    .local v13, x:I
    const/4 v7, 0x0

    .local v7, j:I
    move v14, v13

    .end local v13           #x:I
    .local v14, x:I
    move v13, v8

    .end local v8           #sum:I
    .local v13, sum:I
    move v8, v7

    .end local v7           #j:I
    .local v8, j:I
    :goto_2
    const/4 v7, 0x7

    if-ge v8, v7, :cond_1

    neg-int v7, v14

    int-to-float v7, v7

    move v0, v15

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move v2, v7

    move/from16 v3, v16

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-static {v12, v10}, Lcom/motorola/android/graphics/SmartCrop;->getCompressedSize(Landroid/graphics/Bitmap;Lcom/motorola/android/graphics/NullOutputStream;)I

    move-result v7

    sub-int v7, v7, p2

    .local v7, interest:I
    aget-object v16, v11, v5

    aput v7, v16, v8

    add-int/2addr v13, v7

    add-int v14, v14, v17

    add-int/lit8 v7, v8, 0x1

    .end local v8           #j:I
    .local v7, j:I
    move v8, v7

    .end local v7           #j:I
    .restart local v8       #j:I
    goto :goto_2

    :cond_1
    add-int v7, v15, v6

    .end local v15           #y:I
    .local v7, y:I
    add-int/lit8 v5, v5, 0x1

    move v15, v7

    .end local v7           #y:I
    .restart local v15       #y:I
    move v8, v13

    .end local v13           #sum:I
    .local v8, sum:I
    goto :goto_1

    .end local v14           #x:I
    :cond_2
    mul-int/lit8 p0, v8, 0x19

    div-int/lit8 p3, p0, 0x64

    .end local p0           #image:Landroid/graphics/Bitmap;
    .local p3, lossBudget:I
    move v0, v8

    mul-int/lit16 v0, v0, 0x12c

    move/from16 p0, v0

    move/from16 v0, p0

    div-int/lit16 v0, v0, 0x1324

    move v13, v0

    .local v13, regionLossMax:I
    const/16 p2, 0x0

    .local p2, l:I
    const/4 v5, 0x6

    .local v5, r:I
    const/4 v7, 0x0

    .local v7, t:I
    const/16 p0, 0x6

    .local p0, b:I
    move v15, v7

    .end local v7           #t:I
    .local v15, t:I
    move v12, v5

    .end local v5           #r:I
    .local v12, r:I
    move/from16 v10, p3

    .end local p3           #lossBudget:I
    .local v10, lossBudget:I
    move/from16 v7, p2

    .end local p2           #l:I
    .local v7, l:I
    move/from16 p2, p0

    .end local p0           #b:I
    .local p2, b:I
    move/from16 p0, v9

    .end local v8           #sum:I
    .end local v9           #loopLimit:I
    .local p0, loopLimit:I
    :goto_3
    add-int/lit8 v9, p0, -0x1

    .end local p0           #loopLimit:I
    .restart local v9       #loopLimit:I
    if-lez p0, :cond_c

    const/4 v5, 0x0

    .local v5, topSum:I
    const/16 p3, 0x0

    .local p3, bottomSum:I
    add-int/lit8 p0, v7, 0x1

    .local p0, a:I
    move/from16 v16, v5

    .end local v5           #topSum:I
    .local v16, topSum:I
    move/from16 v5, p3

    .end local p3           #bottomSum:I
    .local v5, bottomSum:I
    :goto_4
    move/from16 v0, p0

    move v1, v12

    if-ge v0, v1, :cond_5

    aget-object p3, v11, v15

    aget p3, p3, p0

    .local p3, top:I
    move/from16 v0, p3

    move v1, v13

    if-le v0, v1, :cond_3

    const/16 v8, 0x2710

    :goto_5
    add-int p3, p3, v8

    add-int v8, v16, p3

    .end local v16           #topSum:I
    .local v8, topSum:I
    aget-object p3, v11, p2

    .end local p3           #top:I
    aget p3, p3, p0

    .local p3, bottom:I
    move/from16 v0, p3

    move v1, v13

    if-le v0, v1, :cond_4

    const/16 v14, 0x2710

    :goto_6
    add-int p3, p3, v14

    add-int p3, p3, v5

    .end local v5           #bottomSum:I
    .local p3, bottomSum:I
    add-int/lit8 p0, p0, 0x1

    move/from16 v5, p3

    .end local p3           #bottomSum:I
    .restart local v5       #bottomSum:I
    move/from16 v16, v8

    .end local v8           #topSum:I
    .restart local v16       #topSum:I
    goto :goto_4

    .local p3, top:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_5

    .end local v16           #topSum:I
    .restart local v8       #topSum:I
    .local p3, bottom:I
    :cond_4
    const/4 v14, 0x0

    goto :goto_6

    .end local v8           #topSum:I
    .end local p3           #bottom:I
    .restart local v16       #topSum:I
    :cond_5
    const/16 p3, 0x0

    .local p3, leftSum:I
    const/4 v8, 0x0

    .local v8, rightSum:I
    move/from16 p0, v15

    move v14, v8

    .end local v8           #rightSum:I
    .local v14, rightSum:I
    move/from16 v8, p3

    .end local p3           #leftSum:I
    .local v8, leftSum:I
    :goto_7
    move/from16 v0, p0

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    aget-object p3, v11, p0

    aget p3, p3, v7

    .local p3, left:I
    move/from16 v0, p3

    move v1, v13

    if-le v0, v1, :cond_6

    const/16 p3, 0x2710

    .end local p3           #left:I
    :cond_6
    add-int p3, p3, v8

    .end local v8           #leftSum:I
    .local p3, leftSum:I
    aget-object v8, v11, p0

    aget v8, v8, v12

    .local v8, right:I
    if-le v8, v13, :cond_7

    const/16 v8, 0x2710

    .end local v8           #right:I
    :cond_7
    add-int/2addr v8, v14

    .end local v14           #rightSum:I
    .local v8, rightSum:I
    add-int/lit8 p0, p0, 0x1

    move v14, v8

    .end local v8           #rightSum:I
    .restart local v14       #rightSum:I
    move/from16 v8, p3

    .end local p3           #leftSum:I
    .local v8, leftSum:I
    goto :goto_7

    :cond_8
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result p0

    .end local p0           #a:I
    move/from16 v0, v16

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int p0, p0, p3

    sub-int v10, v10, p0

    if-gez v10, :cond_9

    move/from16 p0, v10

    .end local v5           #bottomSum:I
    .end local v8           #leftSum:I
    .end local v10           #lossBudget:I
    .end local v14           #rightSum:I
    .end local v16           #topSum:I
    .local p0, lossBudget:I
    :goto_8
    move/from16 p0, v9

    .end local v9           #loopLimit:I
    .local p0, loopLimit:I
    goto/16 :goto_0

    .end local p0           #loopLimit:I
    .restart local v5       #bottomSum:I
    .restart local v8       #leftSum:I
    .restart local v9       #loopLimit:I
    .restart local v10       #lossBudget:I
    .restart local v14       #rightSum:I
    .restart local v16       #topSum:I
    :cond_9
    if-ge v8, v14, :cond_a

    add-int/lit8 p0, v7, 0x1

    .end local v7           #l:I
    .local p0, l:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 p3, v0

    add-int p3, p3, v17

    move/from16 v0, p3

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move v7, v12

    .end local v12           #r:I
    .local v7, r:I
    move/from16 p3, p0

    .end local p0           #l:I
    .local p3, l:I
    :goto_9
    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 p0, v0

    add-int p0, p0, v6

    move/from16 v0, p0

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 p0, v15, 0x1

    .end local v15           #t:I
    .local p0, t:I
    move/from16 v19, p2

    .end local p2           #b:I
    .local v19, b:I
    move/from16 p2, p0

    .end local p0           #t:I
    .local p2, t:I
    move/from16 p0, v19

    .end local v19           #b:I
    .local p0, b:I
    :goto_a
    move/from16 v15, p2

    .end local p2           #t:I
    .restart local v15       #t:I
    move v12, v7

    .end local v7           #r:I
    .restart local v12       #r:I
    move/from16 p2, p0

    .end local p0           #b:I
    .local p2, b:I
    move/from16 v7, p3

    .end local p3           #l:I
    .local v7, l:I
    move/from16 p0, v9

    .end local v9           #loopLimit:I
    .local p0, loopLimit:I
    goto/16 :goto_3

    .end local p0           #loopLimit:I
    .restart local v9       #loopLimit:I
    :cond_a
    add-int/lit8 p0, v12, -0x1

    .end local v12           #r:I
    .local p0, r:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 p3, v0

    sub-int p3, p3, v17

    move/from16 v0, p3

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 p3, v7

    .end local v7           #l:I
    .restart local p3       #l:I
    move/from16 v7, p0

    .end local p0           #r:I
    .local v7, r:I
    goto :goto_9

    :cond_b
    add-int/lit8 p0, p2, -0x1

    .end local p2           #b:I
    .local p0, b:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 p2, v0

    sub-int p2, p2, v6

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 p2, v15

    .end local v15           #t:I
    .local p2, t:I
    goto :goto_a

    .end local v5           #bottomSum:I
    .end local v8           #leftSum:I
    .end local v14           #rightSum:I
    .end local v16           #topSum:I
    .end local p0           #b:I
    .end local p3           #l:I
    .local v7, l:I
    .restart local v12       #r:I
    .restart local v15       #t:I
    .local p2, b:I
    :cond_c
    move/from16 p0, v10

    .end local v10           #lossBudget:I
    .local p0, lossBudget:I
    goto :goto_8
.end method
