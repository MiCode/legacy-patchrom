.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x96000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0xfa0

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x4

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x20

.field private static final PRESSED_STATE_DURATION:I = 0x7d

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static SCROLL_FRICTION:F = 0.0f

.field private static final TAP_TIMEOUT:I = 0x73

.field private static final TOUCH_SLOP:I = 0x10

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field private static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    const v0, 0x3c75c28f

    sput v0, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v1, 0x10

    const/16 v0, 0xc

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 175
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 176
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 177
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 178
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 179
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 180
    const/16 v0, 0x20

    iput v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 181
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 182
    iput v1, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 184
    const v0, 0x96000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 186
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 187
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/high16 v5, 0x4180

    const/high16 v3, 0x4140

    const/high16 v4, 0x3f00

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 201
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 203
    .local v0, density:F
    mul-float v2, v0, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 204
    mul-float v2, v0, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 205
    const/high16 v2, 0x4248

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 206
    const/high16 v2, 0x457a

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 207
    const/high16 v2, 0x4120

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 208
    mul-float v2, v0, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 209
    const/high16 v2, 0x4200

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 210
    const/high16 v2, 0x42c8

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 211
    mul-float v2, v0, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 214
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 216
    const/4 v2, 0x0

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 217
    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 218
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .parameter "context"

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 229
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c8

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 231
    .local v1, density:I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 232
    .local v0, configuration:Landroid/view/ViewConfiguration;
    if-nez v0, :cond_0

    .line 233
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 234
    .restart local v0       #configuration:Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    :cond_0
    return-object v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 386
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 330
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 341
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2

    .prologue
    .line 507
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    .prologue
    .line 321
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 1

    .prologue
    .line 303
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    const v0, 0x96000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 442
    const/16 v0, 0xfa0

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 425
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    .prologue
    .line 295
    const/16 v0, 0x7d

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 263
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    .prologue
    .line 270
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    .prologue
    .line 517
    sget v0, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    return v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .prologue
    .line 312
    const/16 v0, 0x73

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 359
    const/16 v0, 0x10

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 406
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    .prologue
    .line 496
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getScaledDoubleTapSlop()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method
