.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;,
        Lcom/android/internal/widget/PointerLocationView$PointerState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Pointer"


# instance fields
.field private mActivePointerId:I

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mHeaderBottom:I

.field private mMaxNumPointers:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintCoords:Z

.field private mReusableOvalRect:Landroid/graphics/RectF;

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private final mVelocity:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "c"

    .prologue
    const/16 v7, 0xc0

    const/4 v6, 0x1

    const/16 v5, 0xff

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-direct {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    iput-boolean v6, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/PointerLocationView;->setFocusable(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4120

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v5, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v2, 0x60

    invoke-virtual {v1, v5, v4, v2, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .local v0, ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v4, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceCapabilities()V

    return-void
.end method

.method private drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 5
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "major"
    .parameter "minor"
    .parameter "angle"
    .parameter "paint"

    .prologue
    const/high16 v4, 0x4000

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    const/high16 v0, 0x4334

    mul-float/2addr v0, p6

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    sub-float v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    sub-float v1, p3, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private logInputDeviceCapabilities()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .local v1, deviceIds:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .local v0, device:Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    const-string v3, "Pointer"

    invoke-virtual {v0}, Landroid/view/InputDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #device:Landroid/view/InputDevice;
    :cond_1
    return-void
.end method

.method private logPointerCoords(Landroid/view/MotionEvent$PointerCoords;I)V
    .locals 6
    .parameter "coords"
    .parameter "id"

    .prologue
    const/4 v3, 0x3

    const-string v0, "Pointer"

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    const-string v2, "Pointer "

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    const-string v2, ": ("

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    const-string v2, ") Pressure="

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    const-string v2, " Size="

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    const-string v2, " TouchMajor="

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    const-string v2, " TouchMinor="

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    const-string v2, " ToolMajor="

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    const-string v2, " ToolMinor="

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    const-string v2, " Orientation="

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v3, 0x4334

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    const-string v2, "deg"

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addTouchEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    iget-object v10, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    monitor-enter v10

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .local v3, action:I
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, NP:I
    if-eqz v3, :cond_0

    and-int/lit16 v11, v3, 0xff

    const/4 v12, 0x5

    if-ne v11, v12, :cond_6

    :cond_0
    const v11, 0xff00

    and-int/2addr v11, v3

    shr-int/lit8 v6, v11, 0x8

    .local v6, index:I
    if-nez v3, :cond_2

    const/4 v8, 0x0

    .local v8, p:I
    :goto_0
    if-ge v8, v2, :cond_1

    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .local v9, ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->clearTrace()V

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    .end local v8           #p:I
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .local v5, id:I
    :goto_1
    if-gt v2, v5, :cond_3

    new-instance v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_3
    iget v11, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ltz v11, :cond_4

    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    iget v12, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    iput v5, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    :cond_5
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v11, 0x1

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_6

    const-string v11, "Pointer"

    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v12

    const-string v13, "Pointer "

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v12

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v12

    const-string v13, ": DOWN"

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5           #id:I
    .end local v6           #index:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .local v1, NI:I
    const/4 v11, 0x1

    if-eq v3, v11, :cond_9

    const/4 v11, 0x3

    if-eq v3, v11, :cond_9

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v11, :cond_a

    move v11, v1

    :goto_3
    iput v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    iget v11, p0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    iget v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    if-ge v11, v12, :cond_7

    iget v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    iput v11, p0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    :cond_7
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v1, :cond_d

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .restart local v5       #id:I
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .local v0, N:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_5
    if-ge v7, v0, :cond_b

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    invoke-virtual {p1, v4, v7, v11}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_8

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    invoke-direct {p0, v11, v5}, Lcom/android/internal/widget/PointerLocationView;->logPointerCoords(Landroid/view/MotionEvent$PointerCoords;I)V

    :cond_8
    invoke-virtual {p1, v4, v7}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v11

    invoke-virtual {p1, v4, v7}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v12

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .end local v0           #N:I
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v7           #j:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .restart local v0       #N:I
    .restart local v4       #i:I
    .restart local v5       #id:I
    .restart local v7       #j:I
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_b
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    invoke-virtual {p1, v4, v11}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_c

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    invoke-direct {p0, v11, v5}, Lcom/android/internal/widget/PointerLocationView;->logPointerCoords(Landroid/view/MotionEvent$PointerCoords;I)V

    :cond_c
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    iget v12, v12, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FF)V

    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v11

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v0           #N:I
    .end local v5           #id:I
    .end local v7           #j:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_d
    const/4 v11, 0x1

    if-eq v3, v11, :cond_e

    const/4 v11, 0x3

    if-eq v3, v11, :cond_e

    and-int/lit16 v11, v3, 0xff

    const/4 v12, 0x6

    if-ne v11, v12, :cond_11

    :cond_e
    const v11, 0xff00

    and-int/2addr v11, v3

    shr-int/lit8 v6, v11, 0x8

    .restart local v6       #index:I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .restart local v5       #id:I
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v11, 0x0

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_f

    const-string v11, "Pointer"

    iget-object v12, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v12

    const-string v13, "Pointer "

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v12

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v12

    const-string v13, ": UP"

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v11, 0x1

    if-eq v3, v11, :cond_10

    const/4 v11, 0x3

    if-ne v3, v11, :cond_12

    :cond_10
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .end local v5           #id:I
    .end local v6           #index:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_11
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->postInvalidate()V

    monitor-exit v10

    return-void

    .restart local v5       #id:I
    .restart local v6       #index:I
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_12
    iget v11, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ne v11, v5, :cond_13

    if-nez v6, :cond_14

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    :cond_13
    const/high16 v11, 0x7fc0

    const/high16 v12, 0x7fc0

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FF)V

    goto :goto_6

    .end local v1           #NI:I
    .end local v2           #NP:I
    .end local v3           #action:I
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v6           #index:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :catchall_0
    move-exception v11

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .restart local v1       #NI:I
    .restart local v2       #NP:I
    .restart local v3       #action:I
    .restart local v4       #i:I
    .restart local v5       #id:I
    .restart local v6       #index:I
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_14
    const/4 v11, 0x0

    goto :goto_7
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 35
    .parameter "canvas"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    monitor-enter v34

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v31

    .local v31, w:I
    div-int/lit8 v27, v31, 0x7

    .local v27, itemW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v5, v5

    add-int/lit8 v20, v5, 0x1

    .local v20, base:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    move/from16 v21, v0

    .local v21, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, NP:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    move v5, v0

    if-ltz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .local v30, ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    sub-int v5, v27, v5

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "P: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x3f80

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v18

    .local v18, N:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    move v5, v0

    if-eqz v5, :cond_0

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-nez v18, :cond_3

    :cond_1
    move/from16 v0, v27

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x2

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "X: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v27, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int/lit8 v5, v27, 0x2

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x3

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "Y: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v27, 0x2

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    mul-int/lit8 v5, v27, 0x3

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x4

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "Xv: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v27, 0x3

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int/lit8 v5, v27, 0x4

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "Yv: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v27, 0x4

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int/lit8 v5, v27, 0x5

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x6

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v5, v27, 0x5

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x5

    int-to-float v5, v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v8

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    move/from16 v0, v27

    int-to-float v0, v0

    move v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    const/high16 v8, 0x3f80

    sub-float v8, v5, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "Prs: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v27, 0x5

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int/lit8 v5, v27, 0x6

    int-to-float v6, v5

    const/4 v7, 0x0

    move/from16 v0, v31

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v5, v27, 0x6

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x6

    int-to-float v5, v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v8

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->size:F

    move/from16 v0, v27

    int-to-float v0, v0

    move v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    const/high16 v8, 0x3f80

    sub-float v8, v5, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "Size: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v27, 0x6

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .end local v18           #N:I
    .end local v30           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_2
    const/16 v28, 0x0

    .local v28, p:I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .restart local v30       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v18

    .restart local v18       #N:I
    const/4 v6, 0x0

    .local v6, lastX:F
    const/4 v7, 0x0

    .local v7, lastY:F
    const/16 v25, 0x0

    .local v25, haveLast:Z
    const/16 v22, 0x0

    .local v22, drawn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v8, 0xff

    const/16 v9, 0x80

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/16 v26, 0x0

    .local v26, i:I
    :goto_2
    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v5

    aget v8, v5, v26

    .local v8, x:F
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v5

    aget v9, v5, v26

    .local v9, y:F
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v25, 0x0

    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .end local v6           #lastX:F
    .end local v7           #lastY:F
    .end local v8           #x:F
    .end local v9           #y:F
    .end local v22           #drawn:Z
    .end local v25           #haveLast:Z
    .end local v26           #i:I
    .end local v28           #p:I
    :cond_3
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v5

    const/4 v6, 0x1

    sub-int v6, v18, v6

    aget v5, v5, v6

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float v23, v5, v6

    .local v23, dx:F
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v5

    const/4 v6, 0x1

    sub-int v6, v18, v6

    aget v5, v5, v6

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float v24, v5, v6

    .local v24, dy:F
    move/from16 v0, v27

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x2

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v5, v5, v10

    if-gez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    :goto_4
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "dX: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v5

    move/from16 v1, v23

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v27, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int/lit8 v5, v27, 0x2

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v27, 0x3

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v9, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v5, v5, v10

    if-gez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    :goto_5
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const-string v6, "dY: "

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v5

    move/from16 v1, v24

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v27, 0x2

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .end local v18           #N:I
    .end local v19           #NP:I
    .end local v20           #base:I
    .end local v21           #bottom:I
    .end local v23           #dx:F
    .end local v24           #dy:F
    .end local v27           #itemW:I
    .end local v30           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v31           #w:I
    :catchall_0
    move-exception v5

    monitor-exit v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v18       #N:I
    .restart local v19       #NP:I
    .restart local v20       #base:I
    .restart local v21       #bottom:I
    .restart local v23       #dx:F
    .restart local v24       #dy:F
    .restart local v27       #itemW:I
    .restart local v30       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v31       #w:I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    goto/16 :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    goto :goto_5

    .end local v23           #dx:F
    .end local v24           #dy:F
    .restart local v6       #lastX:F
    .restart local v7       #lastY:F
    .restart local v8       #x:F
    .restart local v9       #y:F
    .restart local v22       #drawn:Z
    .restart local v25       #haveLast:Z
    .restart local v26       #i:I
    .restart local v28       #p:I
    :cond_6
    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    const/16 v22, 0x1

    :cond_7
    move v6, v8

    move v7, v9

    const/16 v25, 0x1

    goto/16 :goto_3

    .end local v8           #x:F
    .end local v9           #y:F
    :cond_8
    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0x40

    const/16 v11, 0x80

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v5

    const/high16 v8, 0x4180

    mul-float v32, v5, v8

    .local v32, xVel:F
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v5

    const/high16 v8, 0x4180

    mul-float v33, v5, v8

    .local v33, yVel:F
    add-float v13, v6, v32

    add-float v14, v7, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v10, p1

    move v11, v6

    move v12, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .end local v32           #xVel:F
    .end local v33           #yVel:F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    move v5, v0

    if-eqz v5, :cond_a

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v11, 0x0

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v12, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v5

    int-to-float v13, v5

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v14, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v11, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v12, 0x0

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v13, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v5

    int-to-float v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v6, 0x437f

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v29, v0

    .local v29, pressureLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    .end local v6           #lastX:F
    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    sub-int v8, v8, v29

    move-object v0, v5

    move v1, v6

    move/from16 v2, v29

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .end local v7           #lastY:F
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v6

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0xff

    const/16 v7, 0xff

    sub-int v7, v7, v29

    const/16 v8, 0x80

    move-object v0, v5

    move v1, v6

    move/from16 v2, v29

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v12, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v13, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v14, v5, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v15, v5, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    move-object v0, v5

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0xff

    const/16 v7, 0x80

    const/16 v8, 0xff

    sub-int v8, v8, v29

    move-object v0, v5

    move v1, v6

    move/from16 v2, v29

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v12, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v13, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v14, v5, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v15, v5, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    move-object v0, v5

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .end local v29           #pressureLevel:I
    :cond_a
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .end local v18           #N:I
    .end local v22           #drawn:Z
    .end local v25           #haveLast:Z
    .end local v26           #i:I
    .end local v30           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_b
    monitor-exit v34
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->addTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const-string v0, "Pointer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trackball: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPrintCoords(Z)V
    .locals 0
    .parameter "state"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    return-void
.end method
