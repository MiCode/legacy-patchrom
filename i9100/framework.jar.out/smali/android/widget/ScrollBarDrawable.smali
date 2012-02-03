.class public Landroid/widget/ScrollBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScrollBarDrawable.java"


# instance fields
.field private mAlwaysDrawHorizontalTrack:Z

.field private mAlwaysDrawVerticalTrack:Z

.field private mChanged:Z

.field private mExtent:I

.field private mHorizontalThumb:Landroid/graphics/drawable/Drawable;

.field private mHorizontalTrack:Landroid/graphics/drawable/Drawable;

.field private mOffset:I

.field private mRange:I

.field private mRangeChanged:Z

.field private final mTempBounds:Landroid/graphics/Rect;

.field private mVertical:Z

.field private mVerticalThumb:Landroid/graphics/drawable/Drawable;

.field private mVerticalTrack:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollBarDrawable;->mTempBounds:Landroid/graphics/Rect;

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    move/from16 v18, v0

    .line 103
    .local v18, vertical:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    move v12, v0

    .line 104
    .local v12, extent:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollBarDrawable;->mRange:I

    move v15, v0

    .line 106
    .local v15, range:I
    const/4 v11, 0x1

    .line 107
    .local v11, drawTrack:Z
    const/4 v10, 0x1

    .line 108
    .local v10, drawThumb:Z
    if-lez v12, :cond_0

    if-gt v15, v12, :cond_1

    .line 109
    :cond_0
    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    move v4, v0

    move v11, v4

    .line 110
    :goto_0
    const/4 v10, 0x0

    .line 113
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 114
    .local v14, r:Landroid/graphics/Rect;
    iget v4, v14, Landroid/graphics/Rect;->left:I

    int-to-float v5, v4

    iget v4, v14, Landroid/graphics/Rect;->top:I

    int-to-float v6, v4

    iget v4, v14, Landroid/graphics/Rect;->right:I

    int-to-float v7, v4

    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v4

    sget-object v9, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 140
    :cond_2
    :goto_1
    return-void

    .line 109
    .end local v14           #r:Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    move v4, v0

    move v11, v4

    goto :goto_0

    .line 118
    .restart local v14       #r:Landroid/graphics/Rect;
    :cond_4
    if-eqz v11, :cond_5

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 122
    :cond_5
    if-eqz v10, :cond_2

    .line 123
    if-eqz v18, :cond_8

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    move/from16 v16, v4

    .line 124
    .local v16, size:I
    :goto_2
    if-eqz v18, :cond_9

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v4

    move/from16 v17, v4

    .line 125
    .local v17, thickness:I
    :goto_3
    move/from16 v0, v16

    int-to-float v0, v0

    move v4, v0

    int-to-float v5, v12

    mul-float/2addr v4, v5

    int-to-float v5, v15

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 126
    .local v8, length:I
    sub-int v4, v16, v8

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    move v5, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-int v5, v15, v12

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 129
    .local v7, offset:I
    mul-int/lit8 v13, v17, 0x2

    .line 130
    .local v13, minLength:I
    if-ge v8, v13, :cond_6

    .line 131
    move v8, v13

    .line 134
    :cond_6
    add-int v4, v7, v8

    move v0, v4

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 135
    sub-int v7, v16, v8

    :cond_7
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v14

    move/from16 v9, v18

    .line 138
    invoke-virtual/range {v4 .. v9}, Landroid/widget/ScrollBarDrawable;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    goto :goto_1

    .line 123
    .end local v7           #offset:I
    .end local v8           #length:I
    .end local v13           #minLength:I
    .end local v16           #size:I
    .end local v17           #thickness:I
    :cond_8
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v4

    move/from16 v16, v4

    goto :goto_2

    .line 124
    .restart local v16       #size:I
    :cond_9
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    move/from16 v17, v4

    goto :goto_3
.end method

.method protected drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .locals 7
    .parameter "canvas"
    .parameter "bounds"
    .parameter "offset"
    .parameter "length"
    .parameter "vertical"

    .prologue
    .line 164
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mTempBounds:Landroid/graphics/Rect;

    .line 165
    .local v2, thumbRect:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    if-eqz v3, :cond_3

    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .line 166
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 167
    if-eqz p5, :cond_4

    .line 168
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p3

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p3

    add-int/2addr v6, p4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    :cond_1
    :goto_1
    if-eqz p5, :cond_5

    .line 177
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 178
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 179
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 185
    :goto_2
    return-void

    .line 165
    .end local v0           #changed:Z
    .end local v1           #thumb:Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 171
    .restart local v0       #changed:Z
    :cond_4
    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p3

    add-int/2addr v5, p4

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 181
    :cond_5
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 182
    .restart local v1       #thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 183
    :cond_6
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method protected drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "vertical"

    .prologue
    .line 150
    if-eqz p3, :cond_2

    .line 151
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 155
    .local v0, track:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_1

    .line 156
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 159
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    :cond_1
    return-void

    .line 153
    .end local v0           #track:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .restart local v0       #track:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getAlwaysDrawHorizontalTrack()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    return v0
.end method

.method public getAlwaysDrawVerticalTrack()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, -0x3

    return v0
.end method

.method public getSize(Z)I
    .locals 1
    .parameter "vertical"

    .prologue
    .line 208
    if-eqz p1, :cond_1

    .line 209
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 212
    :goto_1
    return v0

    .line 209
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    .line 146
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 219
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 222
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 223
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 226
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 227
    return-void
.end method

.method public setAlwaysDrawHorizontalTrack(Z)V
    .locals 0
    .parameter "alwaysDrawTrack"

    .prologue
    .line 56
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    .line 57
    return-void
.end method

.method public setAlwaysDrawVerticalTrack(Z)V
    .locals 0
    .parameter "alwaysDrawTrack"

    .prologue
    .line 66
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    .line 67
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 231
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 234
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 235
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 238
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 239
    return-void
.end method

.method public setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 201
    :cond_0
    return-void
.end method

.method public setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "track"

    .prologue
    .line 204
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .line 205
    return-void
.end method

.method public setParameters(IIIZ)V
    .locals 2
    .parameter "range"
    .parameter "offset"
    .parameter "extent"
    .parameter "vertical"

    .prologue
    const/4 v1, 0x1

    .line 86
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eq v0, p4, :cond_0

    .line 87
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    .line 90
    :cond_0
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    if-eq v0, p3, :cond_2

    .line 91
    :cond_1
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    .line 94
    :cond_2
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 95
    iput p2, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    .line 96
    iput p3, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 97
    iput-boolean p4, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    .line 98
    return-void
.end method

.method public setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 191
    :cond_0
    return-void
.end method

.method public setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "track"

    .prologue
    .line 194
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollBarDrawable: range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eqz v1, :cond_0

    const-string v1, " V"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, " H"

    goto :goto_0
.end method
