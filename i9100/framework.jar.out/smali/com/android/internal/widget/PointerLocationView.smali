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

    .line 97
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 92
    new-instance v1, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-direct {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 94
    iput-boolean v6, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 164
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    .line 98
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/PointerLocationView;->setFocusable(Z)V

    .line 99
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    .line 100
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4120

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 105
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 106
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 108
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v5, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 111
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 112
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 114
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 117
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 119
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    .line 120
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v2, 0x60

    invoke-virtual {v1, v5, v4, v2, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 122
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    new-instance v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 126
    .local v0, ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iput v4, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 129
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    .line 131
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceCapabilities()V

    .line 132
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

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 168
    const/high16 v0, 0x4334

    mul-float/2addr v0, p6

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 169
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    sub-float v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 171
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    sub-float v1, p3, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 175
    return-void
.end method

.method private logInputDeviceCapabilities()V
    .locals 5

    .prologue
    .line 135
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 136
    .local v1, deviceIds:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 137
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 138
    .local v0, device:Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 139
    const-string v3, "Pointer"

    invoke-virtual {v0}, Landroid/view/InputDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
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

    .line 309
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

    .line 320
    return-void
.end method


# virtual methods
.method public addTouchEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    .line 323
    iget-object v10, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    monitor-enter v10

    .line 324
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 329
    .local v3, action:I
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 339
    .local v2, NP:I
    if-eqz v3, :cond_0

    and-int/lit16 v11, v3, 0xff

    const/4 v12, 0x5

    if-ne v11, v12, :cond_6

    .line 341
    :cond_0
    const v11, 0xff00

    and-int/2addr v11, v3

    shr-int/lit8 v6, v11, 0x8

    .line 343
    .local v6, index:I
    if-nez v3, :cond_2

    .line 344
    const/4 v8, 0x0

    .local v8, p:I
    :goto_0
    if-ge v8, v2, :cond_1

    .line 345
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 346
    .local v9, ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->clearTrace()V

    .line 347
    const/4 v11, 0x0

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 344
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 349
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 350
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 351
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    .line 354
    .end local v8           #p:I
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 355
    .local v5, id:I
    :goto_1
    if-gt v2, v5, :cond_3

    .line 356
    new-instance v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 357
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v2, v2, 0x1

    .line 359
    goto :goto_1

    .line 361
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

    .line 363
    :cond_4
    iput v5, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 366
    :cond_5
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 367
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v11, 0x1

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 368
    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_6

    .line 369
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

    .line 374
    .end local v5           #id:I
    .end local v6           #index:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 376
    .local v1, NI:I
    const/4 v11, 0x1

    if-eq v3, v11, :cond_9

    const/4 v11, 0x3

    if-eq v3, v11, :cond_9

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 378
    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v11, :cond_a

    move v11, v1

    :goto_3
    iput v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 379
    iget v11, p0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    iget v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    if-ge v11, v12, :cond_7

    .line 380
    iget v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    iput v11, p0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 383
    :cond_7
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 384
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 386
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v1, :cond_d

    .line 387
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 388
    .restart local v5       #id:I
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 389
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 390
    .local v0, N:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_5
    if-ge v7, v0, :cond_b

    .line 391
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    invoke-virtual {p1, v4, v7, v11}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 392
    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_8

    .line 393
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    invoke-direct {p0, v11, v5}, Lcom/android/internal/widget/PointerLocationView;->logPointerCoords(Landroid/view/MotionEvent$PointerCoords;I)V

    .line 395
    :cond_8
    invoke-virtual {p1, v4, v7}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v11

    invoke-virtual {p1, v4, v7}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v12

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FF)V

    .line 390
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 376
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v7           #j:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    .line 378
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 397
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

    .line 398
    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_c

    .line 399
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    invoke-direct {p0, v11, v5}, Lcom/android/internal/widget/PointerLocationView;->logPointerCoords(Landroid/view/MotionEvent$PointerCoords;I)V

    .line 401
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

    .line 402
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v11

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 403
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 386
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 406
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

    .line 409
    :cond_e
    const v11, 0xff00

    and-int/2addr v11, v3

    shr-int/lit8 v6, v11, 0x8

    .line 412
    .restart local v6       #index:I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 413
    .restart local v5       #id:I
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 414
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v11, 0x0

    #setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 415
    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_f

    .line 416
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

    .line 420
    :cond_f
    const/4 v11, 0x1

    if-eq v3, v11, :cond_10

    const/4 v11, 0x3

    if-ne v3, v11, :cond_12

    .line 422
    :cond_10
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 436
    .end local v5           #id:I
    .end local v6           #index:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_11
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->postInvalidate()V

    .line 437
    monitor-exit v10

    .line 438
    return-void

    .line 424
    .restart local v5       #id:I
    .restart local v6       #index:I
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_12
    iget v11, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ne v11, v5, :cond_13

    .line 425
    if-nez v6, :cond_14

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 427
    :cond_13
    const/high16 v11, 0x7fc0

    const/high16 v12, 0x7fc0

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FF)V

    goto :goto_6

    .line 437
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

    .line 425
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
    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 180
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v31

    .line 181
    .local v31, w:I
    div-int/lit8 v27, v31, 0x7

    .line 182
    .local v27, itemW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v5, v5

    add-int/lit8 v20, v5, 0x1

    .line 183
    .local v20, base:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    move/from16 v21, v0

    .line 185
    .local v21, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 188
    .local v19, NP:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    move v5, v0

    if-ltz v5, :cond_2

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 191
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

    .line 192
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

    .line 197
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v18

    .line 198
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

    .line 199
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

    .line 200
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

    .line 203
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

    .line 204
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

    .line 224
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

    .line 225
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

    .line 229
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

    .line 230
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

    .line 234
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

    .line 235
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

    .line 237
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

    .line 241
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

    .line 242
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

    .line 244
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

    .line 250
    .end local v18           #N:I
    .end local v30           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_2
    const/16 v28, 0x0

    .local v28, p:I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 254
    .restart local v30       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v18

    .line 255
    .restart local v18       #N:I
    const/4 v6, 0x0

    .local v6, lastX:F
    const/4 v7, 0x0

    .line 256
    .local v7, lastY:F
    const/16 v25, 0x0

    .line 257
    .local v25, haveLast:Z
    const/16 v22, 0x0

    .line 258
    .local v22, drawn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v8, 0xff

    const/16 v9, 0x80

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 259
    const/16 v26, 0x0

    .local v26, i:I
    :goto_2
    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 260
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v5

    aget v8, v5, v26

    .line 261
    .local v8, x:F
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v5

    aget v9, v5, v26

    .line 262
    .local v9, y:F
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 263
    const/16 v25, 0x0

    .line 259
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 208
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

    .line 209
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

    .line 210
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

    .line 213
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

    .line 216
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

    .line 219
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

    .line 305
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

    .line 210
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

    .line 216
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    goto :goto_5

    .line 266
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

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 269
    const/16 v22, 0x1

    .line 271
    :cond_7
    move v6, v8

    .line 272
    move v7, v9

    .line 273
    const/16 v25, 0x1

    goto/16 :goto_3

    .line 277
    .end local v8           #x:F
    .end local v9           #y:F
    :cond_8
    if-eqz v22, :cond_9

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0x40

    const/16 v11, 0x80

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 279
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v5

    const/high16 v8, 0x4180

    mul-float v32, v5, v8

    .line 280
    .local v32, xVel:F
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v5

    const/high16 v8, 0x4180

    mul-float v33, v5, v8

    .line 281
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

    .line 284
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

    .line 286
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

    .line 287
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

    .line 290
    #getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v30 .. v30}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v6, 0x437f

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v29, v0

    .line 291
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

    .line 292
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

    .line 295
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

    .line 296
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

    .line 300
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

    .line 301
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

    .line 250
    .end local v29           #pressureLevel:I
    :cond_a
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 305
    .end local v18           #N:I
    .end local v22           #drawn:Z
    .end local v25           #haveLast:Z
    .end local v26           #i:I
    .end local v30           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_b
    monitor-exit v34
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 160
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->addTouchEvent(Landroid/view/MotionEvent;)V

    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 448
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

    .line 449
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPrintCoords(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 146
    return-void
.end method
