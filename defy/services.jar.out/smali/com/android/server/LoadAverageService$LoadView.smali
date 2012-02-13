.class Lcom/android/server/LoadAverageService$LoadView;
.super Landroid/view/View;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadView"
.end annotation


# instance fields
.field private mAddedPaint:Landroid/graphics/Paint;

.field private mAscent:F

.field private mFH:I

.field private mHandler:Landroid/os/Handler;

.field private mIrqPaint:Landroid/graphics/Paint;

.field private mLoadPaint:Landroid/graphics/Paint;

.field private mNeededHeight:I

.field private mNeededWidth:I

.field private mRemovedPaint:Landroid/graphics/Paint;

.field private mShadow2Paint:Landroid/graphics/Paint;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private final mStats:Lcom/android/server/LoadAverageService$Stats;

.field private mSystemPaint:Landroid/graphics/Paint;

.field private mUserPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/server/LoadAverageService;


# direct methods
.method constructor <init>(Lcom/android/server/LoadAverageService;Landroid/content/Context;)V
    .locals 10
    .parameter
    .parameter "c"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x80

    const/4 v7, 0x0

    const/16 v6, 0xff

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/android/server/LoadAverageService$LoadView;->this$0:Lcom/android/server/LoadAverageService;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/LoadAverageService$LoadView$1;

    invoke-direct {v1, p0}, Lcom/android/server/LoadAverageService$LoadView$1;-><init>(Lcom/android/server/LoadAverageService$LoadView;)V

    iput-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/LoadAverageService$LoadView;->setPadding(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v8, v6, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v6, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4080

    const/high16 v3, -0x100

    invoke-virtual {v1, v2, v7, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    const/high16 v3, -0x100

    invoke-virtual {v1, v2, v7, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v5, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    const/high16 v3, -0x100

    invoke-virtual {v1, v2, v7, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v6, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    const/high16 v3, -0x100

    invoke-virtual {v1, v2, v7, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v5, v6, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    const/high16 v3, -0x100

    invoke-virtual {v1, v2, v7, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iput v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mAscent:F

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v0

    .local v0, descent:F
    iget v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mAscent:F

    sub-float v1, v0, v1

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mFH:I

    new-instance v1, Lcom/android/server/LoadAverageService$Stats;

    iget-object v2, p0, Lcom/android/server/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Lcom/android/server/LoadAverageService$Stats;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mStats:Lcom/android/server/LoadAverageService$Stats;

    iget-object v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mStats:Lcom/android/server/LoadAverageService$Stats;

    invoke-virtual {v1}, Lcom/android/server/LoadAverageService$Stats;->init()V

    invoke-virtual {p0}, Lcom/android/server/LoadAverageService$LoadView;->updateDisplay()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LoadAverageService$LoadView;)Lcom/android/server/LoadAverageService$Stats;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LoadAverageService$LoadView;->mStats:Lcom/android/server/LoadAverageService$Stats;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/server/LoadAverageService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/server/LoadAverageService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 31
    .parameter "canvas"

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/LoadAverageService$LoadView;->getWidth()I

    move-result v12

    .local v12, W:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mStats:Lcom/android/server/LoadAverageService$Stats;

    move-object/from16 v22, v0

    .local v22, stats:Lcom/android/server/LoadAverageService$Stats;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/LoadAverageService$Stats;->getLastUserTime()I

    move-result v27

    .local v27, userTime:I
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/LoadAverageService$Stats;->getLastSystemTime()I

    move-result v23

    .local v23, systemTime:I
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/LoadAverageService$Stats;->getLastIoWaitTime()I

    move-result v16

    .local v16, iowaitTime:I
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/LoadAverageService$Stats;->getLastIrqTime()I

    move-result v17

    .local v17, irqTime:I
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/LoadAverageService$Stats;->getLastSoftIrqTime()I

    move-result v20

    .local v20, softIrqTime:I
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/LoadAverageService$Stats;->getLastIdleTime()I

    move-result v15

    .local v15, idleTime:I
    add-int v5, v27, v23

    add-int v5, v5, v16

    add-int v5, v5, v17

    add-int v5, v5, v20

    add-int v26, v5, v15

    .local v26, totalTime:I
    if-nez v26, :cond_1

    :cond_0
    return-void

    :cond_1
    mul-int v5, v27, v12

    div-int v28, v5, v26

    .local v28, userW:I
    mul-int v5, v23, v12

    div-int v24, v5, v26

    .local v24, systemW:I
    add-int v5, v16, v17

    add-int v5, v5, v20

    mul-int/2addr v5, v12

    div-int v18, v5, v26

    .local v18, irqW:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    move v5, v0

    sub-int v29, v12, v5

    .local v29, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingTop:I

    move v5, v0

    add-int/lit8 v25, v5, 0x2

    .local v25, top:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mFH:I

    move v6, v0

    add-int/2addr v5, v6

    const/4 v6, 0x2

    sub-int v13, v5, v6

    .local v13, bottom:I
    if-lez v18, :cond_2

    sub-int v5, v29, v18

    int-to-float v6, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move v8, v0

    int-to-float v9, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v29, v29, v18

    :cond_2
    if-lez v24, :cond_3

    sub-int v5, v29, v24

    int-to-float v6, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move v8, v0

    int-to-float v9, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v29, v29, v24

    :cond_3
    if-lez v28, :cond_4

    sub-int v5, v29, v28

    int-to-float v6, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move v8, v0

    int-to-float v9, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v29, v29, v28

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mAscent:F

    move v6, v0

    float-to-int v6, v6

    sub-int v30, v5, v6

    .local v30, y:I
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/LoadAverageService$Stats;->mLoadText:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    move v6, v0

    sub-int v6, v12, v6

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/LoadAverageService$Stats;->mLoadWidth:I

    move v7, v0

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x1

    sub-int v7, v30, v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/LoadAverageService$Stats;->mLoadText:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    move v6, v0

    sub-int v6, v12, v6

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/LoadAverageService$Stats;->mLoadWidth:I

    move v7, v0

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-int/lit8 v7, v30, 0x1

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/LoadAverageService$Stats;->mLoadText:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    move v6, v0

    sub-int v6, v12, v6

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/LoadAverageService$Stats;->mLoadWidth:I

    move v7, v0

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    const/4 v7, 0x1

    sub-int v7, v30, v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/LoadAverageService$Stats;->mLoadText:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    move v6, v0

    sub-int v6, v12, v6

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/LoadAverageService$Stats;->mLoadWidth:I

    move v7, v0

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    add-int/lit8 v7, v30, 0x1

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/LoadAverageService$Stats;->mLoadText:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    move v6, v0

    sub-int v6, v12, v6

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/LoadAverageService$Stats;->mLoadWidth:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move/from16 v0, v30

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/LoadAverageService$Stats;->countWorkingStats()I

    move-result v11

    .local v11, N:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v11, :cond_0

    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/LoadAverageService$Stats;->getWorkingStats(I)Lcom/android/server/ProcessStats$Stats;

    move-result-object v21

    .local v21, st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mFH:I

    move v5, v0

    add-int v30, v30, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mFH:I

    move v5, v0

    add-int v25, v25, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mFH:I

    move v5, v0

    add-int/2addr v13, v5

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    move v5, v0

    mul-int/2addr v5, v12

    div-int v28, v5, v26

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    move v5, v0

    mul-int/2addr v5, v12

    div-int v24, v5, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    move v5, v0

    sub-int v29, v12, v5

    if-lez v24, :cond_5

    sub-int v5, v29, v24

    int-to-float v6, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move v8, v0

    int-to-float v9, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v29, v29, v24

    :cond_5
    if-lez v28, :cond_6

    sub-int v5, v29, v28

    int-to-float v6, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move v8, v0

    int-to-float v9, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v29, v29, v28

    :cond_6
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    move v6, v0

    sub-int v6, v12, v6

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    move v7, v0

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x1

    sub-int v7, v30, v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    move v6, v0

    sub-int v6, v12, v6

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    move v7, v0

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-int/lit8 v7, v30, 0x1

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    move v6, v0

    sub-int v6, v12, v6

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    move v7, v0

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    const/4 v7, 0x1

    sub-int v7, v30, v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    move v6, v0

    sub-int v6, v12, v6

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    move v7, v0

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    add-int/lit8 v7, v30, 0x1

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    .local v19, p:Landroid/graphics/Paint;
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->added:Z

    move v5, v0

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    :cond_7
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v5, v0

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    :cond_8
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    move v6, v0

    sub-int v6, v12, v6

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move/from16 v0, v30

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpect"
    .parameter "heightMeasureSpec"

    .prologue
    iget v0, p0, Lcom/android/server/LoadAverageService$LoadView;->mNeededWidth:I

    iget v1, p0, Lcom/android/server/LoadAverageService$LoadView;->mNeededHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/LoadAverageService$LoadView;->setMeasuredDimension(II)V

    return-void
.end method

.method updateDisplay()V
    .locals 10

    .prologue
    iget-object v6, p0, Lcom/android/server/LoadAverageService$LoadView;->mStats:Lcom/android/server/LoadAverageService$Stats;

    .local v6, stats:Lcom/android/server/LoadAverageService$Stats;
    invoke-virtual {v6}, Lcom/android/server/LoadAverageService$Stats;->countWorkingStats()I

    move-result v0

    .local v0, NW:I
    iget v2, v6, Lcom/android/server/LoadAverageService$Stats;->mLoadWidth:I

    .local v2, maxWidth:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v6, v1}, Lcom/android/server/LoadAverageService$Stats;->getWorkingStats(I)Lcom/android/server/ProcessStats$Stats;

    move-result-object v5

    .local v5, st:Lcom/android/server/ProcessStats$Stats;
    iget v7, v5, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    if-le v7, v2, :cond_0

    iget v2, v5, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_1
    iget v7, p0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingLeft:I

    iget v8, p0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingRight:I

    add-int/2addr v7, v8

    add-int v4, v7, v2

    .local v4, neededWidth:I
    iget v7, p0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingTop:I

    iget v8, p0, Lcom/android/server/LoadAverageService$LoadView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/server/LoadAverageService$LoadView;->mFH:I

    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v8, v9

    add-int v3, v7, v8

    .local v3, neededHeight:I
    iget v7, p0, Lcom/android/server/LoadAverageService$LoadView;->mNeededWidth:I

    if-ne v4, v7, :cond_2

    iget v7, p0, Lcom/android/server/LoadAverageService$LoadView;->mNeededHeight:I

    if-eq v3, v7, :cond_3

    :cond_2
    iput v4, p0, Lcom/android/server/LoadAverageService$LoadView;->mNeededWidth:I

    iput v3, p0, Lcom/android/server/LoadAverageService$LoadView;->mNeededHeight:I

    invoke-virtual {p0}, Lcom/android/server/LoadAverageService$LoadView;->requestLayout()V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/LoadAverageService$LoadView;->invalidate()V

    goto :goto_1
.end method
