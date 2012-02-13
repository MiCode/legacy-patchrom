.class public Lcom/motorola/CameraF/View/PanoramaIndicatorView;
.super Landroid/view/View;
.source "PanoramaIndicatorView.java"


# static fields
.field private static final COLOR_LAST_IMAGE_RECT:I = -0x55373738

.field private static final COLOR_TEXT:I = -0x1

.field private static final IMAGE_PADDING_BOTTOM:F = 5.0f

.field private static final IMAGE_PADDING_LEFT:F = 6.0f

.field private static final IMAGE_PADDING_RIGHT:F = 6.0f

.field private static final IMAGE_PADDING_TOP:F = 5.0f

.field private static final INDICATOR_BOX_PADDING:F = 10.0f

.field private static final INDICATOR_MAIN_BOX_LEFT:F = 10.0f

.field private static final INDICATOR_MAIN_BOX_TOP:F = 35.0f

.field private static final STROKE_WIDTH_BOX:F = 1.0f

.field public static final TAG:Ljava/lang/String; = "PanoramaIndicatorView"

.field private static final TEXT_SIZE:F = 10.0f


# instance fields
.field private DISTANCE_BETWEEN_BOXES:F

.field private INDICATOR_BOX_HEIGHT:F

.field private INDICATOR_BOX_WIDTH:F

.field private X_DISTANCE_TRANSLATE_REPLACE:F

.field private Y_DISTANCE_TRANSLATE_REPLACE:F

.field private mArrowImage:Landroid/graphics/Bitmap;

.field private mArrowX1:F

.field private mArrowX2:F

.field private mArrowX3:F

.field private mArrowY1:F

.field private mArrowY2:F

.field private mArrowY3:F

.field private mCurrStitchMode:I

.field private mCurrTick:I

.field private mFullSizeRect:Landroid/graphics/RectF;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mLastPicture:Landroid/graphics/Bitmap;

.field private mMainBox:Landroid/graphics/RectF;

.field private mNewPicture:Landroid/graphics/Bitmap;

.field private mNextPosBox:Landroid/graphics/RectF;

.field private mNumShotTaken:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScaleDeltaBottom:F

.field private mScaleDeltaLeft:F

.field private mScaleDeltaRight:F

.field private mScaleDeltaTop:F

.field private mScaleDuration:I

.field private mText:Ljava/lang/String;

.field private mTextCenterPosX:F

.field private mTextCenterPosY:F

.field private mTranslateDeltaOutScreen:F

.field private mTranslateDeltaReplace:F

.field private mTranslateDuration:I

.field private mViewfinderDx:F

.field private mViewfinderDxLastTime:F

.field private mViewfinderDy:F

.field private mViewfinderDyLastTime:F

.field private mViewfinderMatched:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0xf

    const/high16 v5, 0x4120

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 64
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    .line 65
    const/high16 v0, 0x4270

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    .line 66
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    .line 72
    iget v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    .line 73
    iget v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    .line 87
    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mWidth:I

    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHeight:I

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 89
    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    .line 90
    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mText:Ljava/lang/String;

    .line 104
    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    .line 105
    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mArrowImage:Landroid/graphics/Bitmap;

    .line 108
    iput v6, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    iput v6, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    .line 109
    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNumShotTaken:I

    .line 110
    iput-boolean v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    .line 111
    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    .line 112
    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v6, 0xf

    const/high16 v5, 0x4120

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    .line 65
    const/high16 v0, 0x4270

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    .line 66
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    .line 72
    iget v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    .line 73
    iget v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    .line 87
    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mWidth:I

    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHeight:I

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 89
    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    .line 90
    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mText:Ljava/lang/String;

    .line 104
    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    .line 105
    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mArrowImage:Landroid/graphics/Bitmap;

    .line 108
    iput v6, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    iput v6, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    .line 109
    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNumShotTaken:I

    .line 110
    iput-boolean v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    .line 111
    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    .line 112
    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v6, 0xf

    const/high16 v5, 0x4120

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    .line 65
    const/high16 v0, 0x4270

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    .line 66
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    .line 72
    iget v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    .line 73
    iget v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    .line 87
    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mWidth:I

    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHeight:I

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 89
    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    .line 90
    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mText:Ljava/lang/String;

    .line 104
    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    .line 105
    iput-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mArrowImage:Landroid/graphics/Bitmap;

    .line 108
    iput v6, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    iput v6, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    .line 109
    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNumShotTaken:I

    .line 110
    iput-boolean v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    .line 111
    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    .line 112
    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    .line 138
    return-void
.end method

.method private drawNextPosBox(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x55373738

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 381
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 388
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 389
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private drawRectBox(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2
    .parameter "canvas"
    .parameter "rect"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 612
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 613
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 614
    return-void
.end method

.method private draw_Normal(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, -0x1

    const v2, -0x55373738

    const/high16 v5, 0x40c0

    const/high16 v4, 0x40a0

    const/high16 v3, 0x3f80

    .line 617
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 618
    .local v0, tempRect:Landroid/graphics/RectF;
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNumShotTaken:I

    if-nez v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 620
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 621
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 622
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->drawRectBox(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 659
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->invalidate()V

    .line 661
    return-void

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 626
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 627
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 628
    iget-boolean v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-eqz v1, :cond_3

    .line 629
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 633
    :goto_1
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 634
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 635
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 637
    iget-boolean v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-nez v1, :cond_2

    .line 638
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 639
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDx:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 640
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 642
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 643
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 646
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 647
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 648
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 649
    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 650
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 651
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 653
    iget-boolean v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-nez v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 655
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDx:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 656
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mArrowImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 631
    :cond_3
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method private draw_Scaling(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x40c0

    const/high16 v3, 0x40a0

    const-string v6, ", "

    .line 443
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 446
    .local v0, tempRectF:Landroid/graphics/RectF;
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNumShotTaken:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 455
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 456
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 457
    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 458
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 459
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 461
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->drawNextPosBox(Landroid/graphics/Canvas;)V

    .line 515
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    if-ge v1, v2, :cond_3

    .line 516
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 517
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    int-to-float v2, v2

    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaLeft:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 518
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    int-to-float v2, v2

    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaTop:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 519
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    int-to-float v2, v2

    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaRight:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 520
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    int-to-float v2, v2

    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaBottom:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 521
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 522
    const-string v1, "PanoramaIndicatorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PanoramaIndicatorView draw_scaling tempRectF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 524
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 605
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->invalidate()V

    .line 606
    return-void

    .line 526
    :cond_3
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    if-ne v1, v2, :cond_2

    .line 528
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNumShotTaken:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    .line 529
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 530
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 533
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const v2, -0x55373738

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 534
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 535
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 537
    invoke-direct {p0, p1, v0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->drawRectBox(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 539
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 540
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 541
    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 542
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 543
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 546
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->endAnimation()V

    .line 547
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 549
    iput v7, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDy:F

    iput v7, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 550
    iput v7, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDyLastTime:F

    iput v7, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDxLastTime:F

    goto :goto_0

    .line 552
    :cond_5
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 554
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 555
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 556
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 557
    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 558
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 559
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 582
    :cond_6
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 584
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 586
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 587
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 588
    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 589
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 590
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private draw_Translating(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40c0

    const/high16 v6, 0x40a0

    const/4 v5, 0x0

    .line 392
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 393
    .local v0, outRectF:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 395
    .local v1, replaceRectF:Landroid/graphics/RectF;
    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    iget v4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    sub-int v2, v3, v4

    .line 397
    .local v2, translateTickPassed:I
    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    packed-switch v3, :pswitch_data_0

    .line 416
    :goto_0
    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    packed-switch v3, :pswitch_data_1

    .line 427
    :goto_1
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->drawRectBox(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 429
    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v7

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 430
    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v7

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 431
    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 432
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v6

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 433
    iget-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 434
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->invalidate()V

    .line 435
    return-void

    .line 399
    :pswitch_1
    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaOutScreen:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 400
    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaReplace:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 403
    :pswitch_2
    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaReplace:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 406
    :pswitch_3
    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaOutScreen:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-virtual {v0, v5, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 407
    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaReplace:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 410
    :pswitch_4
    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaReplace:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-virtual {v1, v5, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 419
    :pswitch_5
    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v7

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 420
    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v7

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 421
    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 422
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v6

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 424
    iget-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 416
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private initPositions()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    const/high16 v5, 0x4120

    .line 236
    const v0, 0x7f0200cf

    .line 238
    .local v0, resID:I
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    if-nez v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 240
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTextCenterPosX:F

    .line 241
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v5

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTextCenterPosY:F

    .line 242
    const v0, 0x7f0200cf

    .line 269
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mArrowImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mArrowImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mArrowImage:Landroid/graphics/Bitmap;

    .line 271
    return-void

    .line 244
    :cond_2
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 245
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 246
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTextCenterPosX:F

    .line 247
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v5

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTextCenterPosY:F

    .line 249
    const v0, 0x7f0200ce

    goto :goto_0

    .line 251
    :cond_3
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 252
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 254
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 256
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTextCenterPosX:F

    .line 257
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v5

    const/high16 v2, 0x40a0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTextCenterPosY:F

    .line 259
    const v0, 0x7f0200d0

    goto :goto_0

    .line 261
    :cond_4
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 262
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 264
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTextCenterPosX:F

    .line 265
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v5

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTextCenterPosY:F

    .line 267
    const v0, 0x7f0200cc

    goto/16 :goto_0
.end method

.method private isRightOrDownDirection()Z
    .locals 2

    .prologue
    .line 439
    iget v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTickDurations(II)V
    .locals 3
    .parameter "scaleDuration"
    .parameter "translateDuration"

    .prologue
    .line 274
    iput p1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    .line 275
    iput p2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    .line 277
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    .line 278
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 280
    .local v0, scaleTo:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 282
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaLeft:F

    .line 283
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaTop:F

    .line 284
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaRight:F

    .line 285
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaBottom:F

    .line 287
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    packed-switch v1, :pswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 290
    :pswitch_0
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaReplace:F

    .line 291
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaOutScreen:F

    .line 292
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaOutScreen:F

    neg-float v1, v1

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaOutScreen:F

    goto :goto_0

    .line 297
    :pswitch_1
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaReplace:F

    .line 298
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaOutScreen:F

    goto :goto_0

    .line 303
    :pswitch_2
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaReplace:F

    .line 304
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaOutScreen:F

    .line 305
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaOutScreen:F

    neg-float v1, v1

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaOutScreen:F

    goto :goto_0

    .line 310
    :pswitch_3
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaReplace:F

    .line 311
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDeltaOutScreen:F

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public endAnimation()V
    .locals 2

    .prologue
    .line 664
    iget v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    .line 665
    return-void
.end method

.method public getTouchAreaStitchModeDialog()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 668
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public init(ILandroid/os/Handler;II)V
    .locals 7
    .parameter "stitchMode"
    .parameter "handler"
    .parameter "orientation"
    .parameter "screenHeight"

    .prologue
    const v2, 0x7f0200cf

    const/high16 v5, 0x4120

    const-string v6, "PanoramaIndicatorView"

    .line 184
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "PanoramaIndicatorView"

    const-string v1, " init() ENTER"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iput-object p2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHandler:Landroid/os/Handler;

    .line 186
    iput p3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mOrientation:I

    .line 187
    move v0, p1

    .line 188
    .local v0, index:I
    if-ltz p1, :cond_1

    const/4 v1, 0x3

    if-le p1, v1, :cond_2

    .line 190
    :cond_1
    const/4 v0, 0x0

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    .line 194
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    .line 196
    :cond_3
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "PanoramaIndicatorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INDICATOR_BOX_WIDTH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INDICATOR_BOX_HEIGHT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_4
    const/high16 v1, 0x4110

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    .line 199
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    .line 200
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    .line 202
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    const-string v1, "PanoramaIndicatorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screenHeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_5
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHeight:I

    if-lez v1, :cond_6

    iget p4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHeight:I

    .line 204
    :cond_6
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p4

    sub-float/2addr v2, v5

    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->INDICATOR_BOX_WIDTH:F

    add-float/2addr v3, v5

    int-to-float v4, p4

    sub-float/2addr v4, v5

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    .line 206
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    .line 208
    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    .line 209
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->reset()V

    .line 210
    invoke-direct {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->initPositions()V

    .line 211
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    const-string v1, "PanoramaIndicatorView"

    const-string v1, " init() EXIT"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v8, 0x40c0

    const/high16 v7, 0x40a0

    const/4 v6, 0x0

    .line 672
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 674
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 678
    .local v0, tempRectF:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 679
    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 680
    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 681
    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 682
    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mText:Ljava/lang/String;

    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTextCenterPosX:F

    iget v4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTextCenterPosY:F

    iget-object v5, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 683
    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mTranslateDuration:I

    add-int v1, v2, v3

    .line 685
    .local v1, totalTick:I
    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    if-le v2, v1, :cond_2

    .line 687
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->draw_Normal(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 691
    :cond_2
    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    .line 692
    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    if-gt v2, v3, :cond_3

    .line 693
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->draw_Scaling(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 695
    :cond_3
    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    if-ge v2, v1, :cond_4

    .line 696
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->draw_Translating(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 697
    :cond_4
    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    if-ne v2, v1, :cond_0

    .line 699
    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 700
    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v8

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 701
    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v8

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 702
    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v7

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 703
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v7

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 704
    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 705
    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v2}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->drawRectBox(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 706
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->endAnimation()V

    .line 707
    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 709
    iput v6, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDy:F

    iput v6, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 710
    iput v6, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDyLastTime:F

    iput v6, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDxLastTime:F

    .line 711
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->invalidate()V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const-string v2, "PanoramaIndicatorView"

    .line 142
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "PanoramaIndicatorView"

    const-string v0, " onFinishInflate() ENTER"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 146
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 150
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->setWillNotDraw(Z)V

    .line 152
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "PanoramaIndicatorView"

    const-string v0, " onFinishInflate() EXIT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 155
    return-void
.end method

.method public onNewPictureTaken(ILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter "shotNum"
    .parameter "newPic"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 317
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    .line 319
    iput-object p2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    .line 320
    iput p1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNumShotTaken:I

    .line 322
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaLeft:F

    .line 324
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaTop:F

    .line 325
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaRight:F

    .line 326
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaBottom:F

    .line 336
    :goto_0
    iput v4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrTick:I

    .line 337
    iget-boolean v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    .line 339
    :cond_1
    iput v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDy:F

    iput v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 340
    iput v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDyLastTime:F

    iput v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDxLastTime:F

    .line 341
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->invalidate()V

    .line 342
    return-void

    .line 328
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mMainBox:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 330
    .local v0, scaleTo:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 331
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaLeft:F

    .line 332
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaTop:F

    .line 333
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaRight:F

    .line 334
    iget-object v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mScaleDeltaBottom:F

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 158
    iput p1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mWidth:I

    .line 159
    iput p2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHeight:I

    .line 162
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const-string v6, "PanoramaIndicatorView"

    const-string v5, ", "

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 167
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 168
    .local v2, y:F
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 169
    const-string v3, "PanoramaIndicatorView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PanoramaIndicatorView Touch Event checking for Panorama"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->getTouchAreaStitchModeDialog()Landroid/graphics/RectF;

    move-result-object v0

    .line 171
    .local v0, validArea:Landroid/graphics/RectF;
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    .line 172
    const-string v3, "PanoramaIndicatorView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch Event checking for Panorama 1 Valid area"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    .line 175
    const-string v3, "PanoramaIndicatorView"

    const-string v3, "PanoramaIndicatorView Touch Event :  Show Panorama Dialog"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2
    iget-object v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    const/4 v3, 0x1

    .line 179
    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onViewfinderInfo(IZ)V
    .locals 5
    .parameter "overlapPercent"
    .parameter "matched"

    .prologue
    const/16 v1, 0x64

    const/high16 v4, 0x42c8

    const/4 v3, 0x0

    .line 345
    if-ltz p1, :cond_0

    if-le p1, v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    sub-int v0, v1, p1

    .line 348
    .local v0, movedPercent:I
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDx:F

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDxLastTime:F

    .line 349
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDy:F

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDyLastTime:F

    .line 351
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mCurrStitchMode:I

    packed-switch v1, :pswitch_data_0

    .line 371
    :goto_1
    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-nez v1, :cond_2

    .line 372
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    .line 373
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->invalidate()V

    goto :goto_0

    .line 353
    :pswitch_0
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 354
    iput v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDy:F

    goto :goto_1

    .line 357
    :pswitch_1
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 358
    iput v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDy:F

    goto :goto_1

    .line 362
    :pswitch_2
    iput v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 363
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDy:F

    goto :goto_1

    .line 366
    :pswitch_3
    iput v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 367
    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mViewfinderDy:F

    goto :goto_1

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mText:Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNumShotTaken:I

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    .line 227
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->endAnimation()V

    .line 228
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->invalidate()V

    .line 229
    return-void
.end method

.method public setScreenSize(II)V
    .locals 7
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v6, 0x6

    const/high16 v5, 0x4000

    .line 215
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "PanoramaIndicatorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenSize w, h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mWidth:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHeight:I

    sub-int/2addr v2, p2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mWidth:I

    sub-int/2addr v3, p1

    int-to-float v3, v3

    div-float/2addr v3, v5

    int-to-float v4, p1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mHeight:I

    sub-int/2addr v4, p2

    int-to-float v4, v4

    div-float/2addr v4, v5

    int-to-float v5, p2

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 219
    invoke-direct {p0, v6, v6}, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->setTickDurations(II)V

    .line 220
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/motorola/CameraF/View/PanoramaIndicatorView;->mText:Ljava/lang/String;

    .line 233
    return-void
.end method
