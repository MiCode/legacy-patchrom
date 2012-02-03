.class final Lcom/android/internal/policy/impl/IconUtilities;
.super Ljava/lang/Object;
.source "IconUtilities.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconUtilities"

.field private static final sColors:[I


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mColorIndex:I

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private final mGlowColorPressedPaint:Landroid/graphics/Paint;

.field private mIconHeight:I

.field private mIconTextureHeight:I

.field private mIconTextureWidth:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/IconUtilities;->sColors:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconWidth:I

    .line 53
    iput v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconHeight:I

    .line 54
    iput v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureWidth:I

    .line 55
    iput v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureHeight:I

    .line 57
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mBlurPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    .line 62
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    .line 65
    iput v8, p0, Lcom/android/internal/policy/impl/IconUtilities;->mColorIndex:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 69
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/IconUtilities;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 70
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 71
    .local v2, density:F
    const/high16 v5, 0x40a0

    mul-float v0, v5, v2

    .line 73
    .local v0, blurPx:F
    const/high16 v5, 0x105

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconHeight:I

    iput v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconWidth:I

    .line 74
    iget v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconWidth:I

    const/high16 v6, 0x4000

    mul-float/2addr v6, v0

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureHeight:I

    iput v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureWidth:I

    .line 76
    iget-object v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mBlurPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/BlurMaskFilter;

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v6, v0, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 77
    iget-object v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v6, -0x3d00

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 79
    iget-object v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v6, -0x7200

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 82
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 83
    .local v1, cm:Landroid/graphics/ColorMatrix;
    const v5, 0x3e4ccccd

    invoke-virtual {v1, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 85
    iget-object v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    new-instance v6, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v7, 0x4

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 87
    return-void
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "icon"

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/IconUtilities;->mIconWidth:I

    move/from16 v17, v0

    .line 110
    .local v17, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/IconUtilities;->mIconHeight:I

    move v8, v0

    .line 112
    .local v8, height:I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 113
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v10, v0

    .line 114
    .local v10, painter:Landroid/graphics/drawable/PaintDrawable;
    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 115
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 124
    .end local v10           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 125
    .local v13, sourceWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 127
    .local v12, sourceHeight:I
    if-lez v13, :cond_2

    if-lez v13, :cond_2

    .line 129
    move/from16 v0, v17

    move v1, v13

    if-lt v0, v1, :cond_1

    if-ge v8, v12, :cond_5

    .line 131
    :cond_1
    move v0, v13

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v12

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 132
    .local v11, ratio:F
    if-le v13, v12, :cond_4

    .line 133
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v11

    move/from16 v0, v18

    float-to-int v0, v0

    move v8, v0

    .line 145
    .end local v11           #ratio:F
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureWidth:I

    move v15, v0

    .line 146
    .local v15, textureWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureHeight:I

    move v14, v0

    .line 148
    .local v14, textureHeight:I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v0, v15

    move v1, v14

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 150
    .local v5, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/IconUtilities;->mCanvas:Landroid/graphics/Canvas;

    move-object v7, v0

    .line 151
    .local v7, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    sub-int v18, v15, v17

    div-int/lit8 v9, v18, 0x2

    .line 154
    .local v9, left:I
    sub-int v18, v14, v8

    div-int/lit8 v16, v18, 0x2

    .line 165
    .local v16, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 166
    add-int v18, v9, v17

    add-int v19, v16, v8

    move-object/from16 v0, p1

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/IconUtilities;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 170
    return-object v5

    .line 116
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v9           #left:I
    .end local v12           #sourceHeight:I
    .end local v13           #sourceWidth:I
    .end local v14           #textureHeight:I
    .end local v15           #textureWidth:I
    .end local v16           #top:I
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 118
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 119
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 120
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v18

    if-nez v18, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/IconUtilities;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 134
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11       #ratio:F
    .restart local v12       #sourceHeight:I
    .restart local v13       #sourceWidth:I
    :cond_4
    if-le v12, v13, :cond_2

    .line 135
    move v0, v8

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v11

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_1

    .line 137
    .end local v11           #ratio:F
    :cond_5
    move v0, v13

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    if-ge v12, v8, :cond_2

    .line 139
    move/from16 v17, v13

    .line 140
    move v8, v12

    goto/16 :goto_1
.end method

.method private createSelectedBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"
    .parameter "pressed"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 174
    iget v4, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    .local v2, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 178
    .local v0, dest:Landroid/graphics/Canvas;
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v8, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 180
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 181
    .local v3, xy:[I
    iget-object v4, p0, Lcom/android/internal/policy/impl/IconUtilities;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 183
    .local v1, mask:Landroid/graphics/Bitmap;
    aget v4, v3, v8

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    int-to-float v5, v5

    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorPressedPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 186
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 188
    iget-object v4, p0, Lcom/android/internal/policy/impl/IconUtilities;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    return-object v2

    .line 183
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/IconUtilities;->mGlowColorFocusedPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method


# virtual methods
.method public createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "src"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 92
    .local v1, scaled:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 94
    .local v0, result:Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v6, [I

    const v3, 0x101009c

    aput v3, v2, v5

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/IconUtilities;->createSelectedBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 96
    new-array v2, v6, [I

    const v3, 0x10100a7

    aput v3, v2, v5

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v1, v6}, Lcom/android/internal/policy/impl/IconUtilities;->createSelectedBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 98
    new-array v2, v5, [I

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 100
    iget v2, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/IconUtilities;->mIconTextureHeight:I

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 101
    return-object v0
.end method
