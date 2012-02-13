.class public Lcom/android/providers/calendar/CalendarStatusDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CalendarStatusDrawable.java"


# static fields
.field private static final HATCH_DY:I = 0xa

.field private static final HATCH_LINE_WIDTH:I = 0x4

.field private static final HATCH_SY:I = 0xc

.field private static final OUTLINE_LINE_WIDTH:I = 0x2


# instance fields
.field mDrawLine:Z

.field mFillPaint:Landroid/graphics/Paint;

.field mHatchBackgroundColor:I

.field mHatchForegroundColor:I

.field mHatchUp:Z

.field private final mIsCView:Z

.field mLeft2Right:Z

.field mOutlineColor:I

.field mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(IIIZZZZ)V
    .locals 2
    .parameter "hatchBackgroundColor"
    .parameter "hatchForegroundColor"
    .parameter "outlineColor"
    .parameter "drawLine"
    .parameter "hatchUp"
    .parameter "isLeft2Right"
    .parameter "isCView"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mOutlineColor:I

    .line 162
    iput-boolean v1, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mLeft2Right:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mDrawLine:Z

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 41
    iput p1, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mHatchBackgroundColor:I

    .line 42
    iput p2, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mHatchForegroundColor:I

    .line 43
    iput p3, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mOutlineColor:I

    .line 44
    iput-boolean p5, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mHatchUp:Z

    .line 45
    iput-boolean p6, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mLeft2Right:Z

    .line 46
    iput-boolean p4, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mDrawLine:Z

    .line 47
    iput-boolean p7, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mIsCView:Z

    .line 48
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    return-void
.end method

.method public constructor <init>(IIZZZZ)V
    .locals 8
    .parameter "hatchBackgroundColor"
    .parameter "hatchForegroundColor"
    .parameter "drawLine"
    .parameter "hatchUp"
    .parameter "isLeft2Right"
    .parameter "isCView"

    .prologue
    .line 139
    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/calendar/CalendarStatusDrawable;-><init>(IIIZZZZ)V

    .line 141
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarStatusDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 64
    .local v11, bounds:Landroid/graphics/Rect;
    iget v14, v11, Landroid/graphics/Rect;->left:I

    .line 65
    .local v14, left:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 66
    .local v23, top:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v24

    .line 67
    .local v24, width:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 71
    .local v13, height:I
    const/4 v5, 0x3

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 74
    int-to-float v5, v14

    move/from16 v0, v23

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 76
    move v12, v13

    .line 77
    .local v12, hatchHeight:I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move/from16 v3, v24

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mHatchBackgroundColor:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    const/16 v22, -0x1

    .line 82
    .local v22, stripe_width:I
    const/16 v19, 0x0

    .line 83
    .local v19, radious:F
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 84
    .local v18, path:Landroid/graphics/Path;
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 85
    .local v15, outlinePath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mHatchBackgroundColor:I

    move v5, v0

    if-eqz v5, :cond_0

    .line 86
    const/16 v21, 0x0

    .line 87
    .local v21, roundRect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mIsCView:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 88
    new-instance v20, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v24

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v13

    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 89
    .local v20, rect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 90
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 91
    const/4 v5, 0x0

    int-to-float v6, v13

    invoke-virtual {v15, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    move/from16 v0, v24

    int-to-float v0, v0

    move v5, v0

    int-to-float v6, v13

    invoke-virtual {v15, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 93
    move/from16 v0, v24

    int-to-float v0, v0

    move v5, v0

    const/4 v6, 0x0

    invoke-virtual {v15, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 113
    .end local v20           #rect:Landroid/graphics/RectF;
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 115
    .end local v21           #roundRect:Landroid/graphics/RectF;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mDrawLine:Z

    move v5, v0

    if-eqz v5, :cond_2

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mHatchForegroundColor:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x4080

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    const/16 v25, 0xa

    .local v25, y:I
    :goto_1
    add-int/lit8 v5, v12, 0xa

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_2

    .line 120
    new-instance v16, Landroid/graphics/Point;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v5

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 121
    .local v16, p1:Landroid/graphics/Point;
    new-instance v17, Landroid/graphics/Point;

    const/16 v5, 0xa

    sub-int v5, v25, v5

    move-object/from16 v0, v17

    move/from16 v1, v24

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 122
    .local v17, p2:Landroid/graphics/Point;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v5, v0

    int-to-float v6, v5

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v5, v0

    int-to-float v7, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v5, v0

    int-to-float v8, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v5, v0

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    add-int/lit8 v25, v25, 0xc

    goto :goto_1

    .line 95
    .end local v16           #p1:Landroid/graphics/Point;
    .end local v17           #p2:Landroid/graphics/Point;
    .end local v25           #y:I
    .restart local v21       #roundRect:Landroid/graphics/RectF;
    :cond_1
    move/from16 v22, v24

    .line 96
    move/from16 v0, v22

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x4000

    div-float v19, v5, v6

    .line 109
    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, v15

    move-object/from16 v1, v21

    move v2, v5

    move/from16 v3, v19

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 110
    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move v2, v5

    move/from16 v3, v19

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 126
    .end local v21           #roundRect:Landroid/graphics/RectF;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mOutlineColor:I

    move v5, v0

    if-eqz v5, :cond_3

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mOutlineColor:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x4000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarStatusDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 151
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 156
    return-void
.end method
