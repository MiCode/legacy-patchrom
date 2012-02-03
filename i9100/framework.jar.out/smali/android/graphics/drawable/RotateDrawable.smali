.class public Landroid/graphics/drawable/RotateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RotateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RotateDrawable$1;,
        Landroid/graphics/drawable/RotateDrawable$RotateState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:F = 10000.0f


# instance fields
.field private mMutated:Z

.field private mState:Landroid/graphics/drawable/RotateDrawable$RotateState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "rotateState"
    .parameter "res"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 70
    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/graphics/drawable/RotateDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 76
    .local v4, saveCount:I
    iget-object v7, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v7, v7, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 78
    .local v0, bounds:Landroid/graphics/Rect;
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v7, v8

    .line 79
    .local v6, w:I
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, v7, v8

    .line 81
    .local v1, h:I
    iget-object v5, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 83
    .local v5, st:Landroid/graphics/drawable/RotateDrawable$RotateState;
    iget-boolean v7, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eqz v7, :cond_0

    int-to-float v7, v6

    iget v8, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    mul-float/2addr v7, v8

    move v2, v7

    .line 84
    .local v2, px:F
    :goto_0
    iget-boolean v7, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eqz v7, :cond_1

    int-to-float v7, v1

    iget v8, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    mul-float/2addr v7, v8

    move v3, v7

    .line 86
    .local v3, py:F
    :goto_1
    iget v7, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    invoke-virtual {p1, v7, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 88
    iget-object v7, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 91
    return-void

    .line 83
    .end local v2           #px:F
    .end local v3           #py:F
    :cond_0
    iget v7, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    move v2, v7

    goto :goto_0

    .line 84
    .restart local v2       #px:F
    :cond_1
    iget v7, v5, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    move v3, v7

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v1, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v1, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-virtual {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    .line 193
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 139
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 20
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v17, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 205
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v4, v17

    invoke-super {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 208
    const/16 v17, 0x4

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 211
    .local v15, tv:Landroid/util/TypedValue;
    if-nez v15, :cond_3

    .line 212
    const/4 v10, 0x1

    .line 213
    .local v10, pivotXRel:Z
    const/high16 v9, 0x3f00

    .line 219
    .local v9, pivotX:F
    :goto_0
    const/16 v17, 0x5

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 222
    if-nez v15, :cond_6

    .line 223
    const/4 v12, 0x1

    .line 224
    .local v12, pivotYRel:Z
    const/high16 v11, 0x3f00

    .line 230
    .local v11, pivotY:F
    :goto_1
    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 232
    .local v7, fromDegrees:F
    const/16 v17, 0x3

    const/high16 v18, 0x43b4

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 235
    .local v14, toDegrees:F
    invoke-static {v7, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 237
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 239
    .local v13, res:I
    const/4 v6, 0x0

    .line 240
    .local v6, drawable:Landroid/graphics/drawable/Drawable;
    if-lez v13, :cond_0

    .line 241
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 244
    :cond_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 248
    .local v8, outerDepth:I
    :cond_1
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, type:I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_9

    .line 251
    :cond_2
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 255
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 256
    const-string v17, "drawable"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Bad element under <rotate>: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 215
    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #fromDegrees:F
    .end local v8           #outerDepth:I
    .end local v9           #pivotX:F
    .end local v10           #pivotXRel:Z
    .end local v11           #pivotY:F
    .end local v12           #pivotYRel:Z
    .end local v13           #res:I
    .end local v14           #toDegrees:F
    .end local v16           #type:I
    :cond_3
    move-object v0, v15

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    move/from16 v10, v17

    .line 216
    .restart local v10       #pivotXRel:Z
    :goto_3
    if-eqz v10, :cond_5

    const/high16 v17, 0x3f80

    const/high16 v18, 0x3f80

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v9, v17

    .restart local v9       #pivotX:F
    :goto_4
    goto/16 :goto_0

    .line 215
    .end local v9           #pivotX:F
    .end local v10           #pivotXRel:Z
    :cond_4
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_3

    .line 216
    .restart local v10       #pivotXRel:Z
    :cond_5
    invoke-virtual {v15}, Landroid/util/TypedValue;->getFloat()F

    move-result v17

    move/from16 v9, v17

    goto :goto_4

    .line 226
    .restart local v9       #pivotX:F
    :cond_6
    move-object v0, v15

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/16 v17, 0x1

    move/from16 v12, v17

    .line 227
    .restart local v12       #pivotYRel:Z
    :goto_5
    if-eqz v12, :cond_8

    const/high16 v17, 0x3f80

    const/high16 v18, 0x3f80

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v11, v17

    .restart local v11       #pivotY:F
    :goto_6
    goto/16 :goto_1

    .line 226
    .end local v11           #pivotY:F
    .end local v12           #pivotYRel:Z
    :cond_7
    const/16 v17, 0x0

    move/from16 v12, v17

    goto :goto_5

    .line 227
    .restart local v12       #pivotYRel:Z
    :cond_8
    invoke-virtual {v15}, Landroid/util/TypedValue;->getFloat()F

    move-result v17

    move/from16 v11, v17

    goto :goto_6

    .line 261
    .restart local v6       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v7       #fromDegrees:F
    .restart local v8       #outerDepth:I
    .restart local v11       #pivotY:F
    .restart local v13       #res:I
    .restart local v14       #toDegrees:F
    .restart local v16       #type:I
    :cond_9
    if-nez v6, :cond_a

    .line 262
    const-string v17, "drawable"

    const-string v18, "No drawable specified for <rotate>"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    move-object/from16 v17, v0

    move-object v0, v6

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    move-object/from16 v17, v0

    move v0, v10

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    move-object/from16 v17, v0

    move v0, v9

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    move-object/from16 v17, v0

    move v0, v12

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    move-object/from16 v17, v0

    move v0, v11

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    move-object/from16 v18, v0

    move v0, v7

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    move v0, v7

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    move-object/from16 v17, v0

    move v0, v14

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 273
    if-eqz v6, :cond_b

    .line 274
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 276
    :cond_b
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 281
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable;->mMutated:Z

    .line 284
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bounds"

    .prologue
    .line 175
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 5
    .parameter "level"

    .prologue
    .line 162
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 163
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 165
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v1, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v2, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    iget-object v3, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v3, v3, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    sub-float/2addr v2, v3

    int-to-float v3, p1

    const v4, 0x461c4000

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 169
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 155
    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v1, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 156
    .local v0, changed:Z
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RotateDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 157
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 126
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 129
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 109
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 112
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 113
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 145
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 132
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 135
    :cond_0
    return-void
.end method
