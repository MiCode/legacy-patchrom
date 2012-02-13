.class public Lcom/motorola/CameraF/View/IndicatorView;
.super Landroid/view/View;
.source "IndicatorView.java"


# static fields
.field private static final INDICATOR_COL_ACTIVE:I = -0x333334

.field private static final INDICATOR_COL_NORMAL:I = -0xeeeeef

.field private static INDICATOR_HEIGHT:I

.field private static INDICATOR_INTER:I

.field private static INDICATOR_R:I

.field private static INDICATOR_WIDTH:I

.field private static resize_done:Z


# instance fields
.field private leftOffset:I

.field private mBoxPaint:Landroid/graphics/Paint;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mHighlighted:I

.field private mIndicatorNum:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x7

    sput v0, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    .line 35
    sget v0, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_HEIGHT:I

    .line 36
    sget v0, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_WIDTH:I

    .line 37
    const/16 v0, 0x8

    sput v0, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_INTER:I

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/CameraF/View/IndicatorView;->resize_done:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    .line 46
    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mDisplayWidth:I

    .line 47
    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mDisplayHeight:I

    .line 62
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/IndicatorView;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    .line 46
    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mDisplayWidth:I

    .line 47
    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mDisplayHeight:I

    .line 57
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/IndicatorView;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    .line 46
    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mDisplayWidth:I

    .line 47
    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mDisplayHeight:I

    .line 52
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/IndicatorView;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private calcLeftOffset()V
    .locals 5

    .prologue
    .line 162
    iget v1, p0, Lcom/motorola/CameraF/View/IndicatorView;->mIndicatorNum:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 163
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/CameraF/View/IndicatorView;->leftOffset:I

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/IndicatorView;->invalidate()V

    .line 170
    return-void

    .line 165
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mIndicatorNum:I

    .line 166
    .local v0, tmp:I
    iget v1, p0, Lcom/motorola/CameraF/View/IndicatorView;->viewWidth:I

    sget v2, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_WIDTH:I

    mul-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int v3, v0, v3

    sget v4, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_INTER:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/motorola/CameraF/View/IndicatorView;->leftOffset:I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "tx"

    .prologue
    .line 87
    const/16 v0, 0x8

    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mIndicatorNum:I

    .line 88
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/IndicatorView;->setBackgroundColor(I)V

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mBoxPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mBoxPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mBoxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    return-void
.end method

.method private resize()V
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mDisplayHeight:I

    .line 67
    .local v0, min:I
    iget v1, p0, Lcom/motorola/CameraF/View/IndicatorView;->mDisplayWidth:I

    if-le v0, v1, :cond_0

    .line 68
    iget v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mDisplayWidth:I

    .line 69
    :cond_0
    sget v1, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    mul-int/2addr v1, v0

    div-int/lit16 v1, v1, 0x1e0

    sput v1, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    .line 70
    sget v1, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    mul-int/lit8 v1, v1, 0x2

    sput v1, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_HEIGHT:I

    .line 71
    sget v1, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    mul-int/lit8 v1, v1, 0x2

    sput v1, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_WIDTH:I

    .line 72
    sget v1, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_INTER:I

    mul-int/2addr v1, v0

    div-int/lit16 v1, v1, 0x1e0

    sput v1, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_INTER:I

    .line 73
    return-void
.end method


# virtual methods
.method public next()I
    .locals 3

    .prologue
    .line 113
    iget v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    iget v1, p0, Lcom/motorola/CameraF/View/IndicatorView;->mIndicatorNum:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 114
    iget v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    .line 119
    :goto_0
    iget v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 147
    iget v2, p0, Lcom/motorola/CameraF/View/IndicatorView;->mIndicatorNum:I

    .line 148
    .local v2, tmpAll:I
    const/4 v1, 0x0

    .line 150
    .local v1, left:I
    iget-object v3, p0, Lcom/motorola/CameraF/View/IndicatorView;->mBoxPaint:Landroid/graphics/Paint;

    const v4, -0xeeeeef

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 152
    iget v3, p0, Lcom/motorola/CameraF/View/IndicatorView;->leftOffset:I

    sget v4, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_WIDTH:I

    sget v5, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_INTER:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    add-int v1, v3, v4

    .line 153
    sget v3, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    sget v4, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    int-to-float v4, v4

    sget v5, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/motorola/CameraF/View/IndicatorView;->mBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    iget v3, p0, Lcom/motorola/CameraF/View/IndicatorView;->leftOffset:I

    iget v4, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    sget v5, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_WIDTH:I

    sget v6, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_INTER:I

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    add-int v1, v3, v4

    .line 157
    iget-object v3, p0, Lcom/motorola/CameraF/View/IndicatorView;->mBoxPaint:Landroid/graphics/Paint;

    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    sget v3, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    sget v4, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    int-to-float v4, v4

    sget v5, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_R:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/motorola/CameraF/View/IndicatorView;->mBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 137
    const/16 v0, 0x8

    .line 138
    .local v0, tmp:I
    sget v1, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_WIDTH:I

    mul-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int v2, v0, v2

    sget v2, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_INTER:I

    mul-int/lit8 v2, v2, 0x7

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/IndicatorView;->viewWidth:I

    .line 139
    iget v1, p0, Lcom/motorola/CameraF/View/IndicatorView;->viewWidth:I

    sget v2, Lcom/motorola/CameraF/View/IndicatorView;->INDICATOR_HEIGHT:I

    invoke-virtual {p0, v1, v2}, Lcom/motorola/CameraF/View/IndicatorView;->setMeasuredDimension(II)V

    .line 140
    invoke-direct {p0}, Lcom/motorola/CameraF/View/IndicatorView;->calcLeftOffset()V

    .line 141
    return-void
.end method

.method public previous()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 124
    iget v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    if-lez v0, :cond_0

    .line 125
    iget v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    .line 130
    :goto_0
    iget v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    return v0

    .line 127
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mIndicatorNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    goto :goto_0
.end method

.method public setDisplaySizeAndResize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 76
    iput p1, p0, Lcom/motorola/CameraF/View/IndicatorView;->mDisplayWidth:I

    .line 77
    iput p2, p0, Lcom/motorola/CameraF/View/IndicatorView;->mDisplayHeight:I

    .line 78
    sget-boolean v0, Lcom/motorola/CameraF/View/IndicatorView;->resize_done:Z

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/motorola/CameraF/View/IndicatorView;->resize()V

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/CameraF/View/IndicatorView;->resize_done:Z

    .line 82
    :cond_0
    return-void
.end method

.method public setHighlighted(I)V
    .locals 1
    .parameter "high"

    .prologue
    .line 105
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/View/IndicatorView;->mIndicatorNum:I

    if-ge p1, v0, :cond_0

    .line 106
    iput p1, p0, Lcom/motorola/CameraF/View/IndicatorView;->mHighlighted:I

    .line 107
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/IndicatorView;->invalidate()V

    .line 109
    :cond_0
    return-void
.end method

.method public setIndicatorNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 95
    if-lez p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    .line 96
    iput p1, p0, Lcom/motorola/CameraF/View/IndicatorView;->mIndicatorNum:I

    .line 101
    invoke-direct {p0}, Lcom/motorola/CameraF/View/IndicatorView;->calcLeftOffset()V

    .line 102
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IndicatorView: wrong indicator number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
