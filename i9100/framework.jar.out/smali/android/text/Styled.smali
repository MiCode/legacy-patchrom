.class public Landroid/text/Styled;
.super Ljava/lang/Object;
.source "Styled.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .locals 23
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 250
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v4, v0

    if-nez v4, :cond_5

    .line 251
    const/16 p7, 0x0

    .line 253
    .local p7, ret:F
    if-eqz p5, :cond_3

    .line 254
    invoke-static/range {p1 .. p3}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 257
    .local v5, tmp:Ljava/lang/CharSequence;
    sub-int v7, p3, p2

    .line 259
    .local v7, tmpend:I
    if-nez p0, :cond_0

    if-eqz p13, :cond_11

    .line 260
    :cond_0
    const/16 p1, 0x0

    move-object/from16 v0, p11

    move-object v1, v5

    move/from16 v2, p1

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    .end local p1
    move-result p1

    .line 262
    .end local p7           #ret:F
    .local p1, ret:F
    :goto_0
    if-eqz p0, :cond_1

    .line 263
    const/4 v6, 0x0

    sub-float v8, p6, p1

    move/from16 v0, p8

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v4, p0

    move-object/from16 v10, p11

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_1
    move/from16 p0, p1

    .line 273
    .end local v5           #tmp:Ljava/lang/CharSequence;
    .end local v7           #tmpend:I
    .end local p1           #ret:F
    .end local p5
    .local p0, ret:F
    :goto_1
    if-eqz p10, :cond_2

    .line 274
    move-object/from16 v0, p11

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 277
    :cond_2
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p1, v0

    mul-float p0, p0, p1

    .line 326
    .end local p0           #ret:F
    :goto_2
    return p0

    .line 266
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p1, text:Ljava/lang/CharSequence;
    .restart local p5
    .restart local p7       #ret:F
    :cond_3
    if-eqz p13, :cond_10

    .line 267
    move-object/from16 v0, p11

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p5

    .line 269
    .end local p7           #ret:F
    .local p5, ret:F
    :goto_3
    if-eqz p0, :cond_4

    .line 270
    move/from16 v0, p8

    int-to-float v0, v0

    move v13, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p6

    move-object/from16 v14, p11

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_4
    move/from16 p0, p5

    .end local p5           #ret:F
    .local p0, ret:F
    goto :goto_1

    .line 280
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p5, runIsRtl:Z
    .local p7, top:I
    :cond_5
    move/from16 v22, p6

    .line 281
    .local v22, ox:F
    const/4 v6, 0x0

    .local v6, minAscent:I
    const/4 v5, 0x0

    .local v5, maxDescent:I
    const/4 v7, 0x0

    .local v7, minTop:I
    const/4 v4, 0x0

    .line 283
    .local v4, maxBottom:I
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v9, v0

    .line 286
    .local v9, sp:Landroid/text/Spanned;
    if-nez p0, :cond_b

    .line 287
    const-class p1, Landroid/text/style/MetricAffectingSpan;

    .line 292
    .local p1, division:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_4
    move/from16 v10, p2

    .local v10, i:I
    :goto_5
    move v0, v10

    move/from16 v1, p3

    if-ge v0, v1, :cond_d

    .line 293
    move-object v0, v9

    move v1, v10

    move/from16 v2, p3

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v11

    .line 298
    .local v11, next:I
    if-nez p13, :cond_6

    move v0, v11

    move/from16 v1, p3

    if-eq v0, v1, :cond_c

    :cond_6
    const/4 v8, 0x1

    move/from16 v21, v8

    :goto_6
    move-object/from16 v8, p0

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move-object/from16 v18, p10

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    invoke-static/range {v8 .. v21}, Landroid/text/Styled;->drawUniformRun(Landroid/graphics/Canvas;Landroid/text/Spanned;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v8

    add-float p6, p6, v8

    .line 302
    if-eqz p10, :cond_a

    .line 303
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v8, v0

    if-ge v8, v6, :cond_7

    .line 304
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v6, v0

    .line 305
    :cond_7
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v8, v0

    if-le v8, v5, :cond_8

    .line 306
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v5, v0

    .line 308
    :cond_8
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v8, v0

    if-ge v8, v7, :cond_9

    .line 309
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v7, v0

    .line 310
    :cond_9
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v8, v0

    if-le v8, v4, :cond_a

    .line 311
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v4, v0

    .line 292
    :cond_a
    move v10, v11

    goto :goto_5

    .line 289
    .end local v10           #i:I
    .end local v11           #next:I
    .local p1, text:Ljava/lang/CharSequence;
    :cond_b
    const-class p1, Landroid/text/style/CharacterStyle;

    .local p1, division:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_4

    .line 298
    .restart local v10       #i:I
    .restart local v11       #next:I
    :cond_c
    const/4 v8, 0x0

    move/from16 v21, v8

    goto :goto_6

    .line 315
    .end local v11           #next:I
    :cond_d
    if-eqz p10, :cond_e

    .line 316
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_f

    .line 317
    move-object/from16 v0, p11

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 326
    :cond_e
    :goto_7
    sub-float p0, p6, v22

    goto/16 :goto_2

    .line 319
    :cond_f
    move v0, v6

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 320
    move v0, v5

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 321
    move v0, v7

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 322
    move v0, v4

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_7

    .end local v4           #maxBottom:I
    .end local v5           #maxDescent:I
    .end local v6           #minAscent:I
    .end local v7           #minTop:I
    .end local v9           #sp:Landroid/text/Spanned;
    .end local v10           #i:I
    .end local v22           #ox:F
    .local p1, text:Ljava/lang/CharSequence;
    .local p7, ret:F
    :cond_10
    move/from16 p5, p7

    .end local p7           #ret:F
    .local p5, ret:F
    goto/16 :goto_3

    .local v5, tmp:Ljava/lang/CharSequence;
    .local v7, tmpend:I
    .local p5, runIsRtl:Z
    .restart local p7       #ret:F
    :cond_11
    move/from16 p1, p7

    .end local p7           #ret:F
    .local p1, ret:F
    goto/16 :goto_0
.end method

.method public static drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .locals 13
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "direction"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 400
    if-ltz p4, :cond_0

    const/16 p4, 0x1

    .line 407
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v0 .. v12}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result p0

    .end local p0
    return p0

    .line 400
    .restart local p0
    :cond_0
    const/16 p4, -0x1

    goto :goto_0
.end method

.method static drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .locals 16
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 342
    const/4 v2, -0x1

    move/from16 v0, p4

    move v1, v2

    if-ne v0, v1, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    if-eqz p5, :cond_2

    const/4 v2, 0x1

    move/from16 v0, p4

    move v1, v2

    if-ne v0, v1, :cond_2

    .line 345
    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-static/range {v2 .. v15}, Landroid/text/Styled;->drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result p12

    .line 349
    .local p12, ch:F
    move/from16 v0, p4

    int-to-float v0, v0

    move v2, v0

    mul-float p12, p12, v2

    .line 350
    move/from16 v0, p4

    neg-int v0, v0

    move v6, v0

    add-float v8, p6, p12

    const/4 v12, 0x0

    const/4 v15, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-static/range {v2 .. v15}, Landroid/text/Styled;->drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move/from16 p0, p12

    .line 357
    .end local p0
    .end local p12           #ch:F
    :goto_0
    return p0

    .restart local p0
    .local p12, needWidth:Z
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    invoke-static/range {v2 .. v15}, Landroid/text/Styled;->drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result p0

    goto :goto_0
.end method

.method private static drawUniformRun(Landroid/graphics/Canvas;Landroid/text/Spanned;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .locals 15
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 59
    const/4 v14, 0x0

    .line 60
    .local v14, haveWidth:Z
    const/4 v5, 0x0

    .line 61
    .local v5, ret:F
    const-class v4, Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/CharacterStyle;

    .line 63
    .local v7, spans:[Landroid/text/style/CharacterStyle;
    const/4 v4, 0x0

    .line 68
    .local v4, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p11

    iput v0, v1, Landroid/text/TextPaint;->bgColor:I

    .line 69
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p11

    iput v0, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 70
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 72
    move-object v0, v7

    array-length v0, v0

    move/from16 p11, v0

    .end local p11
    if-lez p11, :cond_1

    .line 73
    const/16 p11, 0x0

    .local p11, i:I
    :goto_0
    array-length v6, v7

    move/from16 v0, p11

    move v1, v6

    if-ge v0, v1, :cond_1

    .line 74
    aget-object v6, v7, p11

    .line 76
    .local v6, span:Landroid/text/style/CharacterStyle;
    instance-of v8, v6, Landroid/text/style/ReplacementSpan;

    if-eqz v8, :cond_0

    .line 77
    move-object v0, v6

    check-cast v0, Landroid/text/style/ReplacementSpan;

    move-object v4, v0

    .line 73
    :goto_1
    add-int/lit8 p11, p11, 0x1

    goto :goto_0

    .line 80
    :cond_0
    move-object v0, v6

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 85
    .end local v6           #span:Landroid/text/style/CharacterStyle;
    .end local p11           #i:I
    :cond_1
    if-nez v4, :cond_9

    .line 89
    if-eqz p5, :cond_4

    .line 90
    invoke-static/range {p1 .. p3}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 91
    .local p1, tmp:Ljava/lang/CharSequence;
    const/16 p5, 0x0

    .line 93
    .local p5, tmpstart:I
    sub-int p2, p3, p2

    .local p2, tmpend:I
    move/from16 v10, p2

    .end local p2           #tmpend:I
    .local v10, tmpend:I
    move/from16 v11, p5

    .end local p5           #tmpstart:I
    .local v11, tmpstart:I
    move-object/from16 p11, p1

    .line 100
    .end local p1           #tmp:Ljava/lang/CharSequence;
    .local p11, tmp:Ljava/lang/CharSequence;
    :goto_2
    if-eqz p10, :cond_2

    .line 101
    move-object/from16 v0, p12

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 104
    :cond_2
    if-eqz p0, :cond_8

    .line 105
    move-object/from16 v0, p12

    iget v0, v0, Landroid/text/TextPaint;->bgColor:I

    move/from16 p1, v0

    if-eqz p1, :cond_10

    .line 106
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    .line 107
    .local p1, c:I
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p5

    .line 108
    .local p5, s:Landroid/graphics/Paint$Style;
    move-object/from16 v0, p12

    iget v0, v0, Landroid/text/TextPaint;->bgColor:I

    move/from16 p2, v0

    move-object/from16 v0, p12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 109
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    if-nez v14, :cond_f

    .line 112
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    move v2, v11

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p3

    .line 113
    .end local v5           #ret:F
    .local p3, ret:F
    const/16 p2, 0x1

    .line 116
    .end local v14           #haveWidth:Z
    .local p2, haveWidth:Z
    :goto_3
    const/16 p10, -0x1

    move/from16 v0, p4

    move/from16 v1, p10

    if-ne v0, v1, :cond_5

    .line 117
    .end local p10
    sub-float v5, p6, p3

    move/from16 v0, p7

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, p9

    int-to-float v0, v0

    move v8, v0

    move-object v4, p0

    move/from16 v7, p6

    move-object/from16 v9, p12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 121
    .end local v4           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v7           #spans:[Landroid/text/style/CharacterStyle;
    :goto_4
    move-object/from16 v0, p12

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    move-object/from16 v0, p12

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    move/from16 p1, p2

    .end local p2           #haveWidth:Z
    .local p1, haveWidth:Z
    move/from16 p2, p3

    .line 125
    .end local p3           #ret:F
    .end local p5           #s:Landroid/graphics/Paint$Style;
    .local p2, ret:F
    :goto_5
    const/16 p3, -0x1

    move/from16 v0, p4

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    .line 126
    if-nez p1, :cond_3

    .line 127
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    move v2, v11

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    .line 128
    const/16 p1, 0x1

    .line 131
    :cond_3
    sub-float v8, p6, p2

    move-object/from16 v0, p12

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move/from16 p3, v0

    add-int p3, p3, p8

    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move-object v4, p0

    move-object/from16 v5, p11

    move v6, v11

    move v7, v10

    move-object/from16 v10, p12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .end local v10           #tmpend:I
    move/from16 p0, p1

    .end local p1           #haveWidth:Z
    .local p0, haveWidth:Z
    move/from16 p1, p2

    .line 163
    .end local v11           #tmpstart:I
    .end local p2           #ret:F
    .end local p11           #tmp:Ljava/lang/CharSequence;
    .local p1, ret:F
    :goto_6
    const/4 p0, -0x1

    move/from16 v0, p4

    move v1, p0

    if-ne v0, v1, :cond_c

    .line 164
    .end local p0           #haveWidth:Z
    move/from16 v0, p1

    neg-float v0, v0

    move p0, v0

    .line 166
    :goto_7
    return p0

    .line 95
    .restart local v4       #replacement:Landroid/text/style/ReplacementSpan;
    .restart local v5       #ret:F
    .restart local v7       #spans:[Landroid/text/style/CharacterStyle;
    .restart local v14       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p1, text:Landroid/text/Spanned;
    .local p2, start:I
    .local p3, end:I
    .local p5, runIsRtl:Z
    .restart local p10
    :cond_4
    move-object/from16 p1, p1

    .line 96
    .local p1, tmp:Ljava/lang/CharSequence;
    move/from16 p5, p2

    .line 97
    .local p5, tmpstart:I
    move/from16 p2, p3

    .local p2, tmpend:I
    move/from16 v10, p2

    .end local p2           #tmpend:I
    .restart local v10       #tmpend:I
    move/from16 v11, p5

    .end local p5           #tmpstart:I
    .restart local v11       #tmpstart:I
    move-object/from16 p11, p1

    .end local p1           #tmp:Ljava/lang/CharSequence;
    .restart local p11       #tmp:Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 119
    .end local v5           #ret:F
    .end local v14           #haveWidth:Z
    .end local p10
    .local p1, c:I
    .local p2, haveWidth:Z
    .local p3, ret:F
    .local p5, s:Landroid/graphics/Paint$Style;
    :cond_5
    move/from16 v0, p7

    int-to-float v0, v0

    move v6, v0

    add-float v7, p6, p3

    move/from16 v0, p9

    int-to-float v0, v0

    move v8, v0

    move-object v4, p0

    move/from16 v5, p6

    move-object/from16 v9, p12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 134
    .end local v4           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v7           #spans:[Landroid/text/style/CharacterStyle;
    .end local p3           #ret:F
    .end local p5           #s:Landroid/graphics/Paint$Style;
    .local p1, haveWidth:Z
    .local p2, ret:F
    :cond_6
    if-eqz p13, :cond_7

    .line 135
    if-nez p1, :cond_7

    .line 136
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    move v2, v11

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    .line 137
    const/16 p1, 0x1

    .line 141
    :cond_7
    move-object/from16 v0, p12

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move/from16 p3, v0

    add-int p3, p3, p8

    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    move-object v4, p0

    move-object/from16 v5, p11

    move v6, v11

    move v7, v10

    move/from16 v8, p6

    move-object/from16 v10, p12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .end local v10           #tmpend:I
    move/from16 p0, p1

    .end local p1           #haveWidth:Z
    .local p0, haveWidth:Z
    move/from16 p1, p2

    .end local p2           #ret:F
    .local p1, ret:F
    goto :goto_6

    .line 145
    .end local p1           #ret:F
    .restart local v4       #replacement:Landroid/text/style/ReplacementSpan;
    .restart local v5       #ret:F
    .restart local v7       #spans:[Landroid/text/style/CharacterStyle;
    .restart local v10       #tmpend:I
    .restart local v14       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p3, end:I
    .restart local p10
    :cond_8
    if-eqz p13, :cond_e

    if-nez v14, :cond_d

    .line 146
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    move v2, v11

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    .line 147
    .end local v5           #ret:F
    .restart local p1       #ret:F
    const/4 p0, 0x1

    .end local v14           #haveWidth:Z
    .local p0, haveWidth:Z
    goto :goto_6

    .end local v10           #tmpend:I
    .end local v11           #tmpstart:I
    .end local p11           #tmp:Ljava/lang/CharSequence;
    .restart local v5       #ret:F
    .restart local v14       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p1, text:Landroid/text/Spanned;
    .local p2, start:I
    .local p5, runIsRtl:Z
    :cond_9
    move-object/from16 v5, p12

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p10

    .line 151
    invoke-virtual/range {v4 .. v9}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    .end local v5           #ret:F
    .end local v7           #spans:[Landroid/text/style/CharacterStyle;
    move-result p5

    .end local p5           #runIsRtl:Z
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    .line 153
    .local p5, ret:F
    if-eqz p0, :cond_b

    .line 154
    const/16 p10, -0x1

    move/from16 v0, p4

    move/from16 v1, p10

    if-ne v0, v1, :cond_a

    .line 155
    .end local p10
    sub-float v9, p6, p5

    move-object v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p12

    invoke-virtual/range {v4 .. v13}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    move/from16 p1, p5

    .end local p5           #ret:F
    .local p1, ret:F
    move p0, v14

    .end local v14           #haveWidth:Z
    .local p0, haveWidth:Z
    goto/16 :goto_6

    .restart local v14       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p1, text:Landroid/text/Spanned;
    .restart local p5       #ret:F
    :cond_a
    move-object v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p12

    .line 158
    invoke-virtual/range {v4 .. v13}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    :cond_b
    move/from16 p1, p5

    .end local p5           #ret:F
    .local p1, ret:F
    move p0, v14

    .end local v14           #haveWidth:Z
    .local p0, haveWidth:Z
    goto/16 :goto_6

    .end local v4           #replacement:Landroid/text/style/ReplacementSpan;
    .end local p0           #haveWidth:Z
    .end local p2           #start:I
    .end local p3           #end:I
    :cond_c
    move/from16 p0, p1

    .line 166
    goto/16 :goto_7

    .end local p1           #ret:F
    .restart local v4       #replacement:Landroid/text/style/ReplacementSpan;
    .restart local v5       #ret:F
    .restart local v7       #spans:[Landroid/text/style/CharacterStyle;
    .restart local v10       #tmpend:I
    .restart local v11       #tmpstart:I
    .restart local v14       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    .restart local p3       #end:I
    .restart local p10
    .restart local p11       #tmp:Ljava/lang/CharSequence;
    :cond_d
    move/from16 p1, v5

    .end local v5           #ret:F
    .restart local p1       #ret:F
    move p0, v14

    .end local v14           #haveWidth:Z
    .local p0, haveWidth:Z
    goto/16 :goto_6

    .end local p1           #ret:F
    .restart local v5       #ret:F
    .restart local v14       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    :cond_e
    move/from16 p1, v5

    .end local v5           #ret:F
    .restart local p1       #ret:F
    move p0, v14

    .end local v14           #haveWidth:Z
    .local p0, haveWidth:Z
    goto/16 :goto_6

    .restart local v5       #ret:F
    .restart local v14       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p1, c:I
    .local p5, s:Landroid/graphics/Paint$Style;
    :cond_f
    move/from16 p3, v5

    .end local v5           #ret:F
    .local p3, ret:F
    move/from16 p2, v14

    .end local v14           #haveWidth:Z
    .local p2, haveWidth:Z
    goto/16 :goto_3

    .end local p1           #c:I
    .end local p2           #haveWidth:Z
    .end local p5           #s:Landroid/graphics/Paint$Style;
    .restart local v5       #ret:F
    .restart local v14       #haveWidth:Z
    .local p3, end:I
    :cond_10
    move/from16 p2, v5

    .end local v5           #ret:F
    .local p2, ret:F
    move/from16 p1, v14

    .end local v14           #haveWidth:Z
    .local p1, haveWidth:Z
    goto/16 :goto_5
.end method

.method public static getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I
    .locals 7
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "widths"
    .parameter "fmi"

    .prologue
    .line 190
    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p2, p3, p4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    .line 193
    .local v3, spans:[Landroid/text/style/MetricAffectingSpan;
    const/4 v1, 0x0

    .line 194
    .local v1, replacement:Landroid/text/style/ReplacementSpan;
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 196
    const/4 p0, 0x0

    .local p0, i:I
    :goto_0
    array-length v2, v3

    if-ge p0, v2, :cond_1

    .line 197
    aget-object v2, v3, p0

    .line 198
    .local v2, span:Landroid/text/style/MetricAffectingSpan;
    instance-of v4, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_0

    .line 199
    move-object v0, v2

    check-cast v0, Landroid/text/style/ReplacementSpan;

    move-object v1, v0

    .line 196
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v2, p1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 206
    .end local v2           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v1, :cond_3

    .line 207
    invoke-virtual {p1, p6}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 208
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 218
    .end local v3           #spans:[Landroid/text/style/MetricAffectingSpan;
    .end local p0           #i:I
    .end local p1
    .end local p2
    :cond_2
    sub-int p0, p4, p3

    return p0

    .restart local v3       #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local p0       #i:I
    .restart local p1
    .restart local p2
    :cond_3
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p6

    .line 210
    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    .end local v3           #spans:[Landroid/text/style/MetricAffectingSpan;
    move-result p0

    .line 212
    .local p0, wid:I
    if-le p4, p3, :cond_2

    .line 213
    const/4 p1, 0x0

    int-to-float p0, p0

    aput p0, p5, p1

    .line 214
    .end local p0           #wid:I
    .end local p1
    add-int/lit8 p0, p3, 0x1

    .end local p2
    .local p0, i:I
    :goto_2
    if-ge p0, p4, :cond_2

    .line 215
    sub-int p1, p0, p3

    const/4 p2, 0x0

    aput p2, p5, p1

    .line 214
    add-int/lit8 p0, p0, 0x1

    goto :goto_2
.end method

.method public static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 14
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fmi"

    .prologue
    .line 430
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v10, p5

    move-object v11, p0

    move-object v12, p1

    invoke-static/range {v0 .. v13}, Landroid/text/Styled;->drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result p0

    .end local p0
    return p0
.end method
