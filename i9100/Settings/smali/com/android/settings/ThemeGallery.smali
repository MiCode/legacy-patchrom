.class public Lcom/android/settings/ThemeGallery;
.super Landroid/widget/Gallery;
.source "ThemeGallery.java"


# instance fields
.field private bcurrentmiddle:Z

.field private indexdistance:I

.field private mCamera:Landroid/graphics/Camera;

.field private mCoveflowCenter:I

.field private mMaxRotationAngle:I

.field private mMaxZoom:I

.field private selectindex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ThemeGallery;->mCamera:Landroid/graphics/Camera;

    .line 31
    const/16 v0, -0x23

    iput v0, p0, Lcom/android/settings/ThemeGallery;->mMaxRotationAngle:I

    .line 36
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings/ThemeGallery;->mMaxZoom:I

    .line 94
    iput v1, p0, Lcom/android/settings/ThemeGallery;->selectindex:I

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ThemeGallery;->bcurrentmiddle:Z

    .line 124
    iput v1, p0, Lcom/android/settings/ThemeGallery;->indexdistance:I

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ThemeGallery;->setStaticTransformationsEnabled(Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ThemeGallery;->mCamera:Landroid/graphics/Camera;

    .line 31
    const/16 v0, -0x23

    iput v0, p0, Lcom/android/settings/ThemeGallery;->mMaxRotationAngle:I

    .line 36
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings/ThemeGallery;->mMaxZoom:I

    .line 94
    iput v1, p0, Lcom/android/settings/ThemeGallery;->selectindex:I

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ThemeGallery;->bcurrentmiddle:Z

    .line 124
    iput v1, p0, Lcom/android/settings/ThemeGallery;->indexdistance:I

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ThemeGallery;->setStaticTransformationsEnabled(Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ThemeGallery;->mCamera:Landroid/graphics/Camera;

    .line 31
    const/16 v0, -0x23

    iput v0, p0, Lcom/android/settings/ThemeGallery;->mMaxRotationAngle:I

    .line 36
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings/ThemeGallery;->mMaxZoom:I

    .line 94
    iput v1, p0, Lcom/android/settings/ThemeGallery;->selectindex:I

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ThemeGallery;->bcurrentmiddle:Z

    .line 124
    iput v1, p0, Lcom/android/settings/ThemeGallery;->indexdistance:I

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ThemeGallery;->setStaticTransformationsEnabled(Z)V

    .line 56
    return-void
.end method

.method private getCenterOfCoverflow()I
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings/ThemeGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/ThemeGallery;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/settings/ThemeGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/ThemeGallery;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V
    .locals 14
    .parameter "child"
    .parameter "t"
    .parameter "rotationAngle"

    .prologue
    .line 218
    iget-object v8, p0, Lcom/android/settings/ThemeGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 222
    .local v2, imageMatrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 224
    .local v1, imageHeight:I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 225
    .local v3, imageWidth:I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 227
    .local v5, rotation:I
    const/high16 v4, 0x4170

    .line 228
    .local v4, middleitmeoffset:F
    const/4 v6, 0x0

    .line 230
    .local v6, xoffset:F
    iget-boolean v8, p0, Lcom/android/settings/ThemeGallery;->bcurrentmiddle:Z

    if-nez v8, :cond_7

    .line 231
    iget v8, p0, Lcom/android/settings/ThemeGallery;->indexdistance:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/settings/ThemeGallery;->indexdistance:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 232
    :cond_0
    const/high16 v4, 0x4170

    .line 233
    const/16 v8, -0x96

    iput v8, p0, Lcom/android/settings/ThemeGallery;->mMaxZoom:I

    .line 235
    const/16 v8, 0x78

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 236
    const/high16 v8, 0x4248

    iget v9, p0, Lcom/android/settings/ThemeGallery;->indexdistance:I

    neg-int v9, v9

    int-to-float v9, v9

    mul-float v6, v8, v9

    .line 255
    :goto_0
    iget-object v8, p0, Lcom/android/settings/ThemeGallery;->mCamera:Landroid/graphics/Camera;

    const/high16 v9, 0x42c8

    invoke-virtual {v8, v6, v4, v9}, Landroid/graphics/Camera;->translate(FFF)V

    .line 261
    iget v8, p0, Lcom/android/settings/ThemeGallery;->mMaxRotationAngle:I

    if-le v5, v8, :cond_1

    .line 262
    iget v8, p0, Lcom/android/settings/ThemeGallery;->mMaxZoom:I

    int-to-double v8, v8

    int-to-double v10, v5

    const-wide/high16 v12, 0x4004

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v7, v8

    .line 263
    .local v7, zoomAmount:F
    iget-object v8, p0, Lcom/android/settings/ThemeGallery;->mCamera:Landroid/graphics/Camera;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 266
    .end local v7           #zoomAmount:F
    :cond_1
    iget-object v8, p0, Lcom/android/settings/ThemeGallery;->mCamera:Landroid/graphics/Camera;

    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 267
    iget-object v8, p0, Lcom/android/settings/ThemeGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 268
    div-int/lit8 v8, v3, 0x2

    neg-int v8, v8

    int-to-float v8, v8

    div-int/lit8 v9, v1, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 269
    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v1, 0x2

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 270
    iget-object v8, p0, Lcom/android/settings/ThemeGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 271
    return-void

    .line 238
    :cond_2
    iget v8, p0, Lcom/android/settings/ThemeGallery;->indexdistance:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/android/settings/ThemeGallery;->indexdistance:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 239
    :cond_3
    const/4 v4, 0x0

    .line 240
    const/16 v8, -0x32

    iput v8, p0, Lcom/android/settings/ThemeGallery;->mMaxZoom:I

    .line 241
    const/16 v8, 0x32

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 242
    const/high16 v8, 0x4120

    iget v9, p0, Lcom/android/settings/ThemeGallery;->indexdistance:I

    neg-int v9, v9

    int-to-float v9, v9

    mul-float v6, v8, v9

    goto :goto_0

    .line 243
    :cond_4
    iget v8, p0, Lcom/android/settings/ThemeGallery;->indexdistance:I

    const/4 v9, 0x2

    if-gt v8, v9, :cond_5

    iget v8, p0, Lcom/android/settings/ThemeGallery;->indexdistance:I

    const/4 v9, -0x2

    if-ge v8, v9, :cond_6

    .line 244
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    .line 246
    :cond_6
    const/16 v8, -0x96

    iput v8, p0, Lcom/android/settings/ThemeGallery;->mMaxZoom:I

    .line 247
    const/16 v8, 0xff

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    .line 250
    :cond_7
    const/16 v8, -0x96

    iput v8, p0, Lcom/android/settings/ThemeGallery;->mMaxZoom:I

    .line 251
    const/16 v8, 0xff

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setAlpha(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 7
    .parameter "child"
    .parameter "t"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    invoke-static {p1}, Lcom/android/settings/ThemeGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 137
    .local v0, childCenter:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 138
    .local v1, childWidth:I
    const/4 v2, 0x0

    .line 142
    .local v2, rotationAngle:I
    invoke-virtual {p0}, Lcom/android/settings/ThemeGallery;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/settings/ThemeGallery;->getPositionForView(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/settings/ThemeGallery;->indexdistance:I

    .line 144
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 145
    sget v3, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v3}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 147
    iget v3, p0, Lcom/android/settings/ThemeGallery;->mCoveflowCenter:I

    if-ne v0, v3, :cond_0

    .line 148
    iput-boolean v6, p0, Lcom/android/settings/ThemeGallery;->bcurrentmiddle:Z

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/ThemeGallery;->getPositionForView(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ThemeGallery;->selectindex:I

    .line 150
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-direct {p0, p1, p2, v5}, Lcom/android/settings/ThemeGallery;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V

    .line 163
    :goto_0
    return v6

    .line 153
    .restart local p1
    :cond_0
    iget v3, p0, Lcom/android/settings/ThemeGallery;->mCoveflowCenter:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/settings/ThemeGallery;->mMaxRotationAngle:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 159
    iput-boolean v5, p0, Lcom/android/settings/ThemeGallery;->bcurrentmiddle:Z

    .line 160
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/settings/ThemeGallery;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/settings/ThemeGallery;->getCenterOfCoverflow()I

    move-result v0

    iput v0, p0, Lcom/android/settings/ThemeGallery;->mCoveflowCenter:I

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    .line 181
    return-void
.end method
