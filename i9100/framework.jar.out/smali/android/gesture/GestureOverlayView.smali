.class public Landroid/gesture/GestureOverlayView;
.super Landroid/widget/FrameLayout;
.source "GestureOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gesture/GestureOverlayView$1;,
        Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;,
        Landroid/gesture/GestureOverlayView$OnGestureListener;,
        Landroid/gesture/GestureOverlayView$OnGesturingListener;,
        Landroid/gesture/GestureOverlayView$FadeOutRunnable;
    }
.end annotation


# static fields
.field private static final DITHER_FLAG:Z = true

.field private static final FADE_ANIMATION_RATE:I = 0x10

.field private static final GESTURE_RENDERING_ANTIALIAS:Z = true

.field public static final GESTURE_STROKE_TYPE_MULTIPLE:I = 0x1

.field public static final GESTURE_STROKE_TYPE_SINGLE:I = 0x0

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field private mCertainGestureColor:I

.field private mCurrentColor:I

.field private mCurrentGesture:Landroid/gesture/Gesture;

.field private mCurveEndX:F

.field private mCurveEndY:F

.field private mFadeDuration:J

.field private mFadeEnabled:Z

.field private mFadeOffset:J

.field private mFadingAlpha:F

.field private mFadingHasStarted:Z

.field private final mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

.field private mFadingStart:J

.field private final mGesturePaint:Landroid/graphics/Paint;

.field private mGestureStrokeAngleThreshold:F

.field private mGestureStrokeLengthThreshold:F

.field private mGestureStrokeSquarenessTreshold:F

.field private mGestureStrokeType:I

.field private mGestureStrokeWidth:F

.field private mGestureVisible:Z

.field private mHandleGestureActions:Z

.field private mInterceptEvents:Z

.field private final mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private final mInvalidRect:Landroid/graphics/Rect;

.field private mInvalidateExtraBorder:I

.field private mIsFadingOut:Z

.field private mIsGesturing:Z

.field private mIsListeningForGestures:Z

.field private final mOnGestureListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureOverlayView$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnGesturePerformedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnGesturingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GestureOverlayView$OnGesturingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private final mPath:Landroid/graphics/Path;

.field private mPreviousWasGesturing:Z

.field private mResetGesture:Z

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalLength:F

.field private mUncertainGestureColor:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 68
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    .line 69
    const-wide/16 v0, 0x1a4

    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 72
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 75
    const/16 v0, -0x100

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 76
    const v0, 0x48ffff00

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 77
    const/high16 v0, 0x4140

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 78
    const/16 v0, 0xa

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 80
    iput v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 81
    const/high16 v0, 0x4248

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 82
    const v0, 0x3e8ccccd

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 83
    const/high16 v0, 0x4220

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 85
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 89
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 98
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 99
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 100
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 121
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 122
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 123
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 126
    new-instance v0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$1;)V

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    .line 130
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->init()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 134
    const v0, 0x10102ce

    invoke-direct {p0, p1, p2, v0}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 138
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 68
    const-wide/16 v1, 0x96

    iput-wide v1, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    .line 69
    const-wide/16 v1, 0x1a4

    iput-wide v1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 72
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 75
    const/16 v1, -0x100

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 76
    const v1, 0x48ffff00

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 77
    const/high16 v1, 0x4140

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 78
    iput v5, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 80
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 81
    const/high16 v1, 0x4248

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 82
    const v1, 0x3e8ccccd

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 83
    const/high16 v1, 0x4220

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 85
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 88
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 89
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 98
    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 99
    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 100
    iput-boolean v3, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 121
    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 122
    const/high16 v1, 0x3f80

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 123
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 126
    new-instance v1, Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$1;)V

    iput-object v1, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    .line 140
    sget-object v1, Lcom/android/internal/R$styleable;->GestureOverlayView:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    .local v0, a:Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 145
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    float-to-int v1, v1

    sub-int/2addr v1, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 146
    const/4 v1, 0x2

    iget v2, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 148
    const/4 v1, 0x3

    iget v2, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 150
    const/4 v1, 0x5

    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    .line 151
    const/4 v1, 0x4

    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 152
    const/4 v1, 0x6

    iget v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 154
    const/4 v1, 0x7

    iget v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 157
    const/16 v1, 0x9

    iget v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 160
    const/16 v1, 0x8

    iget v2, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 163
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 165
    const/16 v1, 0xb

    iget-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 167
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 169
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->init()V

    .line 172
    return-void
.end method

.method static synthetic access$100(Landroid/gesture/GestureOverlayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/gesture/GestureOverlayView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    return v0
.end method

.method static synthetic access$1002(Landroid/gesture/GestureOverlayView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    return p1
.end method

.method static synthetic access$102(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    return p1
.end method

.method static synthetic access$200(Landroid/gesture/GestureOverlayView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadingStart:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/gesture/GestureOverlayView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeDuration:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/gesture/GestureOverlayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/gesture/GestureOverlayView;->fireOnGesturePerformed()V

    return-void
.end method

.method static synthetic access$502(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    return p1
.end method

.method static synthetic access$602(Landroid/gesture/GestureOverlayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    return p1
.end method

.method static synthetic access$700(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$802(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-object p1
.end method

.method static synthetic access$900(Landroid/gesture/GestureOverlayView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    return-void
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 715
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 716
    .local v2, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 717
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 718
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v3, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 722
    return-void
.end method

.method private clear(ZZZ)V
    .locals 5
    .parameter "animated"
    .parameter "fireActionPerformed"
    .parameter "immediate"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 412
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 413
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 414
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 415
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iput-boolean p2, v0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    .line 416
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iput-boolean v1, v0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    .line 418
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 419
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 420
    iput-boolean v2, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 421
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 422
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadingStart:J

    .line 424
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iget-wide v1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 445
    :goto_0
    return-void

    .line 426
    :cond_0
    iput v3, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    .line 427
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 428
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 430
    if-eqz p3, :cond_1

    .line 431
    iput-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 432
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 433
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0

    .line 434
    :cond_1
    if-eqz p2, :cond_2

    .line 435
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iget-wide v1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 436
    :cond_2
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    if-ne v0, v2, :cond_3

    .line 437
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iput-boolean v2, v0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    .line 438
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    iget-wide v1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 440
    :cond_3
    iput-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 441
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 442
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0
.end method

.method private fireOnGesturePerformed()V
    .locals 5

    .prologue
    .line 725
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 726
    .local v0, actionListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 727
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 728
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-interface {v3, p0, v4}, Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;->onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V

    .line 727
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 730
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 175
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/gesture/GestureOverlayView;->setWillNotDraw(Z)V

    .line 177
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 178
    .local v0, gesturePaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 182
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 183
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 186
    iget v1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    iput v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    .line 187
    const/16 v1, 0xff

    invoke-direct {p0, v1}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 188
    return-void
.end method

.method private processEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    move v1, v3

    .line 543
    :goto_0
    return v1

    .line 516
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->touchDown(Landroid/view/MotionEvent;)V

    .line 517
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    move v1, v2

    .line 518
    goto :goto_0

    .line 520
    :pswitch_1
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v1, :cond_0

    .line 521
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;

    move-result-object v0

    .line 522
    .local v0, rect:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->invalidate(Landroid/graphics/Rect;)V

    :cond_1
    move v1, v2

    .line 525
    goto :goto_0

    .line 529
    .end local v0           #rect:Landroid/graphics/Rect;
    :pswitch_2
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v1, :cond_0

    .line 530
    invoke-direct {p0, p1, v3}, Landroid/gesture/GestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    .line 531
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    move v1, v2

    .line 532
    goto :goto_0

    .line 536
    :pswitch_3
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v1, :cond_0

    .line 537
    invoke-direct {p0, p1, v2}, Landroid/gesture/GestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    .line 538
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    move v1, v2

    .line 539
    goto :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setCurrentColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 375
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    .line 376
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    if-eqz v0, :cond_0

    .line 377
    const/high16 v0, 0x437f

    iget v1, p0, Landroid/gesture/GestureOverlayView;->mFadingAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 381
    :goto_0
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 382
    return-void

    .line 379
    :cond_0
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    goto :goto_0
.end method

.method private setPaintAlpha(I)V
    .locals 5
    .parameter "alpha"

    .prologue
    .line 401
    shr-int/lit8 v2, p1, 0x7

    add-int/2addr p1, v2

    .line 402
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    ushr-int/lit8 v0, v2, 0x18

    .line 403
    .local v0, baseAlpha:I
    mul-int v2, v0, p1

    shr-int/lit8 v1, v2, 0x8

    .line 404
    .local v1, useAlpha:I
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    iget v3, p0, Landroid/gesture/GestureOverlayView;->mCurrentColor:I

    shl-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v4, v1, 0x18

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    return-void
.end method

.method private touchDown(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 547
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 550
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 552
    .local v5, y:F
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mX:F

    .line 553
    iput v5, p0, Landroid/gesture/GestureOverlayView;->mY:F

    .line 555
    const/4 v6, 0x0

    iput v6, p0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    .line 556
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 558
    iget v6, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    if-eqz v6, :cond_5

    .line 559
    :cond_0
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    invoke-direct {p0, v6}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 560
    :cond_1
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 561
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 562
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 568
    :cond_2
    :goto_0
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    if-eqz v6, :cond_7

    .line 569
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->cancelClearAnimation()V

    .line 577
    :cond_3
    :goto_1
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-nez v6, :cond_4

    .line 578
    new-instance v6, Landroid/gesture/Gesture;

    invoke-direct {v6}, Landroid/gesture/Gesture;-><init>()V

    iput-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 581
    :cond_4
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v7, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-direct {v7, v4, v5, v8, v9}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 584
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 585
    .local v0, border:I
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    float-to-int v7, v4

    sub-int/2addr v7, v0

    float-to-int v8, v5

    sub-int/2addr v8, v0

    float-to-int v9, v4

    add-int/2addr v9, v0

    float-to-int v10, v5

    add-int/2addr v10, v0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 587
    iput v4, p0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    .line 588
    iput v5, p0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    .line 591
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 592
    .local v3, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 593
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_8

    .line 594
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v6, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 563
    .end local v0           #border:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_5
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {v6}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 564
    :cond_6
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    invoke-direct {p0, v6}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    goto :goto_0

    .line 570
    :cond_7
    iget-boolean v6, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    if-eqz v6, :cond_3

    .line 571
    const/16 v6, 0xff

    invoke-direct {p0, v6}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 572
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 573
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 574
    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v6}, Landroid/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 596
    .restart local v0       #border:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_8
    return-void
.end method

.method private touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;
    .locals 25
    .parameter "event"

    .prologue
    .line 599
    const/4 v6, 0x0

    .line 601
    .local v6, areaToRefresh:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 602
    .local v19, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 604
    .local v20, y:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mX:F

    move/from16 v17, v0

    .line 605
    .local v17, previousX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mY:F

    move/from16 v18, v0

    .line 607
    .local v18, previousY:F
    sub-float v21, v19, v17

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 608
    .local v12, dx:F
    sub-float v21, v20, v18

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 610
    .local v13, dy:F
    const/high16 v21, 0x4040

    cmpl-float v21, v12, v21

    if-gez v21, :cond_0

    const/high16 v21, 0x4040

    cmpl-float v21, v13, v21

    if-ltz v21, :cond_5

    .line 611
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    move-object v6, v0

    .line 614
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    move v7, v0

    .line 615
    .local v7, border:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v22, v22, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v23, v23, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v24, v24, v7

    move-object v0, v6

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 618
    add-float v21, v19, v17

    const/high16 v22, 0x4000

    div-float v9, v21, v22

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Landroid/gesture/GestureOverlayView;->mCurveEndX:F

    .line 619
    .local v9, cX:F
    add-float v21, v20, v18

    const/high16 v22, 0x4000

    div-float v10, v21, v22

    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/gesture/GestureOverlayView;->mCurveEndY:F

    .line 621
    .local v10, cY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v18

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 624
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v7

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v22, v22, v7

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v23, v23, v7

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v24, v24, v7

    move-object v0, v6

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 628
    move v0, v9

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v7

    move v0, v10

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v22, v22, v7

    move v0, v9

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v23, v23, v7

    move v0, v10

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v24, v24, v7

    move-object v0, v6

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 631
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/gesture/GestureOverlayView;->mX:F

    .line 632
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/gesture/GestureOverlayView;->mY:F

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/gesture/GesturePoint;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v23

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v20

    move-wide/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    move/from16 v21, v0

    mul-float v22, v12, v12

    mul-float v23, v13, v13

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    .line 639
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mTotalLength:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_4

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;

    move-result-object v8

    .line 643
    .local v8, box:Landroid/gesture/OrientedBoundingBox;
    move-object v0, v8

    iget v0, v0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 644
    .local v5, angle:F
    const/high16 v21, 0x42b4

    cmpl-float v21, v5, v21

    if-lez v21, :cond_1

    .line 645
    const/high16 v21, 0x4334

    sub-float v5, v21, v5

    .line 648
    :cond_1
    move-object v0, v8

    iget v0, v0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    move/from16 v21, v0

    cmpg-float v21, v5, v21

    if-gez v21, :cond_4

    .line 653
    :cond_2
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 657
    .local v16, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 658
    .local v11, count:I
    const/4 v14, 0x0

    .end local v5           #angle:F
    .local v14, i:I
    :goto_0
    if-ge v14, v11, :cond_4

    .line 659
    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingStarted(Landroid/gesture/GestureOverlayView;)V

    .line 658
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 648
    .end local v11           #count:I
    .end local v14           #i:I
    .end local v16           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    .restart local v5       #angle:F
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    move/from16 v21, v0

    cmpl-float v21, v5, v21

    if-gtz v21, :cond_2

    .line 666
    .end local v5           #angle:F
    .end local v8           #box:Landroid/gesture/OrientedBoundingBox;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    move-object v15, v0

    .line 667
    .local v15, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 668
    .restart local v11       #count:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_1
    if-ge v14, v11, :cond_5

    .line 669
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GestureOverlayView$OnGestureListener;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 668
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 673
    .end local v7           #border:I
    .end local v9           #cX:F
    .end local v10           #cY:F
    .end local v11           #count:I
    .end local v14           #i:I
    .end local v15           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_5
    return-object v6
.end method

.method private touchUp(Landroid/view/MotionEvent;Z)V
    .locals 9
    .parameter "event"
    .parameter "cancel"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 677
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 680
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v4, :cond_4

    .line 682
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    new-instance v5, Landroid/gesture/GestureStroke;

    iget-object v6, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 684
    if-nez p2, :cond_3

    .line 686
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 687
    .local v2, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 688
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 689
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v4, p0, p1}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    :cond_0
    iget-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    if-eqz v4, :cond_1

    move v4, v8

    :goto_1
    iget-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    if-eqz v5, :cond_2

    move v5, v8

    :goto_2
    invoke-direct {p0, v4, v5, v7}, Landroid/gesture/GestureOverlayView;->clear(ZZZ)V

    .line 702
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :goto_3
    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 703
    iget-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    iput-boolean v4, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 704
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 706
    iget-object v3, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 707
    .local v3, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 708
    .restart local v0       #count:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-ge v1, v0, :cond_5

    .line 709
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    invoke-interface {v4, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingEnded(Landroid/gesture/GestureOverlayView;)V

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v3           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    .restart local v2       #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_1
    move v4, v7

    .line 692
    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_2

    .line 695
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    :cond_3
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 699
    :cond_4
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 711
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    :cond_5
    return-void
.end method


# virtual methods
.method public addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 328
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method public addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 340
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 344
    :cond_0
    return-void
.end method

.method public addOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 359
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method public cancelClearAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 448
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V

    .line 449
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z

    .line 450
    iput-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z

    .line 451
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mFadingOut:Landroid/gesture/GestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v0}, Landroid/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 452
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 454
    return-void
.end method

.method public cancelGesture()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 457
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsListeningForGestures:Z

    .line 460
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    new-instance v3, Landroid/gesture/GestureStroke;

    iget-object v4, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 463
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 464
    .local v0, now:J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 467
    .local v9, event:Landroid/view/MotionEvent;
    iget-object v11, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 468
    .local v11, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 469
    .local v8, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 470
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/GestureOverlayView$OnGestureListener;

    invoke-interface {v2, p0, v9}, Landroid/gesture/GestureOverlayView$OnGestureListener;->onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 469
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 475
    invoke-virtual {p0, v7}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 476
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    .line 477
    iput-boolean v7, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    .line 478
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 480
    iget-object v12, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 481
    .local v12, otherListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureOverlayView$OnGesturingListener;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 482
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_1

    .line 483
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/GestureOverlayView$OnGesturingListener;

    invoke-interface {v2, p0}, Landroid/gesture/GestureOverlayView$OnGesturingListener;->onGesturingEnded(Landroid/gesture/GestureOverlayView;)V

    .line 482
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 485
    :cond_1
    return-void
.end method

.method public clear(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 408
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/gesture/GestureOverlayView;->clear(ZZZ)V

    .line 409
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 494
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {v1}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    if-eqz v1, :cond_2

    move v0, v2

    .line 499
    .local v0, cancelDispatch:Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;->processEvent(Landroid/view/MotionEvent;)Z

    .line 501
    if-eqz v0, :cond_1

    .line 502
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 505
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v2

    .line 510
    .end local v0           #cancelDispatch:Z
    :goto_1
    return v1

    .line 495
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 510
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 393
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 395
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 398
    :cond_0
    return-void
.end method

.method public getCurrentStroke()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFadeOffset()J
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    return-wide v0
.end method

.method public getGesture()Landroid/gesture/Gesture;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-object v0
.end method

.method public getGestureColor()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    return v0
.end method

.method public getGesturePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getGesturePath()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getGesturePath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1
    .parameter "path"

    .prologue
    .line 307
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 308
    return-object p1
.end method

.method public getGestureStrokeAngleThreshold()F
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    return v0
.end method

.method public getGestureStrokeLengthThreshold()F
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    return v0
.end method

.method public getGestureStrokeSquarenessTreshold()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    return v0
.end method

.method public getGestureStrokeType()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    return v0
.end method

.method public getGestureStrokeWidth()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    return v0
.end method

.method public getUncertainGestureColor()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    return v0
.end method

.method public isEventsInterceptionEnabled()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    return v0
.end method

.method public isFadeEnabled()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    return v0
.end method

.method public isGestureVisible()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    return v0
.end method

.method public isGesturing()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mIsGesturing:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->cancelClearAnimation()V

    .line 490
    return-void
.end method

.method public removeAllOnGestureListeners()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 337
    return-void
.end method

.method public removeAllOnGesturePerformedListeners()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 356
    return-void
.end method

.method public removeAllOnGesturingListeners()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 368
    return-void
.end method

.method public removeOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 332
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public removeOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 347
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/gesture/GestureOverlayView;->mHandleGestureActions:Z

    .line 351
    :cond_0
    return-void
.end method

.method public removeOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 363
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method

.method public setEventsInterceptionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 265
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mInterceptEvents:Z

    .line 266
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0
    .parameter "fadeEnabled"

    .prologue
    .line 273
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mFadeEnabled:Z

    .line 274
    return-void
.end method

.method public setFadeOffset(J)V
    .locals 0
    .parameter "fadeOffset"

    .prologue
    .line 324
    iput-wide p1, p0, Landroid/gesture/GestureOverlayView;->mFadeOffset:J

    .line 325
    return-void
.end method

.method public setGesture(Landroid/gesture/Gesture;)V
    .locals 9
    .parameter "gesture"

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4000

    .line 281
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v2, :cond_0

    .line 282
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 285
    :cond_0
    iget v2, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    invoke-direct {p0, v2}, Landroid/gesture/GestureOverlayView;->setCurrentColor(I)V

    .line 286
    iput-object p1, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 288
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {v2}, Landroid/gesture/Gesture;->toPath()Landroid/graphics/Path;

    move-result-object v1

    .line 289
    .local v1, path:Landroid/graphics/Path;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 290
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 293
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 294
    iget-object v2, p0, Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 297
    iput-boolean v8, p0, Landroid/gesture/GestureOverlayView;->mResetGesture:Z

    .line 299
    invoke-virtual {p0}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 300
    return-void
.end method

.method public setGestureColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 203
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mCertainGestureColor:I

    .line 204
    return-void
.end method

.method public setGestureStrokeAngleThreshold(F)V
    .locals 0
    .parameter "gestureStrokeAngleThreshold"

    .prologue
    .line 257
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 258
    return-void
.end method

.method public setGestureStrokeLengthThreshold(F)V
    .locals 0
    .parameter "gestureStrokeLengthThreshold"

    .prologue
    .line 241
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 242
    return-void
.end method

.method public setGestureStrokeSquarenessTreshold(F)V
    .locals 0
    .parameter "gestureStrokeSquarenessTreshold"

    .prologue
    .line 249
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 250
    return-void
.end method

.method public setGestureStrokeType(I)V
    .locals 0
    .parameter "gestureStrokeType"

    .prologue
    .line 233
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeType:I

    .line 234
    return-void
.end method

.method public setGestureStrokeWidth(F)V
    .locals 2
    .parameter "gestureStrokeWidth"

    .prologue
    const/4 v1, 0x1

    .line 223
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mGestureStrokeWidth:F

    .line 224
    float-to-int v0, p1

    sub-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/gesture/GestureOverlayView;->mInvalidateExtraBorder:I

    .line 225
    iget-object v0, p0, Landroid/gesture/GestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 226
    return-void
.end method

.method public setGestureVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 316
    iput-boolean p1, p0, Landroid/gesture/GestureOverlayView;->mGestureVisible:Z

    .line 317
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 199
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mOrientation:I

    .line 200
    return-void
.end method

.method public setUncertainGestureColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 207
    iput p1, p0, Landroid/gesture/GestureOverlayView;->mUncertainGestureColor:I

    .line 208
    return-void
.end method
