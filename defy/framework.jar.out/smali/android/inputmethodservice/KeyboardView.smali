.class public Landroid/inputmethodservice/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/KeyboardView$SwipeTracker;,
        Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final DEBOUNCE_TIME:I = 0x46

.field private static final DEBUG:Z = false

.field private static final DELAY_AFTER_PREVIEW:I = 0x46

.field private static final DELAY_BEFORE_PREVIEW:I = 0x0

.field private static final KEY_DELETE:[I = null

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESSABLE_STATE_SET:[I = null

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_LONGPRESS:I = 0x4

.field private static final MSG_REMOVE_PREVIEW:I = 0x2

.field private static final MSG_REPEAT:I = 0x3

.field private static final MSG_SHOW_PREVIEW:I = 0x1

.field private static final MULTITAP_INTERVAL:I = 0x320

.field private static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190


# instance fields
.field private mAbortKey:Z

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field private mDistances:[I

.field private mDownKey:I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mInMultiTap:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mOffsetInWindow:[I

.field private mOldEventTime:J

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPossiblePoly:Z

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private mStartX:I

.field private mStartY:I

.field private mSwipeThreshold:I

.field private mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

.field private mTapCount:I

.field private mUsedVelocity:Z

.field private mVerticalCorrection:I

.field private mWindowOffset:[I

.field private mWindowY:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const/4 v1, -0x5

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    new-array v0, v3, [I

    const v1, 0x101023c

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    const/16 v0, 0xc

    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x10102d9

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    iput-boolean v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    iput-boolean v10, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    iput-boolean v10, p0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    const/16 v7, 0xc

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    new-instance v7, Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-direct {v7, v11}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>(Landroid/inputmethodservice/KeyboardView$1;)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    iput v10, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    sget v7, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    new-instance v7, Landroid/inputmethodservice/KeyboardView$1;

    invoke-direct {v7, p0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget-object v7, Landroid/R$styleable;->KeyboardView:[I

    invoke-virtual {p1, p2, v7, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .local v3, inflate:Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    .local v6, previewLayout:I
    const/4 v4, 0x0

    .local v4, keyTextSize:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .local v5, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    goto :goto_1

    :pswitch_4
    const/16 v7, 0x50

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    goto :goto_1

    :pswitch_5
    const/16 v7, 0x12

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    goto :goto_1

    :pswitch_6
    const/high16 v7, -0x100

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    goto :goto_1

    :pswitch_7
    const/16 v7, 0xe

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    goto :goto_1

    :pswitch_8
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    goto :goto_1

    :pswitch_9
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    goto :goto_1

    :pswitch_a
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    goto :goto_1

    .end local v1           #attr:I
    :cond_0
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v7, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v7, 0x2

    const/high16 v8, 0x3f00

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_1

    invoke-virtual {v3, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    const/high16 v7, 0x43fa

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10d000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    return-void

    :cond_1
    iput-boolean v9, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/inputmethodservice/KeyboardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    return v0
.end method

.method static synthetic access$1100(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    return v0
.end method

.method static synthetic access$1200(Landroid/inputmethodservice/KeyboardView;IIIJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static synthetic access$1300(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static synthetic access$200(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    return v0
.end method

.method static synthetic access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    return-object v0
.end method

.method static synthetic access$700(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$800(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$900(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    return v0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "label"

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .locals 6
    .parameter "eventTime"
    .parameter "keyIndex"

    .prologue
    const-wide/16 v4, 0x320

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p3, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v1, p3

    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-le v1, v2, :cond_3

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    iget-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gez v1, :cond_2

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-ne p3, v1, :cond_2

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_0

    :cond_2
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_0

    :cond_3
    iget-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-eq p3, v1, :cond_0

    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    goto :goto_0
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .locals 7
    .parameter "keyboard"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .local v3, keys:[Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v3, :cond_0

    array-length v4, v3

    .local v4, length:I
    const/4 v0, 0x0

    .local v0, dimensionSum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v2, v3, v1

    .local v2, key:Landroid/inputmethodservice/Keyboard$Key;
    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_2
    if-ltz v0, :cond_0

    if-eqz v4, :cond_0

    int-to-float v5, v0

    const v6, 0x3fb33333

    mul-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    mul-int/2addr v5, v6

    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    goto :goto_0
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 6
    .parameter "index"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-ge p1, v3, :cond_0

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v3, p1

    .local v2, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v5}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    :goto_0
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    iput-wide p4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .end local v2           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_0
    return-void

    .restart local v2       #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v3, v4

    .local v0, code:I
    sget v3, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v1, v3, [I

    .local v1, codes:[I
    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    invoke-direct {p0, p2, p3, v1}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    iget-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-eq v3, v5, :cond_3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v4, -0x5

    sget-object v5, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    invoke-interface {v3, v4, v5}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    :goto_1
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    aget v0, v3, v4

    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v0, v1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_0

    :cond_3
    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_1
.end method

.method private dismissPopupKeyboard()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    :cond_0
    return-void
.end method

.method private getKeyIndices(II[I)I
    .locals 22
    .parameter "x"
    .parameter "y"
    .parameter "allKeys"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object v14, v0

    .local v14, keys:[Landroid/inputmethodservice/Keyboard$Key;
    const/16 v17, -0x1

    .local v17, primaryIndex:I
    const/4 v6, -0x1

    .local v6, closestKey:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    move/from16 v18, v0

    add-int/lit8 v7, v18, 0x1

    .local v7, closestKeyDist:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v18, v0

    const v19, 0x7fffffff

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v16

    .local v16, nearestKeyIndices:[I
    move-object/from16 v0, v16

    array-length v0, v0

    move v13, v0

    .local v13, keyCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v13, :cond_7

    aget v18, v16, v9

    aget-object v12, v14, v18

    .local v12, key:Landroid/inputmethodservice/Keyboard$Key;
    const/4 v8, 0x0

    .local v8, dist:I
    move-object v0, v12

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v10

    .local v10, isInside:Z
    if-eqz v10, :cond_0

    aget v17, v16, v9

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object v0, v12

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    :cond_1
    if-eqz v10, :cond_4

    :cond_2
    move-object v0, v12

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    move-object v0, v12

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move v15, v0

    .local v15, nCodes:I
    if-ge v8, v7, :cond_3

    move v7, v8

    aget v6, v16, v9

    :cond_3
    if-nez p3, :cond_5

    .end local v15           #nCodes:I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .restart local v15       #nCodes:I
    :cond_5
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    move/from16 v0, v18

    move v1, v8

    if-le v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v19, v0

    add-int v20, v11, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v11

    sub-int v21, v21, v15

    move-object/from16 v0, v18

    move v1, v11

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v18, v11, v15

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    sub-int v19, v19, v11

    sub-int v19, v19, v15

    move-object/from16 v0, p3

    move v1, v11

    move-object/from16 v2, p3

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    .local v5, c:I
    :goto_2
    if-ge v5, v15, :cond_4

    add-int v18, v11, v5

    move-object v0, v12

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v19, v0

    aget v19, v19, v5

    aput v19, p3, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v18, v0

    add-int v19, v11, v5

    aput v8, v18, v19

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5           #c:I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v8           #dist:I
    .end local v10           #isInside:Z
    .end local v11           #j:I
    .end local v12           #key:Landroid/inputmethodservice/Keyboard$Key;
    .end local v15           #nCodes:I
    :cond_7
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    move/from16 v17, v6

    :cond_8
    return v17
.end method

.method private getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-gez v2, :cond_0

    move v2, v3

    :goto_0
    aget v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method private initGestureDetector()V
    .locals 3

    .prologue
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method private onBufferDraw()V
    .locals 29

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    move v6, v0

    if-eqz v6, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    move v6, v0

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_2

    :cond_1
    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v28

    .local v28, width:I
    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v17

    .local v17, height:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v28

    move/from16 v1, v17

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .end local v17           #height:I
    .end local v28           #width:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    .local v5, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v6, v0

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object v6, v0

    if-nez v6, :cond_4

    :goto_0
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .local v10, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    .local v23, keyBackground:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    move-object v12, v0

    .local v12, clipRegion:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    .local v27, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v20, v0

    .local v20, kbdPaddingLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v21, v0

    .local v21, kbdPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v25, v0

    .local v25, keys:[Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v19, v0

    .local v19, invalidKey:Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    move v6, v0

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v13, 0x0

    .local v13, drawSingleKey:Z
    if-eqz v19, :cond_5

    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v6, v0

    add-int v6, v6, v20

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v7, v12, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v6, v0

    add-int v6, v6, v21

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v7, v12, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v7, v0

    add-int/2addr v6, v7

    add-int v6, v6, v20

    add-int/lit8 v6, v6, 0x1

    iget v7, v12, Landroid/graphics/Rect;->right:I

    if-lt v6, v7, :cond_5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v7, v0

    add-int/2addr v6, v7

    add-int v6, v6, v21

    add-int/lit8 v6, v6, 0x1

    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_5

    const/4 v13, 0x1

    :cond_5
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v24, v0

    .local v24, keyCount:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    aget-object v22, v25, v18

    .local v22, key:Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v13, :cond_6

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_6

    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v14

    .local v14, drawableState:[I
    move-object/from16 v0, v23

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object v6, v0

    if-nez v6, :cond_a

    const/4 v6, 0x0

    move-object/from16 v26, v6

    .local v26, label:Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .local v11, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v6, v0

    iget v7, v11, Landroid/graphics/Rect;->right:I

    if-ne v6, v7, :cond_7

    move-object/from16 v0, v22

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v6, v0

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    if-eq v6, v7, :cond_8

    :cond_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v8, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v9, v0

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_8
    move-object/from16 v0, v22

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v6, v0

    add-int v6, v6, v20

    int-to-float v6, v6

    move-object/from16 v0, v22

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v7, v0

    add-int v7, v7, v21

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v26, :cond_c

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_b

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object v6, v0

    array-length v6, v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    move v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    move v9, v0

    invoke-virtual {v10, v6, v7, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    move-object/from16 v0, v22

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v6, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, v22

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v7, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    sub-int/2addr v7, v8

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    int-to-float v8, v8

    add-float/2addr v7, v8

    move-object v0, v5

    move-object/from16 v1, v26

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v10, v6, v7, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .end local v11           #bounds:Landroid/graphics/Rect;
    :cond_9
    :goto_5
    move-object/from16 v0, v22

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v6, v0

    neg-int v6, v6

    sub-int v6, v6, v20

    int-to-float v6, v6

    move-object/from16 v0, v22

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v7, v0

    neg-int v7, v7

    sub-int v7, v7, v21

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    .end local v26           #label:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v26, v6

    goto/16 :goto_3

    .restart local v11       #bounds:Landroid/graphics/Rect;
    .restart local v26       #label:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_9

    move-object/from16 v0, v22

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v6, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    add-int v15, v6, v7

    .local v15, drawableX:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v6, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    add-int v16, v6, v7

    .local v16, drawableY:I
    int-to-float v6, v15

    move/from16 v0, v16

    int-to-float v0, v0

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    .end local v11           #bounds:Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v6, v7, v8, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v6, v15

    int-to-float v6, v6

    move/from16 v0, v16

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_5

    .end local v14           #drawableState:[I
    .end local v15           #drawableX:I
    .end local v16           #drawableY:I
    .end local v22           #key:Landroid/inputmethodservice/Keyboard$Key;
    .end local v26           #label:Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    move v6, v0

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    move v6, v0

    const/high16 v7, 0x437f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_e
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 11
    .parameter "me"
    .parameter "possiblePoly"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v2, v0, v1

    .local v2, touchX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v3, v0, v1

    .local v3, touchY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .local v6, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .local v4, eventTime:J
    iput-wide v4, p0, Landroid/inputmethodservice/KeyboardView;->mOldEventTime:J

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    move-result v8

    .local v8, keyIndex:I
    iput-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    if-nez v6, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->clear()V

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    const/4 v0, 0x3

    if-eq v6, v0, :cond_1

    const/4 v0, 0x1

    .end local v4           #eventTime:J
    .end local v6           #action:I
    :goto_0
    return v0

    .restart local v4       #eventTime:J
    .restart local v6       #action:I
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-eq v6, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    packed-switch v6, :pswitch_data_0

    .end local v4           #eventTime:J
    .end local v6           #action:I
    :goto_1
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    const/4 v0, 0x1

    goto :goto_0

    .restart local v4       #eventTime:J
    .restart local v6       #action:I
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    invoke-direct {p0, v4, v5, v8}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    .end local v4           #eventTime:J
    :goto_2
    invoke-interface {v0, v1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v0, v0, v1

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .local v9, msg:Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v9, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto :goto_1

    .end local v9           #msg:Landroid/os/Message;
    .restart local v4       #eventTime:J
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .end local v4           #eventTime:J
    :cond_5
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .restart local v9       #msg:Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v1

    invoke-virtual {v0, v9, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v9           #msg:Landroid/os/Message;
    :cond_6
    invoke-direct {p0, v8}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    goto/16 :goto_1

    .restart local v4       #eventTime:J
    :pswitch_1
    const/4 v7, 0x0

    .local v7, continueLongPress:Z
    const/4 v0, -0x1

    if-eq v8, v0, :cond_7

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    sub-long v0, v4, v0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .end local v6           #action:I
    :cond_7
    :goto_3
    if-nez v7, :cond_8

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, -0x1

    if-eq v8, v0, :cond_8

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .restart local v9       #msg:Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v6, v1

    invoke-virtual {v0, v9, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v9           #msg:Landroid/os/Message;
    :cond_8
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    iput-wide v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    goto/16 :goto_1

    .restart local v6       #action:I
    :cond_9
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v8, v0, :cond_a

    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .end local v6           #action:I
    sub-long v6, v4, v6

    add-long/2addr v0, v6

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    const/4 v7, 0x1

    goto :goto_3

    .restart local v6       #action:I
    :cond_a
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v0, v4

    iget-wide v9, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v0, v9

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_3

    .end local v7           #continueLongPress:Z
    :pswitch_2
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v8, v0, :cond_d

    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .end local v6           #action:I
    sub-long v6, v4, v6

    add-long/2addr v0, v6

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    :goto_4
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_b

    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    const-wide/16 v6, 0x46

    cmp-long v0, v0, v6

    if-gez v0, :cond_b

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    :cond_b
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-nez v0, :cond_c

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    :cond_c
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto/16 :goto_1

    .restart local v6       #action:I
    :cond_d
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v0, v4

    iget-wide v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .end local v6           #action:I
    sub-long/2addr v0, v6

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_4

    .restart local v6       #action:I
    :pswitch_3
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "me"

    .prologue
    const/4 v4, 0x0

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v2, :cond_1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-lt v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v0, v2, v3

    .local v0, popupKey:Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    .local v1, result:Z
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method private removeMessages()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private repeatKey()Z
    .locals 7

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    aget-object v6, v0, v1

    .local v6, key:Landroid/inputmethodservice/Keyboard$Key;
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    const/4 v0, 0x1

    return v0
.end method

.method private resetMultiTap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    return-void
.end method

.method private showKey(I)V
    .locals 12
    .parameter "keyIndex"

    .prologue
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .local v6, previewPopup:Landroid/widget/PopupWindow;
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .local v1, keys:[Landroid/inputmethodservice/Keyboard$Key;
    if-ltz p1, :cond_0

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v7, v7

    if-lt p1, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, v1, p1

    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_5

    iget-object v11, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->measure(II)V

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .local v5, popupWidth:I
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .local v4, popupHeight:I
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    iget-boolean v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    if-nez v7, :cond_8

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v8

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v7, v4

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    add-int/2addr v7, v8

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    :goto_3
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    if-nez v7, :cond_3

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    const/4 v8, 0x0

    aget v9, v7, v8

    iget v10, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v9, v10

    aput v9, v7, v8

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    const/4 v8, 0x1

    aget v9, v7, v8

    iget v10, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v9, v10

    aput v9, v7, v8

    const/4 v7, 0x2

    new-array v3, v7, [I

    .local v3, mWindowLocation:[I
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/KeyboardView;->getLocationOnScreen([I)V

    const/4 v7, 0x1

    aget v7, v3, v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mWindowY:I

    .end local v3           #mWindowLocation:[I
    :cond_3
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v8, :cond_9

    sget-object v8, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    :goto_4
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mWindowY:I

    add-int/2addr v7, v8

    if-gez v7, :cond_4

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-gt v7, v8, :cond_a

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4004

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    :goto_5
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    add-int/2addr v7, v4

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    :cond_4
    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_b

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v6, v7, v8, v5, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_6
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #popupHeight:I
    .end local v5           #popupWidth:I
    :cond_5
    iget-object v11, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_6
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v7, v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_7

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    :cond_7
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #popupHeight:I
    .restart local v5       #popupWidth:I
    :cond_8
    const/16 v7, 0xa0

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    neg-int v7, v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    goto/16 :goto_3

    :cond_9
    sget-object v8, Landroid/inputmethodservice/KeyboardView;->EMPTY_STATE_SET:[I

    goto/16 :goto_4

    :cond_a
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4004

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    goto/16 :goto_5

    :cond_b
    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v6, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    const/4 v8, 0x0

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v10, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_6
.end method

.method private showPreview(I)V
    .locals 10
    .parameter "keyIndex"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .local v1, oldKeyIndex:I
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .local v2, previewPopup:Landroid/widget/PopupWindow;
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .local v0, keys:[Landroid/inputmethodservice/Keyboard$Key;
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v1, v3, :cond_1

    if-eq v1, v7, :cond_0

    array-length v3, v0

    if-le v3, v1, :cond_0

    aget-object v3, v0, v1

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-ne v4, v7, :cond_4

    move v4, v8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    :cond_0
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v3, v7, :cond_1

    array-length v3, v0

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-le v3, v4, :cond_1

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    :cond_1
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v1, v3, :cond_3

    iget-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne p1, v7, :cond_2

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x46

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    if-eq p1, v7, :cond_3

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v4, v9

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method


# virtual methods
.method public closing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    return-void
.end method

.method public invalidateKey(I)V
    .locals 7
    .parameter "keyIndex"

    .prologue
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v1, p1

    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    iget v1, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/inputmethodservice/KeyboardView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 14
    .parameter "popupKey"

    .prologue
    const v4, 0x1020026

    const/high16 v13, -0x8000

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .local v2, popupKeyboardId:I
    if-eqz v2, :cond_5

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .local v7, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v3, 0x1020027

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .local v6, closeButton:Landroid/view/View;
    if-eqz v6, :cond_0

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v3, Landroid/inputmethodservice/KeyboardView$3;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingRight()I

    move-result v10

    add-int/2addr v5, v10

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .local v0, keyboard:Landroid/inputmethodservice/Keyboard;
    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v3

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #keyboard:Landroid/inputmethodservice/Keyboard;
    .end local v6           #closeButton:Landroid/view/View;
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    :goto_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mWindowOffset:[I

    if-nez v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mWindowOffset:[I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mWindowOffset:[I

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    :cond_1
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mWindowOffset:[I

    aget v3, v3, v11

    add-int v8, v1, v3

    .local v8, x:I
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mWindowOffset:[I

    aget v3, v3, v12

    add-int v9, v1, v3

    .local v9, y:I
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-gez v8, :cond_4

    move v3, v11

    :goto_2
    invoke-virtual {v1, v3, v9}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v11, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iput-boolean v12, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    move v1, v12

    .end local v8           #x:I
    .end local v9           #y:I
    :goto_3
    return v1

    .restart local v6       #closeButton:Landroid/view/View;
    .restart local v7       #inflater:Landroid/view/LayoutInflater;
    :cond_2
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .restart local v0       #keyboard:Landroid/inputmethodservice/Keyboard;
    goto/16 :goto_0

    .end local v0           #keyboard:Landroid/inputmethodservice/Keyboard;
    .end local v6           #closeButton:Landroid/view/View;
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    :cond_3
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    goto/16 :goto_1

    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_4
    move v3, v8

    goto :goto_2

    .end local v8           #x:I
    .end local v9           #y:I
    :cond_5
    move v1, v11

    goto :goto_3
.end method

.method public onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    add-int v0, v1, v2

    .local v0, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .local v10, pointerCount:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .local v8, action:I
    const/4 v11, 0x0

    .local v11, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .local v0, now:J
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    if-eq v10, v2, :cond_2

    if-ne v10, v13, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .local v9, down:Landroid/view/MotionEvent;
    invoke-direct {p0, v9, v4}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    if-ne v8, v13, :cond_0

    invoke-direct {p0, p1, v13}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .end local v9           #down:Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    iput v10, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    return v11

    :cond_1
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    move v4, v13

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .local v12, up:Landroid/view/MotionEvent;
    invoke-direct {p0, v12, v13}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .end local v12           #up:Landroid/view/MotionEvent;
    :cond_2
    if-ne v10, v13, :cond_3

    invoke-direct {p0, p1, v4}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    goto :goto_0

    :cond_3
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 3
    .parameter "keyboard"

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->requestLayout()V

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    return-void
.end method

.method public setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-void
.end method

.method public setPopupOffset(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .parameter "previewEnabled"

    .prologue
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .parameter "shifted"

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVerticalCorrection(I)V
    .locals 0
    .parameter "verticalOffset"

    .prologue
    return-void
.end method

.method protected swipeDown()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    return-void
.end method
