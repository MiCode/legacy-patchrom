.class public Lcom/motorola/android/widget/TextViewHelper;
.super Ljava/lang/Object;
.source "TextViewHelper.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/widget/TextViewHelper$Cursor;
    }
.end annotation


# static fields
.field private static final CURSOR_END:I = 0x2

.field private static final CURSOR_IDLE_DELAY:I = 0xbb8

.field private static final CURSOR_IDLE_YOFFSET:I = 0x3

.field private static final CURSOR_NONE:I = 0x0

.field private static final CURSOR_SELECTION:I = 0x3

.field private static final CURSOR_SENSITIVITY:I = 0x1050011

.field private static final CURSOR_START:I = 0x1

.field private static final EDGE_MARGIN:I = 0x1050014

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SELECT_TEXT:I = 0x1020028

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewHelper"

.field private static final MIN_SCROLL_SPEED:I = 0x1050012

.field private static final MSG_HIDE_CURSOR_HALO:I = 0x1

.field private static final MSG_SET_CURSOR_IDLE:I = 0x3

.field private static final MSG_SHOW_CURSOR_HALO:I = 0x2

.field private static final OVERLAY_HEIGHT:I = 0x105000f

.field private static final OVERLAY_WIDTH:I = 0x105000e

.field private static final SCROLL_ACCELRATION_FACTOR:I = 0x1050013

.field private static final SCROLL_BOTTOM:I = 0x4

.field private static final SCROLL_FPS:I = 0x1e

.field private static final SCROLL_LEFT:I = 0x1

.field private static final SCROLL_RIGHT:I = 0x3

.field private static final SCROLL_TOP:I = 0x2

.field private static final SHOW_CURSOR_HALO_DELAY:I = 0x7d0

.field private static final STATUSBAR_HEIGHT:I = 0x1050004

.field private static final TARGET_TEXT_SIZE:I = 0x1050010

.field private static final TOUCH_DOWN_TIMEOUT:I = 0x96


# instance fields
.field private mAllowScrolling:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mCursorDistance:I

.field private mCursorHaloImage:Landroid/graphics/drawable/Drawable;

.field private mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

.field private mCursorIdleDelay:I

.field private mCursorIdleImage:Landroid/graphics/drawable/Drawable;

.field private mCursorSelected:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mHasWindowFocus:Z

.field private mIsCcpContextMenuAllowed:Z

.field private mIsCursorIdle:Z

.field private mIsViewClickable:Z

.field private mIsViewLongClickable:Z

.field private mLastCursorX:I

.field private mLastCursorY:I

.field private mLastScrollTime:J

.field private mLastSelEnd:I

.field private mLastSelStart:I

.field private mLastTouchControlOffsetY:I

.field private mLastTouchEvent:Landroid/view/MotionEvent;

.field private mMaxScrollX:I

.field private mMaxScrollY:I

.field private mResCursorSensitivity:I

.field private mResLoupeTextSize:F

.field private mResOverlayHeight:I

.field private mResOverlayWidth:I

.field private mResScrollAccelration:F

.field private mResScrollActivationMargin:I

.field private mResScrollFrameDuration:I

.field private mResScrollMinSpeed:I

.field private mResStatusBarHeight:I

.field private mScreenLocation:[I

.field private mScrollDirection:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mScrollSpeed:I

.field private mScrollTimerRunning:Z

.field private mShowCursorHalo:Z

.field private mShowTextOverlay:Ljava/lang/Runnable;

.field private mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

.field private mTimerRunning:Z

.field private final mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4
    .parameter "context"
    .parameter "v"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    iput-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    iput-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iput-boolean v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    iput-boolean v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsCcpContextMenuAllowed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHasWindowFocus:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScreenLocation:[I

    iput-boolean v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mAllowScrolling:Z

    iput-boolean v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollTimerRunning:Z

    iput-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastTouchEvent:Landroid/view/MotionEvent;

    iput-boolean v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsCursorIdle:Z

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleDelay:I

    iput v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastSelStart:I

    iput v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastSelEnd:I

    new-instance v0, Lcom/motorola/android/widget/TextViewHelper$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/widget/TextViewHelper$1;-><init>(Lcom/motorola/android/widget/TextViewHelper;)V

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/android/widget/TextViewHelper$2;

    invoke-direct {v0, p0}, Lcom/motorola/android/widget/TextViewHelper$2;-><init>(Lcom/motorola/android/widget/TextViewHelper;)V

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowTextOverlay:Ljava/lang/Runnable;

    new-instance v0, Lcom/motorola/android/widget/TextViewHelper$3;

    invoke-direct {v0, p0}, Lcom/motorola/android/widget/TextViewHelper$3;-><init>(Lcom/motorola/android/widget/TextViewHelper;)V

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->loadResources(Landroid/content/Context;)V

    sget-boolean v0, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/widget/TextViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->getProperties()V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/android/widget/TextViewHelper;FF)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/widget/TextViewHelper;->getCursorOffset(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/android/widget/TextViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/motorola/android/widget/TextViewHelper;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->updateSelection(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/motorola/android/widget/TextViewHelper;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->createAndShowTextOverlayAt(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/motorola/android/widget/TextViewHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastScrollTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/motorola/android/widget/TextViewHelper;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastScrollTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/motorola/android/widget/TextViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I

    return v0
.end method

.method static synthetic access$1500(Lcom/motorola/android/widget/TextViewHelper;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/motorola/android/widget/TextViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollFrameDuration:I

    return v0
.end method

.method static synthetic access$1700(Lcom/motorola/android/widget/TextViewHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/android/widget/TextViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$1900(Lcom/motorola/android/widget/TextViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollY:I

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/android/widget/TextViewHelper;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/motorola/android/widget/TextViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollX:I

    return v0
.end method

.method static synthetic access$2102(Lcom/motorola/android/widget/TextViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mAllowScrolling:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastTouchEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/motorola/android/widget/TextViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastTouchControlOffsetY:I

    return v0
.end method

.method static synthetic access$2400(Lcom/motorola/android/widget/TextViewHelper;)Lcom/motorola/android/widget/TextOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/motorola/android/widget/TextViewHelper;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->showTextOverlayAt(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/motorola/android/widget/TextViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollTimerRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/android/widget/TextViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->hideCursorHalo()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/android/widget/TextViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHasWindowFocus:Z

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/widget/TextViewHelper;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->createAndShowCursorHaloOverlayAt(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$702(Lcom/motorola/android/widget/TextViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsCursorIdle:Z

    return p1
.end method

.method static synthetic access$902(Lcom/motorola/android/widget/TextViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    return p1
.end method

.method private createAndShowCursorHaloOverlayAt(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/android/widget/CursorHaloOverlay;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/android/widget/CursorHaloOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->showCursorHaloOverlayAt(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private createAndShowTextOverlayAt(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/android/widget/TextOverlay;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/android/widget/TextOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/TextOverlay;->setView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    iget v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResOverlayWidth:I

    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mResOverlayHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/widget/TextOverlay;->setSize(II)V

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    iget v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResLoupeTextSize:F

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/TextOverlay;->setTextSize(F)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->showTextOverlayAt(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    return-void
.end method

.method private detectSelectionChange()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, selStart:I
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, selEnd:I
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastSelStart:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastSelEnd:I

    if-eq v0, v2, :cond_1

    :cond_0
    if-ne v1, v0, :cond_1

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->onNotIdle()V

    :cond_1
    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastSelStart:I

    iput v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastSelEnd:I

    return-void
.end method

.method private findNearestCursor(IIII)I
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/widget/TextViewHelper;->getDistanceToCursor(III)I

    move-result v1

    .local v1, distStart:I
    move v0, v1

    .local v0, distEnd:I
    if-eq p3, p4, :cond_0

    invoke-direct {p0, p1, p2, p4}, Lcom/motorola/android/widget/TextViewHelper;->getDistanceToCursor(III)I

    move-result v0

    :cond_0
    if-gt v1, v0, :cond_1

    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mResCursorSensitivity:I

    if-gt v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mResCursorSensitivity:I

    if-gt v0, v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCursorLine(FF)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    new-instance v0, Lcom/motorola/android/widget/TextViewHelper$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/widget/TextViewHelper$Cursor;-><init>(Lcom/motorola/android/widget/TextViewHelper;Lcom/motorola/android/widget/TextViewHelper$1;)V

    .local v0, cursor:Lcom/motorola/android/widget/TextViewHelper$Cursor;
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/widget/TextViewHelper;->getLineAndOffset(FFLcom/motorola/android/widget/TextViewHelper$Cursor;)V

    iget v1, v0, Lcom/motorola/android/widget/TextViewHelper$Cursor;->line:I

    return v1
.end method

.method private getCursorOffset(FF)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    new-instance v0, Lcom/motorola/android/widget/TextViewHelper$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/widget/TextViewHelper$Cursor;-><init>(Lcom/motorola/android/widget/TextViewHelper;Lcom/motorola/android/widget/TextViewHelper$1;)V

    .local v0, cursor:Lcom/motorola/android/widget/TextViewHelper$Cursor;
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/widget/TextViewHelper;->getLineAndOffset(FFLcom/motorola/android/widget/TextViewHelper$Cursor;)V

    iget v1, v0, Lcom/motorola/android/widget/TextViewHelper$Cursor;->offset:I

    return v1
.end method

.method private getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;II)V
    .locals 10
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"
    .parameter "caps"
    .parameter "fn"

    .prologue
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .local v4, layout:Landroid/text/Layout;
    invoke-virtual {v4, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .local v5, line:I
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .local v6, top:I
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .local v0, bottom:I
    invoke-virtual {v4, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    const/high16 v8, 0x3f00

    sub-float v2, v7, v8

    .local v2, h1:F
    invoke-virtual {v4, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v7

    const/high16 v8, 0x3f00

    sub-float v3, v7, v8

    .local v3, h2:F
    const/4 v1, 0x0

    .local v1, dist:I
    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    :cond_0
    sub-int v7, v0, v6

    shr-int/lit8 v1, v7, 0x2

    if-eqz p5, :cond_1

    add-int/2addr v6, v1

    :cond_1
    if-eqz p4, :cond_2

    sub-int/2addr v0, v1

    :cond_2
    const/high16 v7, 0x3f00

    cmpg-float v7, v2, v7

    if-gez v7, :cond_3

    const/high16 v2, 0x3f00

    :cond_3
    const/high16 v7, 0x3f00

    cmpg-float v7, v3, v7

    if-gez v7, :cond_4

    const/high16 v3, 0x3f00

    :cond_4
    cmpl-float v7, v2, v3

    if-nez v7, :cond_7

    int-to-float v7, v6

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v0

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    const/4 v7, 0x2

    if-ne p4, v7, :cond_8

    int-to-float v7, v0

    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v1

    sub-float v7, v3, v7

    add-int v8, v0, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v7, v0

    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v7, v1

    add-float/2addr v7, v3

    add-int v8, v0, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    :goto_1
    const/4 v7, 0x2

    if-ne p5, v7, :cond_9

    int-to-float v7, v6

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v1

    sub-float v7, v2, v7

    sub-int v8, v6, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v7, v6

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v7, v1

    add-float/2addr v7, v2

    sub-int v8, v6, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    int-to-float v7, v6

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    add-int v7, v6, v0

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int v7, v6, v0

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v0

    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_8
    const/4 v7, 0x1

    if-ne p4, v7, :cond_5

    int-to-float v7, v0

    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v1

    sub-float v7, v3, v7

    add-int v8, v0, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v7, v1

    sub-float v7, v3, v7

    add-int v8, v0, v1

    int-to-float v8, v8

    const/high16 v9, 0x3f00

    sub-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v1

    add-float/2addr v7, v3

    add-int v8, v0, v1

    int-to-float v8, v8

    const/high16 v9, 0x3f00

    sub-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v7, v1

    add-float/2addr v7, v3

    add-int v8, v0, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v0

    invoke-virtual {p2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_9
    const/4 v7, 0x1

    if-ne p5, v7, :cond_6

    int-to-float v7, v6

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v1

    sub-float v7, v2, v7

    sub-int v8, v6, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v7, v1

    sub-float v7, v2, v7

    sub-int v8, v6, v1

    int-to-float v8, v8

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v1

    add-float/2addr v7, v2

    sub-int v8, v6, v1

    int-to-float v8, v8

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v7, v1

    add-float/2addr v7, v2

    sub-int v8, v6, v1

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v7, v6

    invoke-virtual {p2, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2
.end method

.method private getDistanceToCursor(III)I
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "cursorPos"

    .prologue
    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .local v4, layout:Landroid/text/Layout;
    invoke-virtual {v4, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .local v5, line:I
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .local v6, top:I
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .local v0, bottom:I
    invoke-virtual {v4, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v2, v8

    .local v2, h1:I
    invoke-virtual {v4, p3}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v8

    float-to-int v3, v8

    .local v3, h2:I
    add-int v8, v2, v3

    shr-int/lit8 v1, v8, 0x1

    .local v1, h:I
    add-int v8, v6, v0

    shr-int/lit8 v7, v8, 0x1

    .local v7, v:I
    sub-int v8, p1, v1

    int-to-double v8, v8

    sub-int v10, p2, v7

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-int v8, v8

    return v8
.end method

.method private getLineAndOffset(FFLcom/motorola/android/widget/TextViewHelper$Cursor;)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "c"

    .prologue
    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, layout:Landroid/text/Layout;
    float-to-int v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    iput v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->line:I

    iget v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->line:I

    invoke-virtual {v0, v1, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    iput v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->offset:I

    iget v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->offset:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->offset:I

    :cond_0
    iget v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->offset:I

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    iput v1, p3, Lcom/motorola/android/widget/TextViewHelper$Cursor;->offset:I

    :cond_1
    return-void
.end method

.method private getNonSpaceIndex(Ljava/lang/CharSequence;II)I
    .locals 1
    .parameter "str"
    .parameter "start"
    .parameter "limit"

    .prologue
    if-lt p2, p3, :cond_0

    if-ne p2, p3, :cond_1

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    if-gt p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lt p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return p2
.end method

.method private getProperties()V
    .locals 2

    .prologue
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleDelay:I

    :try_start_0
    const-string v0, "mot.sw.cursorposidledelay"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleDelay:I

    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleDelay:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleDelay:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getSpaceIndex(Ljava/lang/CharSequence;II)I
    .locals 1
    .parameter "str"
    .parameter "start"
    .parameter "limit"

    .prologue
    if-lt p2, p3, :cond_0

    if-ne p2, p3, :cond_1

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    if-gt p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lt p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return p2
.end method

.method private getWordBegin(I)I
    .locals 7
    .parameter "cursorPos"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v1

    .local v1, len:I
    if-nez v1, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, str:Ljava/lang/CharSequence;
    if-lt p1, v1, :cond_1

    sub-int v4, v1, v6

    move v0, v4

    .local v0, index:I
    :goto_1
    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    sub-int v4, v1, v6

    invoke-direct {p0, v3, v0, v4}, Lcom/motorola/android/widget/TextViewHelper;->getNonSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v2

    .local v2, start:I
    if-ne v2, v1, :cond_3

    move v4, v5

    goto :goto_0

    .end local v0           #index:I
    .end local v2           #start:I
    :cond_1
    move v0, p1

    goto :goto_1

    .restart local v0       #index:I
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .restart local v2       #start:I
    :cond_3
    move v4, v2

    goto :goto_0
.end method

.method private getWordEnd(I)I
    .locals 7
    .parameter "cursorPos"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v2

    .local v2, len:I
    if-nez v2, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, str:Ljava/lang/CharSequence;
    if-lt p1, v2, :cond_1

    sub-int v4, v2, v6

    move v1, v4

    .local v1, index:I
    :goto_1
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/motorola/android/widget/TextViewHelper;->getNonSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    .local v0, end:I
    if-ne v0, v5, :cond_2

    move v4, v5

    goto :goto_0

    .end local v0           #end:I
    .end local v1           #index:I
    :cond_1
    move v1, p1

    goto :goto_1

    .restart local v0       #end:I
    .restart local v1       #index:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_2
    move v4, v0

    goto :goto_0

    .end local v0           #end:I
    :cond_3
    sub-int v4, v2, v6

    invoke-direct {p0, v3, v1, v4}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    .restart local v0       #end:I
    goto :goto_2
.end method

.method private handleAutoScrolling(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastTouchEvent:Landroid/view/MotionEvent;

    iput v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastTouchControlOffsetY:I

    sget-boolean v4, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    invoke-virtual {v4}, Lcom/motorola/android/widget/CursorHaloOverlay;->getControlOffsetY()I

    move-result v4

    iput v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastTouchControlOffsetY:I

    :cond_0
    iput v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I

    iput v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    if-eq v0, v8, :cond_1

    if-ne v0, v9, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->stopScrolling()V

    :goto_0
    return-void

    :cond_2
    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v8, :cond_7

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    move v1, v4

    .local v1, layoutWidth:F
    :goto_1
    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v4, v1, v4

    float-to-int v4, v4

    iput v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollX:I

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollY:I

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollX:I

    if-gez v4, :cond_3

    iput v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollX:I

    :cond_3
    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollY:I

    if-gez v4, :cond_4

    iput v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollY:I

    .end local v1           #layoutWidth:F
    :cond_4
    sget-boolean v4, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-eqz v4, :cond_5

    sget-boolean v4, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-eqz v4, :cond_b

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloActive()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .local v3, y:F
    sget-boolean v4, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastTouchControlOffsetY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    :cond_6
    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_8

    const/4 v4, 0x4

    iput v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollMinSpeed:I

    int-to-float v4, v4

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    iget v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollAccelration:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    if-lez v4, :cond_b

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->startScrolling()V

    goto/16 :goto_0

    .end local v2           #x:F
    .end local v3           #y:F
    :cond_7
    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move v1, v4

    goto/16 :goto_1

    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_8
    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_9

    const/4 v4, 0x2

    iput v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollMinSpeed:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    iget v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollAccelration:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollY:I

    if-ge v4, v5, :cond_b

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->startScrolling()V

    goto/16 :goto_0

    :cond_9
    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_a

    iput v9, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollMinSpeed:I

    int-to-float v4, v4

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    iget v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollAccelration:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    if-lez v4, :cond_b

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->startScrolling()V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_b

    iput v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollDirection:I

    iget v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollMinSpeed:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollAccelration:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollSpeed:I

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mMaxScrollX:I

    if-ge v4, v5, :cond_b

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->startScrolling()V

    goto/16 :goto_0

    .end local v2           #x:F
    .end local v3           #y:F
    :cond_b
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->stopScrolling()V

    goto/16 :goto_0
.end method

.method private hideCursorHalo()V
    .locals 1

    .prologue
    sget-boolean v0, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/android/widget/TextViewHelper;->cancelPending(I)V

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    invoke-virtual {v0}, Lcom/motorola/android/widget/CursorHaloOverlay;->hide()V

    :cond_0
    return-void
.end method

.method private isCursorHaloActive()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    invoke-virtual {v0}, Lcom/motorola/android/widget/CursorHaloOverlay;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCursorControlMode()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInsideSelection(IIII)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    const/4 v4, 0x0

    if-ne p3, p4, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .local v1, line:I
    int-to-float v3, p1

    invoke-virtual {v0, v1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .local v2, offset:I
    if-ge p3, v2, :cond_1

    if-ge v2, p4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public static isReadOnly(Landroid/widget/TextView;)Z
    .locals 4
    .parameter "tv"

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    .local v1, movement:Landroid/text/method/MovementMethod;
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    .local v0, input:Landroid/text/method/KeyListener;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, str:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    instance-of v3, v2, Landroid/text/Spannable;

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isReadWrite(Landroid/widget/TextView;)Z
    .locals 4
    .parameter "tv"

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    .local v1, movement:Landroid/text/method/MovementMethod;
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    .local v0, input:Landroid/text/method/KeyListener;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, str:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    instance-of v3, v2, Landroid/text/Editable;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadResources(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x1050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResStatusBarHeight:I

    const v1, 0x1050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResLoupeTextSize:F

    const v1, 0x1050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResCursorSensitivity:I

    const v1, 0x1050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollMinSpeed:I

    const v1, 0x1050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollAccelration:F

    const v1, 0x1050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollActivationMargin:I

    const/16 v1, 0x21

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResScrollFrameDuration:I

    const v1, 0x105000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResOverlayWidth:I

    const v1, 0x105000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mResOverlayHeight:I

    sget-boolean v1, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v1, :cond_0

    const v1, 0x10803f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_0
    const v1, 0x10803fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private onNotIdle()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->getProperties()V

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloActive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->hideCursorHalo()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsCursorIdle:Z

    const/4 v0, 0x3

    iget v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleDelay:I

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->schedulePending(II)V

    :cond_1
    return-void
.end method

.method private selectNearestCursor(IIII)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/widget/TextViewHelper;->getDistanceToCursor(III)I

    move-result v1

    .local v1, distStart:I
    move v0, v1

    .local v0, distEnd:I
    if-eq p3, p4, :cond_0

    invoke-direct {p0, p1, p2, p4}, Lcom/motorola/android/widget/TextViewHelper;->getDistanceToCursor(III)I

    move-result v0

    :cond_0
    if-gt v1, v0, :cond_1

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorDistance:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    :goto_0
    return-void

    :cond_1
    iput v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorDistance:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    goto :goto_0
.end method

.method private showCursorHaloOverlayAt(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/motorola/android/widget/TextViewHelper;->cancelPending(I)V

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .local v4, layout:Landroid/text/Layout;
    iget v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .local v6, point:I
    :goto_0
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .local v5, line:I
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .local v7, top:I
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .local v0, bottom:I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v3, v8

    .local v3, h1:I
    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper;->mScreenLocation:[I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mScreenLocation:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    add-int/2addr v8, v3

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    sub-int v1, v8, v9

    .local v1, cx:I
    add-int v8, v7, v0

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper;->mScreenLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    sub-int v2, v8, v9

    .local v2, cy:I
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    invoke-virtual {v8}, Lcom/motorola/android/widget/CursorHaloOverlay;->show()V

    if-eqz p1, :cond_1

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/motorola/android/widget/CursorHaloOverlay;->setActive(Z)V

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    int-to-float v11, v1

    int-to-float v12, v2

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/motorola/android/widget/CursorHaloOverlay;->move(FFFF)V

    :goto_1
    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    iget-object v9, p0, Lcom/motorola/android/widget/TextViewHelper;->mScreenLocation:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/motorola/android/widget/TextViewHelper;->mScreenLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    iget-object v11, p0, Lcom/motorola/android/widget/TextViewHelper;->mScreenLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/motorola/android/widget/TextViewHelper;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    iget-object v13, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/motorola/android/widget/CursorHaloOverlay;->setTextViewRect(IIII)V

    return-void

    .end local v0           #bottom:I
    .end local v1           #cx:I
    .end local v2           #cy:I
    .end local v3           #h1:I
    .end local v5           #line:I
    .end local v6           #point:I
    .end local v7           #top:I
    :cond_0
    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .restart local v6       #point:I
    goto/16 :goto_0

    .restart local v0       #bottom:I
    .restart local v1       #cx:I
    .restart local v2       #cy:I
    .restart local v3       #h1:I
    .restart local v5       #line:I
    .restart local v7       #top:I
    :cond_1
    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/motorola/android/widget/CursorHaloOverlay;->setActive(Z)V

    iget-object v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    int-to-float v9, v1

    int-to-float v10, v2

    int-to-float v11, v1

    int-to-float v12, v2

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/motorola/android/widget/CursorHaloOverlay;->move(FFFF)V

    goto :goto_1
.end method

.method private showTextOverlayAt(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .local v1, tx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .local v2, ty:F
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, layout:Landroid/text/Layout;
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v2, v3

    :cond_1
    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Lcom/motorola/android/widget/TextOverlay;->setScrollPosition(FFI)V

    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/motorola/android/widget/TextOverlay;->move(FF)V

    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {v3}, Lcom/motorola/android/widget/TextOverlay;->show()V

    return-void
.end method

.method private startScrolling()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollTimerRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollTimerRunning:Z

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mLastScrollTime:J

    :cond_0
    return-void
.end method

.method private stopScrolling()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mScrollTimerRunning:Z

    return-void
.end method

.method private updateSelection(I)Z
    .locals 6
    .parameter "cursorPos"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-eqz v2, :cond_0

    :cond_0
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, selStart:I
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, selEnd:I
    if-ne v1, v0, :cond_2

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    :goto_0
    move v2, v5

    :goto_1
    return v2

    .restart local p0
    :cond_2
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-ne v2, v5, :cond_4

    if-lt p1, v0, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .restart local p0
    :cond_4
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    if-gt p1, v1, :cond_5

    move v2, v4

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .restart local p0
    :cond_6
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->selectWordBoundary(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    return-void
.end method

.method public cancelPending(I)V
    .locals 1
    .parameter "what"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public drawCursorHalo(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    sget-boolean v12, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .local v9, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .local v8, selEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    move v12, v0

    if-eqz v12, :cond_0

    if-ne v9, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .local v5, layout:Landroid/text/Layout;
    move v7, v9

    .local v7, point:I
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, line:I
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .local v10, top:I
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v5, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .local v2, bottom:I
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v3, v12

    .local v3, h1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .local v11, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    div-int/lit8 v13, v11, 0x2

    sub-int v13, v3, v13

    add-int v14, v10, v2

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v4, 0x2

    sub-int/2addr v14, v15

    div-int/lit8 v15, v11, 0x2

    add-int/2addr v15, v3

    add-int v16, v10, v2

    div-int/lit8 v16, v16, 0x2

    div-int/lit8 v17, v4, 0x2

    add-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v2           #bottom:I
    .end local v3           #h1:I
    .end local v4           #height:I
    .end local v5           #layout:Landroid/text/Layout;
    .end local v6           #line:I
    .end local v7           #point:I
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    .end local v10           #top:I
    .end local v11           #width:I
    :cond_0
    return-void
.end method

.method public drawReplacementCursor(Landroid/graphics/Canvas;Z)Z
    .locals 18
    .parameter "canvas"
    .parameter "blinkOn"

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/widget/TextViewHelper;->detectSelectionChange()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .local v9, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .local v8, selEnd:I
    if-eq v9, v8, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloActive()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mIsCursorIdle:Z

    move v12, v0

    if-eqz v12, :cond_3

    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .local v5, layout:Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .local v7, point:I
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, line:I
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    add-int/lit8 v10, v12, 0x3

    .local v10, top:I
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v5, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    add-int/lit8 v2, v12, 0x3

    .local v2, bottom:I
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v3, v12

    .local v3, h1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .local v11, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    div-int/lit8 v13, v11, 0x2

    sub-int v13, v3, v13

    add-int v14, v10, v2

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v4, 0x2

    sub-int/2addr v14, v15

    div-int/lit8 v15, v11, 0x2

    add-int/2addr v15, v3

    add-int v16, v10, v2

    div-int/lit8 v16, v16, 0x2

    div-int/lit8 v17, v4, 0x2

    add-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v2           #bottom:I
    .end local v3           #h1:I
    .end local v4           #height:I
    .end local v5           #layout:Landroid/text/Layout;
    .end local v6           #line:I
    .end local v7           #point:I
    .end local v10           #top:I
    .end local v11           #width:I
    :cond_2
    const/4 v12, 0x1

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public drawSelectionCursors(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-boolean v0, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, selStart:I
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .local v7, selEnd:I
    if-eq v1, v7, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .local v12, paint:Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .local v2, path:Landroid/graphics/Path;
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/widget/TextViewHelper;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;II)V

    invoke-virtual {p1, v2, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/Path;

    .end local v2           #path:Landroid/graphics/Path;
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .restart local v2       #path:Landroid/graphics/Path;
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    move-object v6, p0

    move-object v8, v2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/motorola/android/widget/TextViewHelper;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;II)V

    invoke-virtual {p1, v2, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .end local v2           #path:Landroid/graphics/Path;
    .end local v12           #paint:Landroid/graphics/Paint;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .end local v1           #selStart:I
    .end local v7           #selEnd:I
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .restart local v1       #selStart:I
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .restart local v7       #selEnd:I
    if-eq v1, v7, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .restart local v12       #paint:Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloActive()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .restart local v2       #path:Landroid/graphics/Path;
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/widget/TextViewHelper;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;II)V

    invoke-virtual {p1, v2, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .end local v2           #path:Landroid/graphics/Path;
    :cond_3
    iget v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloActive()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .restart local v2       #path:Landroid/graphics/Path;
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    move-object v6, p0

    move-object v8, v2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/motorola/android/widget/TextViewHelper;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;II)V

    invoke-virtual {p1, v2, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getCursorHaloRadius()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-boolean v2, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsCursorIdle:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .local v0, rx:I
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorIdleImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    .local v1, ry:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .end local v0           #rx:I
    .end local v1           #ry:I
    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public isCcpContextMenuAllowed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsCcpContextMenuAllowed:Z

    return v0
.end method

.method public isCursorHaloOverlayVisible()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    invoke-virtual {v0}, Lcom/motorola/android/widget/CursorHaloOverlay;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCursorHaloVisible()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v2, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, selStart:I
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, selEnd:I
    iget-boolean v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    if-eqz v2, :cond_0

    if-ne v1, v0, :cond_0

    move v2, v4

    .end local v0           #selEnd:I
    .end local v1           #selStart:I
    :goto_0
    return v2

    .restart local v0       #selEnd:I
    .restart local v1       #selStart:I
    :cond_0
    move v2, v3

    goto :goto_0

    .end local v0           #selEnd:I
    .end local v1           #selStart:I
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloOverlayVisible()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsCursorIdle:Z

    if-eqz v2, :cond_3

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public isNonCcpContextMenuAllowed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsCcpContextMenuAllowed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingAllowed()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mAllowScrolling:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectionChangeAllowed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloActive()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onCommitSelection()V
    .locals 4

    .prologue
    sget-boolean v2, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v2, :cond_0

    const-string v2, "TextViewHelper"

    const-string v3, "onCommitSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloActive()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, selStart:I
    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, selEnd:I
    if-ne v1, v0, :cond_1

    .end local v0           #selEnd:I
    .end local v1           #selStart:I
    :cond_0
    :goto_0
    return-void

    .restart local v0       #selEnd:I
    .restart local v1       #selStart:I
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->hideCursorHalo()V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    sget-boolean v5, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v5, :cond_2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iput v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, layout:Landroid/text/Layout;
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .local v2, selStart:I
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .local v1, selEnd:I
    if-gez v2, :cond_0

    if-ltz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float v3, v5, v6

    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float v4, v5, v6

    .local v4, y:F
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v5, v3

    float-to-int v6, v4

    invoke-direct {p0, v5, v6, v2, v1}, Lcom/motorola/android/widget/TextViewHelper;->findNearestCursor(IIII)I

    move-result v5

    iput v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->cancelLongPress()V

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowTextOverlay:Ljava/lang/Runnable;

    const-wide/16 v7, 0x96

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v9, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    .end local v3           #x:F
    .end local v4           #y:F
    :cond_1
    :goto_0
    return v9

    .end local v0           #layout:Landroid/text/Layout;
    .end local v1           #selEnd:I
    .end local v2           #selStart:I
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iput v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isClickable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsViewClickable:Z

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsViewLongClickable:Z

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .restart local v0       #layout:Landroid/text/Layout;
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .restart local v2       #selStart:I
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .restart local v1       #selEnd:I
    if-gez v2, :cond_3

    if-ltz v1, :cond_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float v3, v5, v6

    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float v4, v5, v6

    .restart local v4       #y:F
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v5, v3

    float-to-int v6, v4

    invoke-direct {p0, v5, v6, v2, v1}, Lcom/motorola/android/widget/TextViewHelper;->selectNearestCursor(IIII)V

    float-to-int v5, v3

    float-to-int v6, v4

    invoke-direct {p0, v5, v6, v2, v1}, Lcom/motorola/android/widget/TextViewHelper;->isInsideSelection(IIII)Z

    move-result v5

    if-nez v5, :cond_4

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorDistance:I

    iget v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mResCursorSensitivity:I

    if-gt v5, v6, :cond_6

    :cond_4
    move v5, v9

    :goto_1
    iput-boolean v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsCcpContextMenuAllowed:Z

    iget v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloOverlayVisible()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x2

    const/16 v6, 0x96

    invoke-virtual {p0, v5, v6}, Lcom/motorola/android/widget/TextViewHelper;->schedulePending(II)V

    :cond_5
    invoke-virtual {p0, v9}, Lcom/motorola/android/widget/TextViewHelper;->cancelPending(I)V

    goto/16 :goto_0

    :cond_6
    move v5, v7

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "ev1"
    .parameter "ev2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    sget-boolean v2, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowTextOverlay:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/motorola/android/widget/TextViewHelper;->getCursorOffset(FF)I

    move-result v1

    .local v1, cursorPos:I
    const/4 v0, -0x1

    .local v0, cpos:I
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-ne v2, v5, :cond_4

    invoke-direct {p0, v1}, Lcom/motorola/android/widget/TextViewHelper;->getWordBegin(I)I

    move-result v0

    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-gt v0, v2, :cond_2

    move v1, v0

    :cond_2
    invoke-direct {p0, v1}, Lcom/motorola/android/widget/TextViewHelper;->updateSelection(I)Z

    .end local v0           #cpos:I
    .end local v1           #cursorPos:I
    :cond_3
    :goto_1
    return v5

    .restart local v0       #cpos:I
    .restart local v1       #cursorPos:I
    :cond_4
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-ne v2, v6, :cond_1

    invoke-direct {p0, v1}, Lcom/motorola/android/widget/TextViewHelper;->getWordEnd(I)I

    move-result v0

    goto :goto_0

    .end local v0           #cpos:I
    .end local v1           #cursorPos:I
    :cond_5
    invoke-virtual {p0, v6}, Lcom/motorola/android/widget/TextViewHelper;->cancelPending(I)V

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    invoke-virtual {v4}, Lcom/motorola/android/widget/CursorHaloOverlay;->getControlOffsetY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/motorola/android/widget/TextViewHelper;->getCursorOffset(FF)I

    move-result v1

    .restart local v1       #cursorPos:I
    const/4 v0, -0x1

    .restart local v0       #cpos:I
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-ne v2, v5, :cond_8

    invoke-direct {p0, v1}, Lcom/motorola/android/widget/TextViewHelper;->getWordBegin(I)I

    move-result v0

    :cond_6
    :goto_2
    if-ltz v0, :cond_7

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-gt v0, v2, :cond_7

    move v1, v0

    :cond_7
    invoke-direct {p0, v1}, Lcom/motorola/android/widget/TextViewHelper;->updateSelection(I)Z

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    if-ne v2, v6, :cond_6

    invoke-direct {p0, v1}, Lcom/motorola/android/widget/TextViewHelper;->getWordEnd(I)I

    move-result v0

    goto :goto_2
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    sget-boolean v0, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->hideCursorHalo()V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "ev1"
    .parameter "ev2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x0

    sget-boolean v0, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowTextOverlay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->getCursorOffset(FF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/android/widget/TextViewHelper;->updateSelection(I)Z

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {v0}, Lcom/motorola/android/widget/TextOverlay;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/motorola/android/widget/TextViewHelper;->showTextOverlayAt(Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-direct {p0, p2}, Lcom/motorola/android/widget/TextViewHelper;->createAndShowTextOverlayAt(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/motorola/android/widget/TextViewHelper;->cancelPending(I)V

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->cancelLongPress()V

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPressed(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloOverlayVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p2}, Lcom/motorola/android/widget/TextViewHelper;->showCursorHaloOverlayAt(Landroid/view/MotionEvent;)V

    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    invoke-virtual {v2}, Lcom/motorola/android/widget/CursorHaloOverlay;->getControlOffsetY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->getCursorOffset(FF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/android/widget/TextViewHelper;->updateSelection(I)Z

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2}, Lcom/motorola/android/widget/TextViewHelper;->createAndShowCursorHaloOverlayAt(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->onNotIdle()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .local v1, handled:Z
    sget-boolean v5, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v5, :cond_5

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->isInCursorControlMode()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->handleAutoScrolling(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    if-eq v0, v7, :cond_1

    if-ne v0, v6, :cond_4

    :cond_1
    iget-boolean v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowTextOverlay:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z

    :cond_2
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {v5}, Lcom/motorola/android/widget/TextOverlay;->isShown()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {v5}, Lcom/motorola/android/widget/TextOverlay;->hide()V

    :cond_3
    iput v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .local v4, selStart:I
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .local v3, selEnd:I
    if-ne v4, v3, :cond_4

    iput-boolean v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_4
    :goto_0
    return v1

    .end local v0           #action:I
    :cond_5
    invoke-direct {p0, p1}, Lcom/motorola/android/widget/TextViewHelper;->handleAutoScrolling(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .restart local v0       #action:I
    if-eq v0, v7, :cond_6

    if-ne v0, v6, :cond_4

    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsViewClickable:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsViewLongClickable:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLongClickable(Z)V

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/motorola/android/widget/TextViewHelper;->cancelPending(I)V

    invoke-virtual {p0}, Lcom/motorola/android/widget/TextViewHelper;->isCursorHaloOverlayVisible()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->hideCursorHalo()V

    iput-boolean v7, p0, Lcom/motorola/android/widget/TextViewHelper;->mIsCursorIdle:Z

    :cond_7
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorHaloOverlay:Lcom/motorola/android/widget/CursorHaloOverlay;

    invoke-virtual {v5, v8}, Lcom/motorola/android/widget/CursorHaloOverlay;->setLock(Z)V

    :cond_8
    iput v8, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->getProperties()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    const/4 v1, 0x0

    sget-boolean v0, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v0, :cond_2

    iput-boolean p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mHasWindowFocus:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {v0}, Lcom/motorola/android/widget/TextOverlay;->hide()V

    :cond_0
    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    :cond_1
    iput-boolean v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :goto_0
    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/motorola/android/widget/TextViewHelper;->mHasWindowFocus:Z

    if-nez p1, :cond_3

    iput v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    :cond_3
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->hideCursorHalo()V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mTextOverlay:Lcom/motorola/android/widget/TextOverlay;

    invoke-virtual {v0}, Lcom/motorola/android/widget/TextOverlay;->hide()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/widget/TextViewHelper;->mCursorSelected:I

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/motorola/android/widget/TextViewHelper;->hideCursorHalo()V

    goto :goto_0
.end method

.method public schedulePending(II)V
    .locals 4
    .parameter "what"
    .parameter "delay"

    .prologue
    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public selectWordBoundary(I)V
    .locals 9
    .parameter "cursorPos"

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v2

    .local v2, len:I
    if-nez v2, :cond_1

    .end local p0
    :cond_0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, str:Ljava/lang/CharSequence;
    if-lt p1, v2, :cond_3

    sub-int v5, v2, v7

    move v1, v5

    .local v1, index:I
    :goto_1
    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0, v4, v1, v8}, Lcom/motorola/android/widget/TextViewHelper;->getNonSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v3

    .local v3, start:I
    sub-int v5, v2, v7

    invoke-direct {p0, v4, v1, v5}, Lcom/motorola/android/widget/TextViewHelper;->getNonSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    .local v0, end:I
    if-ne v3, v6, :cond_5

    if-eq v0, v2, :cond_2

    if-ne v0, v6, :cond_4

    :cond_2
    move v3, p1

    move v0, p1

    :goto_2
    if-ltz v3, :cond_0

    if-ltz v0, :cond_0

    iget-object v5, p0, Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .end local v0           #end:I
    .end local v1           #index:I
    .end local v3           #start:I
    .restart local p0
    :cond_3
    move v1, p1

    goto :goto_1

    .restart local v0       #end:I
    .restart local v1       #index:I
    .restart local v3       #start:I
    :cond_4
    move v3, v0

    sub-int v5, v2, v7

    invoke-direct {p0, v4, v0, v5}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_2

    :cond_5
    if-eq v0, v2, :cond_6

    sub-int v5, v1, v3

    sub-int v6, v0, v1

    if-ge v5, v6, :cond_7

    :cond_6
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v4, v3, v8}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    goto :goto_2

    :cond_7
    move v3, v0

    sub-int v5, v2, v7

    invoke-direct {p0, v4, v0, v5}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_2

    .end local v0           #end:I
    .end local v3           #start:I
    :cond_8
    invoke-direct {p0, v4, v1, v8}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .restart local v3       #start:I
    sub-int v5, v2, v7

    invoke-direct {p0, v4, v1, v5}, Lcom/motorola/android/widget/TextViewHelper;->getSpaceIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    .restart local v0       #end:I
    goto :goto_2
.end method
