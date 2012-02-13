.class public Landroid/gesture/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BITMAP_RENDERING_ANTIALIAS:Z = true

.field private static final BITMAP_RENDERING_DITHER:Z = true

.field private static final BITMAP_RENDERING_WIDTH:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private static final GESTURE_ID_BASE:J

.field private static final sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mBoundingBox:Landroid/graphics/RectF;

.field private mGestureID:J

.field private final mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureStroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/gesture/Gesture;->GESTURE_ID_BASE:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/gesture/Gesture;->sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/gesture/Gesture$1;

    invoke-direct {v0}, Landroid/gesture/Gesture$1;-><init>()V

    sput-object v0, Landroid/gesture/Gesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    sget-wide v0, Landroid/gesture/Gesture;->GESTURE_ID_BASE:J

    sget-object v2, Landroid/gesture/Gesture;->sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    return-void
.end method

.method static synthetic access$002(Landroid/gesture/Gesture;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Landroid/gesture/Gesture;->mGestureID:J

    return-wide p1
.end method

.method static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Landroid/gesture/Gesture;

    invoke-direct {v1}, Landroid/gesture/Gesture;-><init>()V

    .local v1, gesture:Landroid/gesture/Gesture;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/gesture/Gesture;->mGestureID:J

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0}, Landroid/gesture/GestureStroke;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public addStroke(Landroid/gesture/GestureStroke;)V
    .locals 2
    .parameter "stroke"

    .prologue
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget-object v1, p1, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 9

    .prologue
    new-instance v1, Landroid/gesture/Gesture;

    invoke-direct {v1}, Landroid/gesture/Gesture;-><init>()V

    .local v1, gesture:Landroid/gesture/Gesture;
    iget-object v4, v1, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    .local v3, stroke:Landroid/gesture/GestureStroke;
    iget-object v5, v1, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/gesture/GestureStroke;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureStroke;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #stroke:Landroid/gesture/GestureStroke;
    :cond_0
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getBoundingBox()Landroid/graphics/RectF;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getID()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    return-wide v0
.end method

.method public getLength()F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, len:I
    iget-object v3, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .local v3, strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    int-to-float v4, v2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/gesture/GestureStroke;

    iget v5, p0, Landroid/gesture/GestureStroke;->length:F

    add-float/2addr v4, v5

    float-to-int v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-float v4, v2

    return v4
.end method

.method public getStrokes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureStroke;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStrokesCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method serialize(Ljava/io/DataOutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .local v2, strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    iget-wide v3, p0, Landroid/gesture/Gesture;->mGestureID:J

    invoke-virtual {p1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/gesture/GestureStroke;

    invoke-virtual {p0, p1}, Landroid/gesture/GestureStroke;->serialize(Ljava/io/DataOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setID(J)V
    .locals 0
    .parameter "id"

    .prologue
    iput-wide p1, p0, Landroid/gesture/Gesture;->mGestureID:J

    return-void
.end method

.method public toBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "width"
    .parameter "height"
    .parameter "inset"
    .parameter "color"

    .prologue
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .local v6, paint:Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setDither(Z)V

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v11, 0x4000

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/gesture/Gesture;->toPath()Landroid/graphics/Path;

    move-result-object v7

    .local v7, path:Landroid/graphics/Path;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .local v4, bounds:Landroid/graphics/RectF;
    const/4 v11, 0x1

    invoke-virtual {v7, v4, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    mul-int/lit8 v11, p3, 0x2

    sub-int v11, p1, v11

    int-to-float v11, v11

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v9, v11, v12

    .local v9, sx:F
    mul-int/lit8 v11, p3, 0x2

    sub-int v11, p2, v11

    int-to-float v11, v11

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v12

    div-float v10, v11, v12

    .local v10, sy:F
    cmpl-float v11, v9, v10

    if-lez v11, :cond_0

    move v8, v10

    .local v8, scale:F
    :goto_0
    const/high16 v11, 0x4000

    div-float/2addr v11, v8

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v11, v4, Landroid/graphics/RectF;->left:F

    neg-float v11, v11

    move/from16 v0, p1

    int-to-float v0, v0

    move v12, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float/2addr v13, v8

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    iget v12, v4, Landroid/graphics/RectF;->top:F

    neg-float v12, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move v13, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float/2addr v14, v8

    sub-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Path;->offset(FF)V

    move/from16 v0, p3

    int-to-float v0, v0

    move v11, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v12, v0

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v3

    .end local v8           #scale:F
    :cond_0
    move v8, v9

    goto :goto_0
.end method

.method public toBitmap(IIIII)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "width"
    .parameter "height"
    .parameter "edge"
    .parameter "numSample"
    .parameter "color"

    .prologue
    const/4 v9, 0x1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, canvas:Landroid/graphics/Canvas;
    int-to-float v7, p3

    int-to-float v8, p3

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v4, p5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v7, 0x4000

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .local v6, strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, count:I
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/gesture/GestureStroke;

    mul-int/lit8 v7, p3, 0x2

    sub-int v7, p1, v7

    int-to-float v7, v7

    mul-int/lit8 v8, p3, 0x2

    sub-int v8, p2, v8

    int-to-float v8, v8

    invoke-virtual {p0, v7, v8, p4}, Landroid/gesture/GestureStroke;->toPath(FFI)Landroid/graphics/Path;

    move-result-object v5

    .local v5, path:Landroid/graphics/Path;
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v5           #path:Landroid/graphics/Path;
    :cond_0
    return-object v0
.end method

.method public toPath()Landroid/graphics/Path;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/gesture/Gesture;->toPath(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public toPath(IIII)Landroid/graphics/Path;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "edge"
    .parameter "numSample"

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/gesture/Gesture;->toPath(Landroid/graphics/Path;IIII)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public toPath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 4
    .parameter "path"

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Path;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .restart local p1
    :cond_0
    iget-object v2, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .local v2, strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/gesture/GestureStroke;

    invoke-virtual {p0}, Landroid/gesture/GestureStroke;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public toPath(Landroid/graphics/Path;IIII)Landroid/graphics/Path;
    .locals 5
    .parameter "path"
    .parameter "width"
    .parameter "height"
    .parameter "edge"
    .parameter "numSample"

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Path;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .restart local p1
    :cond_0
    iget-object v2, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .local v2, strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/gesture/GestureStroke;

    mul-int/lit8 v3, p4, 0x2

    sub-int v3, p2, v3

    int-to-float v3, v3

    mul-int/lit8 v4, p4, 0x2

    sub-int v4, p3, v4

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4, p5}, Landroid/gesture/GestureStroke;->toPath(FFI)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "out"
    .parameter "flags"

    .prologue
    iget-wide v4, p0, Landroid/gesture/Gesture;->mGestureID:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x0

    .local v3, result:Z
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v4, 0x8000

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, outStream:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/gesture/Gesture;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    invoke-static {v2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    :try_start_1
    const-string v4, "Gestures"

    const-string v5, "Error writing Gesture to parcel:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    throw v4
.end method
