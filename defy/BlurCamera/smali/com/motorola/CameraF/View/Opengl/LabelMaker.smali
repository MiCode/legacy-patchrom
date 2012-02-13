.class public Lcom/motorola/CameraF/View/Opengl/LabelMaker;
.super Ljava/lang/Object;
.source "LabelMaker.java"


# static fields
.field private static final STATE_ADDING:I = 0x2

.field private static final STATE_DRAWING:I = 0x3

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_NEW:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mFullColor:Z

.field private mLineHeight:I

.field private mState:I

.field private mStrikeHeight:I

.field private mStrikeWidth:I

.field private mU:I

.field private mV:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 3
    .parameter "fullColor"
    .parameter "strikeWidth"
    .parameter "strikeHeight"

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const-string v0, "LabelMaker"

    iput-object v0, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->TAG:Ljava/lang/String;

    .line 67
    iput-boolean p1, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mFullColor:Z

    .line 68
    iput p2, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mStrikeWidth:I

    .line 69
    iput p3, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mStrikeHeight:I

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mClearPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 73
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mClearPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iput v2, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mState:I

    .line 75
    return-void
.end method

.method private checkState(II)V
    .locals 2
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 277
    iget v0, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mState:I

    if-eq v0, p1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call this method now."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    iput p2, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mState:I

    .line 281
    return-void
.end method


# virtual methods
.method public add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;II)Z
    .locals 7
    .parameter "gl"
    .parameter "drawable"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    const/4 v3, 0x0

    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;II)Z

    move-result v0

    return v0
.end method

.method public add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;)Z
    .locals 7
    .parameter "gl"
    .parameter "background"
    .parameter "text"
    .parameter "textPaint"

    .prologue
    const/4 v5, 0x0

    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;II)Z

    move-result v0

    return v0
.end method

.method public add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;II)Z
    .locals 24
    .parameter "gl"
    .parameter "background"
    .parameter "text"
    .parameter "textPaint"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    .line 189
    const/16 v21, 0x2

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->checkState(II)V

    .line 190
    if-eqz p2, :cond_4

    const/16 v21, 0x1

    move/from16 v7, v21

    .line 191
    .local v7, drawBackground:Z
    :goto_0
    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    const/16 v21, 0x1

    move/from16 v8, v21

    .line 193
    .local v8, drawText:Z
    :goto_1
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 194
    .local v14, padding:Landroid/graphics/Rect;
    if-eqz v7, :cond_0

    .line 195
    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v21

    move/from16 v0, p5

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v21

    move/from16 v0, p6

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p6

    .line 200
    :cond_0
    const/4 v5, 0x0

    .line 201
    .local v5, ascent:I
    const/4 v6, 0x0

    .line 202
    .local v6, descent:I
    const/4 v11, 0x0

    .line 203
    .local v11, measuredTextWidth:I
    if-eqz v8, :cond_1

    .line 205
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->ascent()F

    move-result v21

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move v5, v0

    .line 206
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->descent()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move v6, v0

    .line 207
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move v11, v0

    .line 209
    :cond_1
    add-int v15, v5, v6

    .line 210
    .local v15, textHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mStrikeWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 212
    .local v16, textWidth:I
    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v12, v21, v22

    .line 213
    .local v12, padHeight:I
    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v13, v21, v22

    .line 214
    .local v13, padWidth:I
    add-int v21, v15, v12

    move/from16 v0, p6

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 215
    .local v9, height:I
    add-int v21, v16, v13

    move/from16 v0, p5

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 221
    .local v20, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mU:I

    move/from16 v17, v0

    .line 222
    .local v17, u:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mV:I

    move/from16 v18, v0

    .line 223
    .local v18, v:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mLineHeight:I

    move v10, v0

    .line 225
    .local v10, lineHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mStrikeWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mStrikeWidth:I

    move/from16 v20, v0

    .line 230
    :cond_2
    add-int v21, v17, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mStrikeWidth:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 232
    const/16 v17, 0x0

    .line 233
    add-int v18, v18, v10

    .line 234
    const/4 v10, 0x0

    .line 236
    :cond_3
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 237
    add-int v21, v18, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mStrikeHeight:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 238
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Out of texture space."

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 190
    .end local v5           #ascent:I
    .end local v6           #descent:I
    .end local v7           #drawBackground:Z
    .end local v8           #drawText:Z
    .end local v9           #height:I
    .end local v10           #lineHeight:I
    .end local v11           #measuredTextWidth:I
    .end local v12           #padHeight:I
    .end local v13           #padWidth:I
    .end local v14           #padding:Landroid/graphics/Rect;
    .end local v15           #textHeight:I
    .end local v16           #textWidth:I
    .end local v17           #u:I
    .end local v18           #v:I
    .end local v20           #width:I
    :cond_4
    const/16 v21, 0x0

    move/from16 v7, v21

    goto/16 :goto_0

    .line 191
    .restart local v7       #drawBackground:Z
    :cond_5
    const/16 v21, 0x0

    move/from16 v8, v21

    goto/16 :goto_1

    .line 241
    .restart local v5       #ascent:I
    .restart local v6       #descent:I
    .restart local v8       #drawText:Z
    .restart local v9       #height:I
    .restart local v10       #lineHeight:I
    .restart local v11       #measuredTextWidth:I
    .restart local v12       #padHeight:I
    .restart local v13       #padWidth:I
    .restart local v14       #padding:Landroid/graphics/Rect;
    .restart local v15       #textHeight:I
    .restart local v16       #textWidth:I
    .restart local v17       #u:I
    .restart local v18       #v:I
    .restart local v20       #width:I
    :cond_6
    add-int v19, v18, v5

    .line 243
    .local v19, vBase:I
    if-eqz v7, :cond_7

    .line 244
    add-int v21, v17, v20

    add-int v22, v18, v9

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    :cond_7
    if-eqz v8, :cond_8

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v21, v0

    const/high16 v22, -0x4000

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mStrikeWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v17

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mStrikeHeight:I

    move/from16 v23, v0

    sub-int v23, v23, v9

    div-int/lit8 v23, v23, 0x2

    add-int v23, v23, v19

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 258
    :cond_8
    const/16 v21, 0x1

    return v21
.end method

.method public add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;)Z
    .locals 1
    .parameter "gl"
    .parameter "text"
    .parameter "textPaint"

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;)Z

    move-result v0

    return v0
.end method

.method public beginAdding(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 135
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->checkState(II)V

    .line 137
    iput v3, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mU:I

    .line 138
    iput v3, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mV:I

    .line 139
    iput v3, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mLineHeight:I

    .line 140
    iget-boolean v1, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mFullColor:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object v0, v1

    .line 142
    .local v0, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    iget v1, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mStrikeWidth:I

    iget v2, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mStrikeHeight:I

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    .line 143
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    .line 144
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 145
    return-void

    .line 140
    .end local v0           #config:Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move-object v0, v1

    goto :goto_0
.end method

.method public endAdding(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 5
    .parameter "gl"
    .parameter "mTextureID"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 267
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->checkState(II)V

    .line 268
    invoke-interface {p1, v3, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 269
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 271
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    iput-object v4, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    .line 273
    iput-object v4, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    .line 274
    return-void
.end method

.method public generateLabelTex(Ljavax/microedition/khronos/opengles/GL10;ILjava/lang/String;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "gl"
    .parameter "mTextureID"
    .parameter "text"
    .parameter "textPaint"

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->initialize(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->beginAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 80
    invoke-virtual {p0, p1, p3, p4}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;)Z

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->endAdding(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 82
    return-void
.end method

.method public initialize(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 4
    .parameter "gl"
    .parameter "mTextureID"

    .prologue
    const v3, 0x47012f00

    const v2, 0x46180400

    const/16 v1, 0xde1

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mState:I

    .line 95
    invoke-interface {p1, v1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 98
    const/16 v0, 0x2801

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 100
    const/16 v0, 0x2800

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 103
    const/16 v0, 0x2802

    invoke-interface {p1, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 105
    const/16 v0, 0x2803

    invoke-interface {p1, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 108
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 112
    return-void
.end method

.method public shutdown(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget v0, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mState:I

    if-lez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->mState:I

    .line 126
    :cond_0
    return-void
.end method
