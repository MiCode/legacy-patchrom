.class Lcom/android/server/WindowManagerService$Watermark;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Watermark"
.end annotation


# instance fields
.field final mDeltaX:I

.field final mDeltaY:I

.field mDrawNeeded:Z

.field mLastDH:I

.field mLastDW:I

.field mSurface:Landroid/view/Surface;

.field final mText:Ljava/lang/String;

.field final mTextAscent:I

.field final mTextDescent:I

.field final mTextHeight:I

.field final mTextPaint:Landroid/graphics/Paint;

.field final mTextWidth:I

.field final mTokens:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;Landroid/view/SurfaceSession;[Ljava/lang/String;)V
    .locals 27
    .parameter
    .parameter "session"
    .parameter "tokens"

    .prologue
    .line 10650
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$Watermark;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10651
    new-instance v18, Landroid/util/DisplayMetrics;

    invoke-direct/range {v18 .. v18}, Landroid/util/DisplayMetrics;-><init>()V

    .line 10652
    .local v18, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 10661
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$Watermark;->mTokens:[Ljava/lang/String;

    .line 10663
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10664
    .local v14, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mTokens:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    .line 10665
    .local v22, len:I
    and-int/lit8 v22, v22, -0x2

    .line 10666
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 10667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mTokens:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 10668
    .local v15, c1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mTokens:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    add-int/lit8 v6, v21, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 10669
    .local v16, c2:I
    const/16 v5, 0x61

    if-lt v15, v5, :cond_0

    const/16 v5, 0x66

    if-gt v15, v5, :cond_0

    const/16 v5, 0x61

    sub-int v5, v15, v5

    add-int/lit8 v15, v5, 0xa

    .line 10672
    :goto_1
    const/16 v5, 0x61

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_2

    const/16 v5, 0x66

    move/from16 v0, v16

    move v1, v5

    if-gt v0, v1, :cond_2

    const/16 v5, 0x61

    sub-int v5, v16, v5

    add-int/lit8 v16, v5, 0xa

    .line 10675
    :goto_2
    const/16 v5, 0xff

    mul-int/lit8 v6, v15, 0x10

    add-int v6, v6, v16

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10666
    add-int/lit8 v21, v21, 0x2

    goto :goto_0

    .line 10670
    :cond_0
    const/16 v5, 0x41

    if-lt v15, v5, :cond_1

    const/16 v5, 0x46

    if-gt v15, v5, :cond_1

    const/16 v5, 0x41

    sub-int v5, v15, v5

    add-int/lit8 v15, v5, 0xa

    goto :goto_1

    .line 10671
    :cond_1
    add-int/lit8 v15, v15, -0x30

    goto :goto_1

    .line 10673
    :cond_2
    const/16 v5, 0x41

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_3

    const/16 v5, 0x46

    move/from16 v0, v16

    move v1, v5

    if-gt v0, v1, :cond_3

    const/16 v5, 0x41

    sub-int v5, v16, v5

    add-int/lit8 v16, v5, 0xa

    goto :goto_2

    .line 10674
    :cond_3
    add-int/lit8 v16, v16, -0x30

    goto :goto_2

    .line 10677
    .end local v15           #c1:I
    .end local v16           #c2:I
    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$Watermark;->mText:Ljava/lang/String;

    .line 10682
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v7, 0x14

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v20

    .line 10685
    .local v20, fontSize:I
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$Watermark;->mTextPaint:Landroid/graphics/Paint;

    .line 10686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 10689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v19

    .line 10690
    .local v19, fm:Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mText:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService$Watermark;->mTextWidth:I

    .line 10691
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService$Watermark;->mTextAscent:I

    .line 10692
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService$Watermark;->mTextDescent:I

    .line 10693
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v5, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v6, v0

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService$Watermark;->mTextHeight:I

    .line 10695
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mTextWidth:I

    move v7, v0

    mul-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService$Watermark;->mDeltaX:I

    .line 10697
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mTextHeight:I

    move v7, v0

    mul-int/lit8 v7, v7, 0x3

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService$Watermark;->mDeltaY:I

    .line 10699
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/high16 v7, -0x5000

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v23

    .line 10701
    .local v23, shadowColor:I
    const/4 v5, 0x5

    const/4 v6, 0x0

    const v7, 0x60ffffff

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v17

    .line 10703
    .local v17, color:I
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x7

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v26

    .line 10705
    .local v26, shadowRadius:I
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v24

    .line 10707
    .local v24, shadowDx:I
    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v25

    .line 10710
    .local v25, shadowDy:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v8, v0

    move-object v0, v5

    move v1, v6

    move v2, v7

    move v3, v8

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 10714
    :try_start_0
    new-instance v5, Landroid/view/Surface;

    const/4 v7, 0x0

    const-string v8, "WatermarkSurface"

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, -0x3

    const/4 v13, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v13}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$Watermark;->mSurface:Landroid/view/Surface;

    .line 10716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    const v6, 0xf4240

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 10717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 10718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$Watermark;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10721
    :goto_3
    return-void

    .line 10719
    :catch_0
    move-exception v5

    goto :goto_3
.end method


# virtual methods
.method drawIfNeeded()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 10733
    iget-boolean v11, p0, Lcom/android/server/WindowManagerService$Watermark;->mDrawNeeded:Z

    if-eqz v11, :cond_4

    .line 10734
    iget v6, p0, Lcom/android/server/WindowManagerService$Watermark;->mLastDW:I

    .line 10735
    .local v6, dw:I
    iget v3, p0, Lcom/android/server/WindowManagerService$Watermark;->mLastDH:I

    .line 10737
    .local v3, dh:I
    iput-boolean v12, p0, Lcom/android/server/WindowManagerService$Watermark;->mDrawNeeded:Z

    .line 10738
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v12, v12, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10739
    .local v4, dirty:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 10741
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/WindowManagerService$Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 10745
    :goto_0
    if-eqz v0, :cond_4

    .line 10746
    iget v1, p0, Lcom/android/server/WindowManagerService$Watermark;->mDeltaX:I

    .line 10747
    .local v1, deltaX:I
    iget v2, p0, Lcom/android/server/WindowManagerService$Watermark;->mDeltaY:I

    .line 10751
    .local v2, deltaY:I
    iget v11, p0, Lcom/android/server/WindowManagerService$Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    div-int v5, v11, v1

    .line 10752
    .local v5, div:I
    iget v11, p0, Lcom/android/server/WindowManagerService$Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    mul-int v12, v5, v1

    sub-int v8, v11, v12

    .line 10753
    .local v8, rem:I
    div-int/lit8 v7, v1, 0x4

    .line 10754
    .local v7, qdelta:I
    if-lt v8, v7, :cond_0

    sub-int v11, v1, v7

    if-le v8, v11, :cond_1

    .line 10755
    :cond_0
    div-int/lit8 v11, v1, 0x3

    add-int/2addr v1, v11

    .line 10758
    :cond_1
    iget v11, p0, Lcom/android/server/WindowManagerService$Watermark;->mTextHeight:I

    neg-int v10, v11

    .line 10759
    .local v10, y:I
    iget v11, p0, Lcom/android/server/WindowManagerService$Watermark;->mTextWidth:I

    neg-int v9, v11

    .line 10760
    .local v9, x:I
    :cond_2
    :goto_1
    iget v11, p0, Lcom/android/server/WindowManagerService$Watermark;->mTextHeight:I

    add-int/2addr v11, v3

    if-ge v10, v11, :cond_3

    .line 10761
    iget-object v11, p0, Lcom/android/server/WindowManagerService$Watermark;->mText:Ljava/lang/String;

    int-to-float v12, v9

    int-to-float v13, v10

    iget-object v14, p0, Lcom/android/server/WindowManagerService$Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 10762
    add-int/2addr v9, v1

    .line 10763
    if-lt v9, v6, :cond_2

    .line 10764
    iget v11, p0, Lcom/android/server/WindowManagerService$Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    sub-int/2addr v9, v11

    .line 10765
    add-int/2addr v10, v2

    goto :goto_1

    .line 10768
    :cond_3
    iget-object v11, p0, Lcom/android/server/WindowManagerService$Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 10771
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #deltaX:I
    .end local v2           #deltaY:I
    .end local v3           #dh:I
    .end local v4           #dirty:Landroid/graphics/Rect;
    .end local v5           #div:I
    .end local v6           #dw:I
    .end local v7           #qdelta:I
    .end local v8           #rem:I
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_4
    return-void

    .line 10743
    .restart local v0       #c:Landroid/graphics/Canvas;
    .restart local v3       #dh:I
    .restart local v4       #dirty:Landroid/graphics/Rect;
    .restart local v6       #dw:I
    :catch_0
    move-exception v11

    goto :goto_0

    .line 10742
    :catch_1
    move-exception v11

    goto :goto_0
.end method

.method positionSurface(II)V
    .locals 1
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 10724
    iget v0, p0, Lcom/android/server/WindowManagerService$Watermark;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/WindowManagerService$Watermark;->mLastDH:I

    if-eq v0, p2, :cond_1

    .line 10725
    :cond_0
    iput p1, p0, Lcom/android/server/WindowManagerService$Watermark;->mLastDW:I

    .line 10726
    iput p2, p0, Lcom/android/server/WindowManagerService$Watermark;->mLastDH:I

    .line 10727
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1, p2}, Landroid/view/Surface;->setSize(II)V

    .line 10728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$Watermark;->mDrawNeeded:Z

    .line 10730
    :cond_1
    return-void
.end method
