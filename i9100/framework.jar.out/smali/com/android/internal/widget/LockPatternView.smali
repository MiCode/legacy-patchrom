.class public Lcom/android/internal/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$1;,
        Lcom/android/internal/widget/LockPatternView$SavedState;,
        Lcom/android/internal/widget/LockPatternView$OnPatternListener;,
        Lcom/android/internal/widget/LockPatternView$DisplayMode;,
        Lcom/android/internal/widget/LockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final DEFAULT_VIBE_PATTERN:[J = null

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field static final STATUS_BAR_HEIGHT:I = 0x19


# instance fields
.field private mAnimatingPeriodStart:J

.field private mAspect:I

.field private mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

.field private mBitmapArrowRedUp:Landroid/graphics/Bitmap;

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mTactileFeedbackEnabled:Z

.field private mVibePattern:[J

.field private vibe:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/LockPatternView;->DEFAULT_VIBE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x3

    const/high16 v6, -0x4080

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 245
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mDrawingProfilingStarted:Z

    .line 65
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 87
    filled-new-array {v7, v7}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 94
    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 95
    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 99
    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 100
    iput-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 101
    iput-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 102
    iput-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mTactileFeedbackEnabled:Z

    .line 103
    iput-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 105
    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mDiameterFactor:F

    .line 106
    const v2, 0x3f333333

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    .line 120
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 121
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 246
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->vibe:Landroid/os/Vibrator;

    .line 248
    sget-object v2, Lcom/android/internal/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 250
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, aspect:Ljava/lang/String;
    const-string/jumbo v2, "square"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iput v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    .line 262
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/LockPatternView;->setClickable(Z)V

    .line 264
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 265
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 266
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 268
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 270
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 273
    const v2, 0x10800d4

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 274
    const v2, 0x10800d5

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 275
    const v2, 0x10801f6

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 276
    const v2, 0x10801f7

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 277
    const v2, 0x10801f8

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 279
    const v2, 0x10801f4

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 280
    const v2, 0x10801f5

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 283
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    .line 284
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    .line 287
    const v2, 0x1070017

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->loadVibratePattern(I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mVibePattern:[J

    .line 288
    return-void

    .line 254
    :cond_0
    const-string v2, "lock_width"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 256
    :cond_1
    const-string v2, "lock_height"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 259
    :cond_2
    iput v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto/16 :goto_0
.end method

.method private addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3
    .parameter "newCell"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 516
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 520
    :cond_0
    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 525
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternView;->getRowHit(F)I

    move-result v1

    .line 526
    .local v1, rowHit:I
    if-gez v1, :cond_0

    move-object v2, v3

    .line 537
    :goto_0
    return-object v2

    .line 529
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getColumnHit(F)I

    move-result v0

    .line 530
    .local v0, columnHit:I
    if-gez v0, :cond_1

    move-object v2, v3

    .line 531
    goto :goto_0

    .line 534
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v1

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    move-object v2, v3

    .line 535
    goto :goto_0

    .line 537
    :cond_2
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 415
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 416
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 417
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 415
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 476
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 477
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 480
    const/4 v4, 0x0

    .line 481
    .local v4, fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 482
    .local v7, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 483
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 484
    .local v6, lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v9, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int v2, v8, v9

    .line 485
    .local v2, dRow:I
    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v9, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int v1, v8, v9

    .line 487
    .local v1, dColumn:I
    iget v5, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 488
    .local v5, fillInRow:I
    iget v3, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 490
    .local v3, fillInColumn:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v10, :cond_0

    .line 491
    iget v8, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-lez v2, :cond_5

    move v9, v10

    :goto_0
    add-int v5, v8, v9

    .line 494
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v10, :cond_1

    .line 495
    iget v8, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-lez v1, :cond_6

    move v9, v10

    :goto_1
    add-int v3, v8, v9

    .line 498
    :cond_1
    invoke-static {v5, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .line 501
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_2
    if-eqz v4, :cond_3

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v9, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v8, v8, v9

    iget v9, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v8, v8, v9

    if-nez v8, :cond_3

    .line 503
    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 505
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 506
    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mTactileFeedbackEnabled:Z

    if-eqz v8, :cond_4

    .line 507
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->vibe:Landroid/os/Vibrator;

    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView;->mVibePattern:[J

    invoke-virtual {v8, v9, v11}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_4
    move-object v8, v0

    .line 511
    .end local v4           #fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :goto_2
    return-object v8

    .restart local v1       #dColumn:I
    .restart local v2       #dRow:I
    .restart local v3       #fillInColumn:I
    .restart local v4       #fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v5       #fillInRow:I
    .restart local v6       #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v7       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_5
    move v9, v11

    .line 491
    goto :goto_0

    :cond_6
    move v9, v11

    .line 495
    goto :goto_1

    .line 511
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v4           #fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_7
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 21
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v17, 0x1

    move/from16 v10, v17

    .line 932
    .local v10, green:Z
    :goto_0
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move v9, v0

    .line 933
    .local v9, endRow:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move v15, v0

    .line 934
    .local v15, startRow:I
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move v8, v0

    .line 935
    .local v8, endColumn:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move v14, v0

    .line 938
    .local v14, startColumn:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v12, v17, 0x2

    .line 939
    .local v12, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v13, v17, 0x2

    .line 944
    .local v13, offsetY:I
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v5, v17

    .line 945
    .local v5, arrow:Landroid/graphics/Bitmap;
    :goto_1
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 946
    .local v11, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 947
    .local v7, cellWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 950
    .local v6, cellHeight:I
    sub-int v17, v9, v15

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-int v19, v8, v14

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v16, v0

    .line 952
    .local v16, theta:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42b4

    add-float v4, v17, v18

    .line 955
    .local v4, angle:F
    move v0, v12

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, p2

    move v0, v13

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, p3

    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 956
    move v0, v7

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move-object v0, v11

    move v1, v4

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 957
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v7, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    const/16 v18, 0x0

    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v11

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 959
    return-void

    .line 930
    .end local v4           #angle:F
    .end local v5           #arrow:Landroid/graphics/Bitmap;
    .end local v6           #cellHeight:I
    .end local v7           #cellWidth:I
    .end local v8           #endColumn:I
    .end local v9           #endRow:I
    .end local v10           #green:Z
    .end local v11           #matrix:Landroid/graphics/Matrix;
    .end local v12           #offsetX:I
    .end local v13           #offsetY:I
    .end local v14           #startColumn:I
    .end local v15           #startRow:I
    .end local v16           #theta:F
    :cond_0
    const/16 v17, 0x0

    move/from16 v10, v17

    goto/16 :goto_0

    .line 944
    .restart local v8       #endColumn:I
    .restart local v9       #endRow:I
    .restart local v10       #green:Z
    .restart local v12       #offsetX:I
    .restart local v13       #offsetY:I
    .restart local v14       #startColumn:I
    .restart local v15       #startRow:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v5, v17

    goto/16 :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 11
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "partOfPattern"

    .prologue
    const/high16 v10, 0x4000

    .line 971
    if-eqz p4, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v8, v9, :cond_1

    .line 973
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 974
    .local v4, outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 992
    .local v1, innerCircle:Landroid/graphics/Bitmap;
    :goto_0
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    .line 993
    .local v7, width:I
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    .line 995
    .local v0, height:I
    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 996
    .local v6, squareWidth:F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 998
    .local v5, squareHeight:F
    int-to-float v8, v7

    sub-float v8, v6, v8

    div-float/2addr v8, v10

    float-to-int v2, v8

    .line 999
    .local v2, offsetX:I
    int-to-float v8, v0

    sub-float v8, v5, v8

    div-float/2addr v8, v10

    float-to-int v3, v8

    .line 1001
    .local v3, offsetY:I
    add-int v8, p2, v2

    int-to-float v8, v8

    add-int v9, p3, v3

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1002
    add-int v8, p2, v2

    int-to-float v8, v8

    add-int v9, p3, v3

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1003
    return-void

    .line 975
    .end local v0           #height:I
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v2           #offsetX:I
    .end local v3           #offsetY:I
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    .end local v5           #squareHeight:F
    .end local v6           #squareWidth:F
    .end local v7           #width:I
    :cond_1
    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v8, :cond_2

    .line 977
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 978
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 979
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v8, v9, :cond_3

    .line 981
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 982
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 983
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v8, v9, :cond_4

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v8, v9, :cond_5

    .line 986
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 987
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 989
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_5
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unknown display mode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private drawMoveEvent(FF)V
    .locals 28
    .parameter "x"
    .parameter "y"

    .prologue
    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 672
    .local v17, patternSizePreHitDetect:I
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v9

    .line 673
    .local v9, hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 675
    .local v16, patternSize:I
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 676
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 681
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move/from16 v24, v0

    sub-float v24, p1, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 682
    .local v6, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move/from16 v24, v0

    sub-float v24, p2, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 683
    .local v7, dy:F
    add-float v24, v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    const v26, 0x3c23d70a

    mul-float v25, v25, v26

    cmpl-float v24, v24, v25

    if-lez v24, :cond_2

    .line 684
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move v13, v0

    .line 685
    .local v13, oldX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move v14, v0

    .line 687
    .local v14, oldY:F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 688
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 690
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    if-lez v16, :cond_a

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object v15, v0

    .line 692
    .local v15, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mDiameterFactor:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x3f00

    mul-float v18, v24, v25

    .line 694
    .local v18, radius:F
    const/16 v24, 0x1

    sub-int v24, v16, v24

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 696
    .local v11, lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    move-object v0, v11

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v20

    .line 697
    .local v20, startX:F
    move-object v0, v11

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v21

    .line 704
    .local v21, startY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object v10, v0

    .line 706
    .local v10, invalidateRect:Landroid/graphics/Rect;
    cmpg-float v24, v20, p1

    if-gez v24, :cond_3

    .line 707
    move/from16 v12, v20

    .line 708
    .local v12, left:F
    move/from16 v19, p1

    .line 714
    .local v19, right:F
    :goto_0
    cmpg-float v24, v21, p2

    if-gez v24, :cond_4

    .line 715
    move/from16 v22, v21

    .line 716
    .local v22, top:F
    move/from16 v5, p2

    .line 723
    .local v5, bottom:F
    :goto_1
    sub-float v24, v12, v18

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-float v25, v22, v18

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-float v26, v19, v18

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-float v27, v5, v18

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object v0, v10

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 726
    cmpg-float v24, v20, v13

    if-gez v24, :cond_5

    .line 727
    move/from16 v12, v20

    .line 728
    move/from16 v19, v13

    .line 734
    :goto_2
    cmpg-float v24, v21, v14

    if-gez v24, :cond_6

    .line 735
    move/from16 v22, v21

    .line 736
    move v5, v14

    .line 743
    :goto_3
    sub-float v24, v12, v18

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-float v25, v22, v18

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-float v26, v19, v18

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-float v27, v5, v18

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object v0, v10

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 747
    if-eqz v9, :cond_1

    .line 748
    move-object v0, v9

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v20

    .line 749
    move-object v0, v9

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v21

    .line 751
    const/16 v24, 0x2

    move/from16 v0, v16

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    .line 753
    const/16 v24, 0x1

    sub-int v24, v16, v24

    sub-int v25, v16, v17

    sub-int v24, v24, v25

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 754
    .restart local v9       #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    move-object v0, v9

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v13

    .line 755
    move-object v0, v9

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v14

    .line 757
    cmpg-float v24, v20, v13

    if-gez v24, :cond_7

    .line 758
    move/from16 v12, v20

    .line 759
    move/from16 v19, v13

    .line 765
    :goto_4
    cmpg-float v24, v21, v14

    if-gez v24, :cond_8

    .line 766
    move/from16 v22, v21

    .line 767
    move v5, v14

    .line 777
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v24, v0

    const/high16 v25, 0x4000

    div-float v23, v24, v25

    .line 778
    .local v23, widthOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v24, v0

    const/high16 v25, 0x4000

    div-float v8, v24, v25

    .line 780
    .local v8, heightOffset:F
    sub-float v24, v12, v23

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-float v25, v22, v8

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-float v26, v19, v23

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-float v27, v5, v8

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object v0, v10

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 784
    .end local v8           #heightOffset:F
    .end local v23           #widthOffset:F
    :cond_1
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 789
    .end local v5           #bottom:F
    .end local v10           #invalidateRect:Landroid/graphics/Rect;
    .end local v11           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v12           #left:F
    .end local v13           #oldX:F
    .end local v14           #oldY:F
    .end local v15           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v18           #radius:F
    .end local v19           #right:F
    .end local v20           #startX:F
    .end local v21           #startY:F
    .end local v22           #top:F
    :cond_2
    :goto_6
    return-void

    .line 710
    .restart local v10       #invalidateRect:Landroid/graphics/Rect;
    .restart local v11       #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v13       #oldX:F
    .restart local v14       #oldY:F
    .restart local v15       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .restart local v18       #radius:F
    .restart local v20       #startX:F
    .restart local v21       #startY:F
    :cond_3
    move/from16 v12, p1

    .line 711
    .restart local v12       #left:F
    move/from16 v19, v20

    .restart local v19       #right:F
    goto/16 :goto_0

    .line 718
    :cond_4
    move/from16 v22, p2

    .line 719
    .restart local v22       #top:F
    move/from16 v5, v21

    .restart local v5       #bottom:F
    goto/16 :goto_1

    .line 730
    :cond_5
    move v12, v13

    .line 731
    move/from16 v19, v20

    goto/16 :goto_2

    .line 738
    :cond_6
    move/from16 v22, v14

    .line 739
    move/from16 v5, v21

    goto/16 :goto_3

    .line 761
    :cond_7
    move v12, v13

    .line 762
    move/from16 v19, v20

    goto :goto_4

    .line 769
    :cond_8
    move/from16 v22, v14

    .line 770
    move/from16 v5, v21

    goto :goto_5

    .line 773
    :cond_9
    move/from16 v19, v20

    move/from16 v12, v20

    .line 774
    move/from16 v5, v21

    move/from16 v22, v21

    goto :goto_5

    .line 786
    .end local v5           #bottom:F
    .end local v10           #invalidateRect:Landroid/graphics/Rect;
    .end local v11           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v12           #left:F
    .end local v15           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v18           #radius:F
    .end local v19           #right:F
    .end local v20           #startX:F
    .end local v21           #startY:F
    .end local v22           #top:F
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    goto :goto_6
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resId"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .parameter "column"

    .prologue
    .line 792
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .parameter "row"

    .prologue
    .line 796
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .parameter "x"

    .prologue
    .line 567
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 568
    .local v4, squareWidth:F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 570
    .local v1, hitSize:F
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 571
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 573
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 574
    .local v0, hitLeft:F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    move v5, v2

    .line 578
    .end local v0           #hitLeft:F
    :goto_1
    return v5

    .line 571
    .restart local v0       #hitLeft:F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    .end local v0           #hitLeft:F
    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private getRowHit(F)I
    .locals 8
    .parameter "y"

    .prologue
    .line 547
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 548
    .local v4, squareHeight:F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 550
    .local v0, hitSize:F
    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 551
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 553
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 554
    .local v1, hitTop:F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    move v5, v2

    .line 558
    .end local v1           #hitTop:F
    :goto_1
    return v5

    .line 551
    .restart local v1       #hitTop:F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    .end local v1           #hitTop:F
    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private loadVibratePattern(I)[J
    .locals 6
    .parameter "id"

    .prologue
    .line 291
    const/4 v2, 0x0

    .line 293
    .local v2, pattern:[I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 297
    :goto_0
    if-nez v2, :cond_0

    .line 298
    sget-object v4, Lcom/android/internal/widget/LockPatternView;->DEFAULT_VIBE_PATTERN:[J

    .line 305
    :goto_1
    return-object v4

    .line 294
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 295
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "LockPatternView"

    const-string v5, "Vibrate pattern missing, using default"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 301
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    array-length v4, v2

    new-array v3, v4, [J

    .line 302
    .local v3, tmpPattern:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 303
    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move-object v4, v3

    .line 305
    goto :goto_1
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 406
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 407
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 408
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 409
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 399
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 428
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 435
    return-void
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mTactileFeedbackEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .parameter "canvas"

    .prologue
    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    .line 802
    .local v30, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 803
    .local v14, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    move-object/from16 v17, v0

    .line 805
    .local v17, drawLookup:[[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v5, v6, :cond_2

    .line 810
    add-int/lit8 v5, v14, 0x1

    move v0, v5

    mul-int/lit16 v0, v0, 0x2bc

    move/from16 v27, v0

    .line 811
    .local v27, oneCycle:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    move-wide v7, v0

    sub-long/2addr v5, v7

    long-to-int v5, v5

    rem-int v33, v5, v27

    .line 813
    .local v33, spotInCycle:I
    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v25, v0

    .line 815
    .local v25, numCircles:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 816
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 817
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 818
    .local v9, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    aget-object v5, v17, v5

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v6

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 816
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 823
    .end local v9           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    if-lez v25, :cond_8

    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_8

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 826
    .local v23, needToUpdateInProgressPoint:Z
    :goto_1
    if-eqz v23, :cond_1

    .line 827
    move/from16 v0, v33

    rem-int/lit16 v0, v0, 0x2bc

    move v5, v0

    int-to-float v5, v5

    const/high16 v6, 0x442f

    div-float v31, v5, v6

    .line 831
    .local v31, percentageOfNextCircle:F
    const/4 v5, 0x1

    sub-int v5, v25, v5

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 832
    .local v15, currentCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v5, v15, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v12

    .line 833
    .local v12, centerX:F
    iget v5, v15, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v13

    .line 835
    .local v13, centerY:F
    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 836
    .local v24, nextCell:Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v5

    sub-float/2addr v5, v12

    mul-float v19, v31, v5

    .line 838
    .local v19, dx:F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v5

    sub-float/2addr v5, v13

    mul-float v20, v31, v5

    .line 840
    .local v20, dy:F
    add-float v5, v12, v19

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 841
    add-float v5, v13, v20

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 844
    .end local v12           #centerX:F
    .end local v13           #centerY:F
    .end local v15           #currentCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v19           #dx:F
    .end local v20           #dy:F
    .end local v24           #nextCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v31           #percentageOfNextCircle:F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 847
    .end local v21           #i:I
    .end local v23           #needToUpdateInProgressPoint:Z
    .end local v25           #numCircles:I
    .end local v27           #oneCycle:I
    .end local v33           #spotInCycle:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v35, v0

    .line 848
    .local v35, squareWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v34, v0

    .line 850
    .local v34, squareHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mDiameterFactor:F

    move v5, v0

    mul-float v5, v5, v35

    const/high16 v6, 0x3f00

    mul-float v32, v5, v6

    .line 851
    .local v32, radius:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    .line 854
    .local v16, currentPath:Landroid/graphics/Path;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Path;->rewind()V

    .line 860
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    move v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v5, v6, :cond_9

    :cond_3
    const/4 v5, 0x1

    move/from16 v18, v5

    .line 861
    .local v18, drawPath:Z
    :goto_2
    if-eqz v18, :cond_7

    .line 862
    const/4 v11, 0x0

    .line 863
    .local v11, anyCircles:Z
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_3
    move/from16 v0, v21

    move v1, v14

    if-ge v0, v1, :cond_4

    .line 864
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 869
    .restart local v9       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v5, v9, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v5, v17, v5

    iget v6, v9, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v5, v5, v6

    if-nez v5, :cond_a

    .line 884
    .end local v9           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    move v5, v0

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v5, v6, :cond_6

    :cond_5
    if-eqz v11, :cond_6

    .line 886
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move v6, v0

    move-object/from16 v0, v16

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 888
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 892
    .end local v11           #anyCircles:Z
    .end local v21           #i:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v29, v0

    .line 893
    .local v29, paddingTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v28, v0

    .line 895
    .local v28, paddingLeft:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_4
    const/4 v5, 0x3

    move/from16 v0, v21

    move v1, v5

    if-ge v0, v1, :cond_d

    .line 896
    move/from16 v0, v29

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move v6, v0

    mul-float v6, v6, v34

    add-float v8, v5, v6

    .line 898
    .local v8, topY:F
    const/16 v22, 0x0

    .local v22, j:I
    :goto_5
    const/4 v5, 0x3

    move/from16 v0, v22

    move v1, v5

    if-ge v0, v1, :cond_c

    .line 899
    move/from16 v0, v28

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move v6, v0

    mul-float v6, v6, v35

    add-float v7, v5, v6

    .line 900
    .local v7, leftX:F
    float-to-int v5, v7

    float-to-int v6, v8

    aget-object v7, v17, v21

    .end local v7           #leftX:F
    aget-boolean v7, v7, v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    .line 898
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 823
    .end local v8           #topY:F
    .end local v16           #currentPath:Landroid/graphics/Path;
    .end local v18           #drawPath:Z
    .end local v22           #j:I
    .end local v28           #paddingLeft:I
    .end local v29           #paddingTop:I
    .end local v32           #radius:F
    .end local v34           #squareHeight:F
    .end local v35           #squareWidth:F
    .restart local v25       #numCircles:I
    .restart local v27       #oneCycle:I
    .restart local v33       #spotInCycle:I
    :cond_8
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_1

    .line 860
    .end local v21           #i:I
    .end local v25           #numCircles:I
    .end local v27           #oneCycle:I
    .end local v33           #spotInCycle:I
    .restart local v16       #currentPath:Landroid/graphics/Path;
    .restart local v32       #radius:F
    .restart local v34       #squareHeight:F
    .restart local v35       #squareWidth:F
    :cond_9
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_2

    .line 872
    .restart local v9       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v11       #anyCircles:Z
    .restart local v18       #drawPath:Z
    .restart local v21       #i:I
    :cond_a
    const/4 v11, 0x1

    .line 874
    iget v5, v9, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v12

    .line 875
    .restart local v12       #centerX:F
    iget v5, v9, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v13

    .line 876
    .restart local v13       #centerY:F
    if-nez v21, :cond_b

    .line 877
    move-object/from16 v0, v16

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 863
    :goto_6
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 879
    :cond_b
    move-object/from16 v0, v16

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_6

    .line 895
    .end local v9           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v11           #anyCircles:Z
    .end local v12           #centerX:F
    .end local v13           #centerY:F
    .restart local v8       #topY:F
    .restart local v22       #j:I
    .restart local v28       #paddingLeft:I
    .restart local v29       #paddingTop:I
    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 906
    .end local v8           #topY:F
    .end local v22           #j:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    move/from16 v26, v5

    .line 907
    .local v26, oldFlag:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 908
    if-eqz v18, :cond_e

    .line 909
    const/16 v21, 0x0

    :goto_8
    const/4 v5, 0x1

    sub-int v5, v14, v5

    move/from16 v0, v21

    move v1, v5

    if-ge v0, v1, :cond_e

    .line 910
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 911
    .restart local v9       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 916
    .local v10, next:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v5, v10, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v5, v17, v5

    iget v6, v10, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v5, v5, v6

    if-nez v5, :cond_10

    .line 926
    .end local v9           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v10           #next:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 927
    return-void

    .line 906
    .end local v26           #oldFlag:Z
    :cond_f
    const/4 v5, 0x0

    move/from16 v26, v5

    goto :goto_7

    .line 920
    .restart local v9       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v10       #next:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v26       #oldFlag:Z
    :cond_10
    move/from16 v0, v28

    int-to-float v0, v0

    move v5, v0

    iget v6, v9, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    int-to-float v6, v6

    mul-float v6, v6, v35

    add-float v7, v5, v6

    .line 921
    .restart local v7       #leftX:F
    move/from16 v0, v29

    int-to-float v0, v0

    move v5, v0

    iget v6, v9, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    int-to-float v6, v6

    mul-float v6, v6, v34

    add-float v8, v5, v6

    .restart local v8       #topY:F
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 923
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/LockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 909
    add-int/lit8 v21, v21, 0x1

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 448
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 449
    .local v3, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 450
    .local v0, height:I
    move v2, v3

    .line 451
    .local v2, viewWidth:I
    move v1, v0

    .line 452
    .local v1, viewHeight:I
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    .line 465
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/LockPatternView;->setMeasuredDimension(II)V

    .line 466
    return-void

    .line 454
    :pswitch_0
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    .line 455
    goto :goto_0

    .line 457
    :pswitch_1
    move v2, v3

    .line 458
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 459
    goto :goto_0

    .line 461
    :pswitch_2
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 462
    move v1, v0

    goto :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1016
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    move-object v1, v0

    .line 1017
    .local v1, ss:Lcom/android/internal/widget/LockPatternView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1018
    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1021
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1022
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 1023
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 1024
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mTactileFeedbackEnabled:Z

    .line 1025
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1007
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1008
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/android/internal/widget/LockPatternView;->mTactileFeedbackEnabled:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/internal/widget/LockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v4, 0x4040

    .line 439
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 440
    .local v1, width:I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 442
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 443
    .local v0, height:I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 444
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "motionEvent"

    .prologue
    .line 583
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v16

    if-nez v16, :cond_1

    .line 584
    :cond_0
    const/16 v16, 0x0

    .line 665
    :goto_0
    return v16

    .line 587
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    .line 588
    .local v14, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    .line 590
    .local v15, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    packed-switch v16, :pswitch_data_0

    .line 665
    const/16 v16, 0x0

    goto :goto_0

    .line 592
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 593
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    .line 594
    .local v8, hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 595
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 596
    sget-object v16, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 602
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 603
    move-object v0, v8

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v11

    .line 604
    .local v11, startX:F
    move-object v0, v8

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v12

    .line 606
    .local v12, startY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v13, v16, v17

    .line 607
    .local v13, widthOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v7, v16, v17

    .line 609
    .local v7, heightOffset:F
    sub-float v16, v11, v13

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    sub-float v17, v12, v7

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-float v18, v11, v13

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-float v19, v12, v7

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternView;->invalidate(IIII)V

    .line 612
    .end local v7           #heightOffset:F
    .end local v11           #startX:F
    .end local v12           #startY:F
    .end local v13           #widthOffset:F
    :cond_3
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 613
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 620
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 598
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 599
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    goto :goto_1

    .line 623
    .end local v8           #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 624
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 634
    :cond_5
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 637
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 641
    .local v10, nHistoryCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v10, :cond_6

    .line 643
    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    .line 644
    .local v5, batchX:F
    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v6

    .line 647
    .local v6, batchY:F
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->drawMoveEvent(FF)V

    .line 641
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 649
    .end local v5           #batchX:F
    .end local v6           #batchY:F
    :cond_6
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->drawMoveEvent(FF)V

    .line 650
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 652
    .end local v9           #i:I
    .end local v10           #nHistoryCount:I
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 654
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 663
    :cond_7
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .locals 3
    .parameter "displayMode"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 380
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 382
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    .line 386
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 387
    .local v0, first:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 388
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 389
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 391
    .end local v0           #first:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 392
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .parameter "inStealthMode"

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 334
    return-void
.end method

.method public setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .locals 0
    .parameter "onPatternListener"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 353
    return-void
.end method

.method public setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .parameter "displayMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p2, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 363
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 364
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 365
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 366
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 369
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 370
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mTactileFeedbackEnabled:Z

    .line 344
    return-void
.end method
