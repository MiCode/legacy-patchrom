.class Lcom/android/settings/ActivityPicker$IconResizer;
.super Ljava/lang/Object;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconResizer"
.end annotation


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mIconHeight:I

.field private final mIconWidth:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private final mOldBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/util/DisplayMetrics;)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "metrics"

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 331
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 334
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 337
    iput-object p3, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    .line 338
    iput p1, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    .line 339
    iput p2, p0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    .line 340
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .parameter "icon"

    .prologue
    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    move/from16 v17, v0

    .line 356
    .local v17, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    move v10, v0

    .line 358
    .local v10, height:I
    if-nez p1, :cond_0

    .line 359
    new-instance v20, Lcom/android/settings/ActivityPicker$EmptyDrawable;

    move-object/from16 v0, v20

    move/from16 v1, v17

    move v2, v10

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ActivityPicker$EmptyDrawable;-><init>(II)V

    .line 428
    :goto_0
    return-object v20

    .line 363
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 364
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v14, v0

    .line 365
    .local v14, painter:Landroid/graphics/drawable/PaintDrawable;
    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 366
    invoke-virtual {v14, v10}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 375
    .end local v14           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 376
    .local v13, iconWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 378
    .local v12, iconHeight:I
    if-lez v13, :cond_4

    if-lez v12, :cond_4

    .line 379
    move/from16 v0, v17

    move v1, v13

    if-lt v0, v1, :cond_2

    if-ge v10, v12, :cond_8

    .line 380
    :cond_2
    move v0, v13

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v12

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 382
    .local v15, ratio:F
    if-le v13, v12, :cond_6

    .line 383
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move v10, v0

    .line 388
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v7, v20

    .line 390
    .local v7, c:Landroid/graphics/Bitmap$Config;
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 391
    .local v16, thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    move-object v8, v0

    .line 392
    .local v8, canvas:Landroid/graphics/Canvas;
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v17

    div-int/lit8 v18, v20, 0x2

    .line 400
    .local v18, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int/lit8 v19, v20, 0x2

    .line 401
    .local v19, y:I
    add-int v20, v18, v17

    add-int v21, v19, v10

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 402
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 405
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local p1
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    :try_start_1
    move-object v0, v11

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v12, v0

    .end local v12           #iconHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 p1, v11

    .end local v7           #c:Landroid/graphics/Bitmap$Config;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .end local v13           #iconWidth:I
    .end local v15           #ratio:F
    .end local v16           #thumb:Landroid/graphics/Bitmap;
    .end local v18           #x:I
    .end local v19           #y:I
    .restart local p1
    :cond_4
    :goto_4
    move-object/from16 v20, p1

    .line 428
    goto/16 :goto_0

    .line 367
    :cond_5
    :try_start_2
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 369
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 370
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 371
    .local v5, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v20

    if-nez v20, :cond_1

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 424
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v20

    move-object/from16 v9, v20

    .line 425
    .local v9, e:Ljava/lang/Exception;
    :goto_5
    new-instance p1, Lcom/android/settings/ActivityPicker$EmptyDrawable;

    .end local p1
    move-object/from16 v0, p1

    move/from16 v1, v17

    move v2, v10

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ActivityPicker$EmptyDrawable;-><init>(II)V

    .restart local p1
    goto :goto_4

    .line 384
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v12       #iconHeight:I
    .restart local v13       #iconWidth:I
    .restart local v15       #ratio:F
    :cond_6
    if-le v12, v13, :cond_3

    .line 385
    move v0, v10

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_2

    .line 388
    :cond_7
    :try_start_3
    sget-object v20, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v7, v20

    goto/16 :goto_3

    .line 407
    .end local v15           #ratio:F
    :cond_8
    move v0, v13

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    if-ge v12, v10, :cond_4

    .line 408
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 409
    .restart local v7       #c:Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 410
    .restart local v16       #thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    move-object v8, v0

    .line 411
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 413
    sub-int v20, v17, v13

    div-int/lit8 v18, v20, 0x2

    .line 414
    .restart local v18       #x:I
    sub-int v20, v10, v12

    div-int/lit8 v19, v20, 0x2

    .line 415
    .restart local v19       #y:I
    add-int v20, v18, v13

    add-int v21, v19, v12

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 416
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 419
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 420
    .end local p1
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    :try_start_4
    move-object v0, v11

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v12, v0

    .end local v12           #iconHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ActivityPicker$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 p1, v11

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    goto/16 :goto_4

    .line 424
    .end local p1
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v20

    move-object/from16 v9, v20

    move-object/from16 p1, v11

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    goto/16 :goto_5
.end method
