.class public final Landroid/view/ViewRoot;
.super Landroid/os/Handler;
.source "ViewRoot.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRoot$RunQueue;,
        Landroid/view/ViewRoot$CalledFromWrongThreadException;,
        Landroid/view/ViewRoot$TrackballAxis;,
        Landroid/view/ViewRoot$W;,
        Landroid/view/ViewRoot$InputMethodCallback;,
        Landroid/view/ViewRoot$TakenSurfaceHolder;,
        Landroid/view/ViewRoot$ResizedInfo;
    }
.end annotation


# static fields
.field public static final CHECK_FOCUS:I = 0x3f5

.field public static final CLOSE_SYSTEM_DIALOGS:I = 0x3f6

.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT:Z = true

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field public static final DIE:I = 0x3e9

.field public static final DISPATCH_APP_VISIBILITY:I = 0x3f0

.field public static final DISPATCH_GET_NEW_SURFACE:I = 0x3f1

.field public static final DISPATCH_KEY:I = 0x3ed

.field public static final DISPATCH_KEY_FROM_IME:I = 0x3f3

.field public static final DISPATCH_POINTER:I = 0x3ee

.field public static final DISPATCH_TRACKBALL:I = 0x3ef

.field public static final DO_TRAVERSAL:I = 0x3e8

.field public static final FINISHED_EVENT:I = 0x3f2

.field public static final FINISH_INPUT_CONNECTION:I = 0x3f4

.field private static final LOCAL_LOGV:Z = false

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MEASURE_LATENCY:Z = false

.field public static final RESIZED:I = 0x3ea

.field public static final RESIZED_REPORT:I = 0x3eb

.field private static final SHOW_FPS:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewRoot"

.field private static final WATCH_POINTER:Z = false

.field public static final WINDOW_FOCUS_CHANGED:I = 0x3ec

.field private static lt:Landroid/os/LatencyTimer;

.field static mInitialized:Z

.field static final mStaticInit:Ljava/lang/Object;

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private static sDrawTime:I

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static sInstanceCount:J

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRoot$RunQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field mAddNesting:I

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field mCurScrollY:I

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field mDrawingAllowed:Z

.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFinishedCallback:Ljava/lang/Runnable;

.field mFirst:Z

.field mFocusedView:Landroid/view/View;

.field mFullRedrawNeeded:Z

.field mGL:Ljavax/microedition/khronos/opengles/GL11;

.field mGlCanvas:Landroid/graphics/Canvas;

.field mGlWanted:Z

.field mHasHadWindowFocus:Z

.field mHeight:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field mInputChannel:Landroid/view/InputChannel;

.field private final mInputHandler:Landroid/view/InputHandler;

.field final mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mIsAnimating:Z

.field mIsCreating:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastScrolledFocus:Landroid/view/View;

.field mLastTrackballTime:J

.field mLastWasImTarget:Z

.field mLayoutRequested:Z

.field final mLocation:Landroid/view/WindowLeaked;

.field mNewSurfaceNeeded:Z

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingEventSeq:I

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field private mProfile:Z

.field mRealFocusedView:Landroid/view/View;

.field mReportNextDraw:Z

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSoftInputMode:I

.field private final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

.field final mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalScheduled:Z

.field mUseGL:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRoot$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/ViewRoot;->sInstanceCount:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->mStaticInit:Ljava/lang/Object;

    sput-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    sput-boolean v2, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRoot;->mLastTrackballTime:J

    new-instance v0, Landroid/view/ViewRoot$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRoot$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

    new-instance v0, Landroid/view/ViewRoot$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRoot$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRoot;->mTmpLocation:[I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    iput v2, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v4, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mProfile:Z

    new-instance v0, Landroid/view/ViewRoot$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRoot$1;-><init>(Landroid/view/ViewRoot;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mInputHandler:Landroid/view/InputHandler;

    new-instance v0, Landroid/view/ViewRoot$2;

    invoke-direct {v0, p0}, Landroid/view/ViewRoot$2;-><init>(Landroid/view/ViewRoot;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRoot;->mThread:Ljava/lang/Thread;

    new-instance v0, Landroid/view/WindowLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    iget-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    iput v3, p0, Landroid/view/ViewRoot;->mWidth:I

    iput v3, p0, Landroid/view/ViewRoot;->mHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/ViewRoot$W;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewRoot$W;-><init>(Landroid/view/ViewRoot;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    new-instance v0, Landroid/view/ViewRoot$InputMethodCallback;

    invoke-direct {v0, p0}, Landroid/view/ViewRoot$InputMethodCallback;-><init>(Landroid/view/ViewRoot;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRoot;->mViewVisibility:I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    iput-boolean v4, p0, Landroid/view/ViewRoot;->mFirst:Z

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    new-instance v0, Landroid/view/View$AttachInfo;

    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-direct {v0, v1, v2, p0, p0}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRoot;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRoot;->mDensity:I

    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewRoot;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->startInputEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewRoot;Landroid/view/KeyEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchKey(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/ViewRoot;Landroid/view/MotionEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchMotion(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/ViewRoot;)Landroid/view/Surface;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    sget-object v0, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    sget-object v0, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static captureKeyLog(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "subTag"
    .parameter "ev"

    .prologue
    const/16 v3, 0x2c

    if-eqz p1, :cond_0

    const-string v1, "debug.captureevent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ViewRoot"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static captureMotionLog(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "subTag"
    .parameter "ev"

    .prologue
    const/16 v3, 0x2c

    if-eqz p1, :cond_0

    const-string v1, "debug.captureevent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ViewRoot"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkEglErrors()V
    .locals 2

    .prologue
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mUseGL:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, err:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyGL()V

    const/16 v1, 0x300e

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mGlWanted:Z

    .end local v0           #err:I
    :cond_0
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .local v0, action:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/view/ViewRoot;->isKeyboardKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "should not have changed focus when leaving touch mode while a view has focus."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRoot;->isDirectional(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v3}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_0
.end method

.method private deliverKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 5
    .parameter "event"
    .parameter "sendDone"

    .prologue
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    .local v0, handled:Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    :cond_0
    :goto_1
    return-void

    .end local v0           #handled:Z
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .restart local v0       #handled:Z
    :cond_2
    iget-boolean v3, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRoot;->enqueuePendingEvent(Ljava/lang/Object;Z)I

    move-result v2

    .local v2, seq:I
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewRoot;->mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

    invoke-virtual {v1, v3, v2, p1, v4}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    goto :goto_1

    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #seq:I
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V

    goto :goto_1
.end method

.method private deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V
    .locals 9
    .parameter "event"
    .parameter "sendDone"

    .prologue
    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .local v0, action:I
    if-nez v0, :cond_1

    const/4 v7, 0x1

    move v4, v7

    .local v4, isDown:Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_0

    .end local v0           #action:I
    .end local v4           #isDown:Z
    :goto_1
    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    :cond_0
    return-void

    .restart local v0       #action:I
    :cond_1
    const/4 v7, 0x0

    move v4, v7

    goto :goto_0

    .restart local v4       #isDown:Z
    :cond_2
    :try_start_1
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    .local v5, keyHandled:Z
    if-nez v5, :cond_5

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    .local v1, direction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_2
    if-eqz v1, :cond_5

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .local v3, focused:Landroid/view/View;
    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v6

    .local v6, v:Landroid/view/View;
    const/4 v2, 0x0

    .local v2, focusPassed:Z
    if-eqz v6, :cond_4

    if-eq v6, v3, :cond_4

    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v8}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_3
    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v7}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    :cond_4
    if-nez v2, :cond_7

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7, v3, v1}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    .end local v0           #action:I
    .end local v1           #direction:I
    .end local v2           #focusPassed:Z
    .end local v3           #focused:Landroid/view/View;
    .end local v4           #isDown:Z
    .end local v5           #keyHandled:Z
    .end local v6           #v:Landroid/view/View;
    :cond_5
    :goto_4
    if-eqz p2, :cond_0

    goto :goto_1

    .restart local v0       #action:I
    .restart local v1       #direction:I
    .restart local v4       #isDown:Z
    .restart local v5       #keyHandled:Z
    :pswitch_0
    const/16 v1, 0x11

    goto :goto_2

    :pswitch_1
    const/16 v1, 0x42

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x21

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x82

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    move-object v3, v7

    goto :goto_3

    .restart local v2       #focusPassed:Z
    .restart local v3       #focused:Landroid/view/View;
    .restart local v6       #v:Landroid/view/View;
    :cond_7
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/ViewRoot;->playSoundEffect(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .end local v0           #action:I
    .end local v1           #direction:I
    .end local v2           #focusPassed:Z
    .end local v3           #focused:Landroid/view/View;
    .end local v4           #isDown:Z
    .end local v5           #keyHandled:Z
    .end local v6           #v:Landroid/view/View;
    :catchall_0
    move-exception v7

    if-eqz p2, :cond_8

    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    :cond_8
    throw v7

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private deliverPointerEvent(Landroid/view/MotionEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    move v9, v12

    .local v9, isDown:Z
    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {p0, v12}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    :cond_1
    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .local v8, handled:Z
    if-nez v8, :cond_4

    if-eqz v9, :cond_4

    iget-object v0, p0, Landroid/view/ViewRoot;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v7

    .local v7, edgeSlop:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v6

    .local v6, edgeFlags:I
    const/16 v4, 0x21

    .local v4, direction:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .local v3, y:I
    const/4 v0, 0x2

    new-array v5, v0, [I

    .local v5, deltas:[I
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_7

    const/16 v4, 0x82

    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_6

    aput v7, v5, v11

    add-int/2addr v2, v7

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual/range {v0 .. v5}, Landroid/view/FocusFinder;->findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;

    move-result-object v10

    .local v10, nearest:Landroid/view/View;
    if-eqz v10, :cond_4

    aget v0, v5, v11

    int-to-float v0, v0

    aget v1, v5, v12

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .end local v2           #x:I
    .end local v3           #y:I
    .end local v4           #direction:I
    .end local v5           #deltas:[I
    .end local v6           #edgeFlags:I
    .end local v7           #edgeSlop:I
    .end local v8           #handled:Z
    .end local v9           #isDown:Z
    .end local v10           #nearest:Landroid/view/View;
    :cond_4
    return-void

    :cond_5
    move v9, v11

    goto :goto_0

    .restart local v2       #x:I
    .restart local v3       #y:I
    .restart local v4       #direction:I
    .restart local v5       #deltas:[I
    .restart local v6       #edgeFlags:I
    .restart local v7       #edgeSlop:I
    .restart local v8       #handled:Z
    .restart local v9       #isDown:Z
    :cond_6
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_3

    neg-int v0, v7

    aput v0, v5, v11

    sub-int/2addr v2, v7

    goto :goto_1

    :cond_7
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_9

    const/16 v4, 0x21

    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_8

    aput v7, v5, v11

    add-int/2addr v2, v7

    goto :goto_1

    :cond_8
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_3

    neg-int v0, v7

    aput v0, v5, v11

    sub-int/2addr v2, v7

    goto :goto_1

    :cond_9
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_a

    const/16 v4, 0x42

    goto :goto_1

    :cond_a
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_3

    const/16 v4, 0x11

    goto :goto_1
.end method

.method private deliverTrackballEvent(Landroid/view/MotionEvent;)V
    .locals 32
    .parameter "event"

    .prologue
    const/16 v26, 0x0

    .local v26, handled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v26

    if-eqz v26, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

    move-object/from16 v28, v0

    .local v28, x:Landroid/view/ViewRoot$TrackballAxis;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

    move-object/from16 v30, v0

    .local v30, y:Landroid/view/ViewRoot$TrackballAxis;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .local v6, curTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ViewRoot;->mLastTrackballTime:J

    move-wide v8, v0

    const-wide/16 v10, 0xfa

    add-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-gez v5, :cond_2

    const/4 v5, 0x0

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewRoot;->mLastTrackballTime:J

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v25

    .local v25, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    .local v13, metastate:I
    packed-switch v25, :pswitch_data_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const-string v10, "X"

    move-object/from16 v0, v28

    move v1, v5

    move-wide v2, v8

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewRoot$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v29

    .local v29, xOff:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const-string v10, "Y"

    move-object/from16 v0, v30

    move v1, v5

    move-wide v2, v8

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewRoot$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v31

    .local v31, yOff:F
    const/4 v11, 0x0

    .local v11, keycode:I
    const/16 v27, 0x0

    .local v27, movement:I
    const/high16 v23, 0x3f80

    .local v23, accel:F
    cmpl-float v5, v29, v31

    if-lez v5, :cond_7

    const/high16 v5, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v8

    div-float/2addr v5, v8

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->generate(F)I

    move-result v27

    if-eqz v27, :cond_3

    if-lez v27, :cond_6

    const/16 v5, 0x16

    move v11, v5

    :goto_2
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    move/from16 v23, v0

    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    :cond_3
    :goto_3
    if-eqz v11, :cond_0

    if-gez v27, :cond_4

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    :cond_4
    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v23

    move v0, v5

    float-to-int v0, v0

    move/from16 v24, v0

    .local v24, accelMovement:I
    move/from16 v0, v24

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    add-int/lit8 v27, v27, -0x1

    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x2

    sub-int v12, v24, v27

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    :cond_5
    :goto_4
    if-lez v27, :cond_9

    add-int/lit8 v27, v27, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    new-instance v14, Landroid/view/KeyEvent;

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v22

    move-wide v15, v6

    move-wide/from16 v17, v6

    move/from16 v20, v11

    invoke-direct/range {v14 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_4

    .end local v11           #keycode:I
    .end local v23           #accel:F
    .end local v24           #accelMovement:I
    .end local v27           #movement:I
    .end local v29           #xOff:F
    .end local v31           #yOff:F
    :pswitch_0
    const/4 v5, 0x2

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    const/16 v11, 0x17

    const/4 v12, 0x0

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1

    :pswitch_1
    const/4 v5, 0x2

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/16 v11, 0x17

    const/4 v12, 0x0

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1

    .restart local v11       #keycode:I
    .restart local v23       #accel:F
    .restart local v27       #movement:I
    .restart local v29       #xOff:F
    .restart local v31       #yOff:F
    :cond_6
    const/16 v5, 0x15

    move v11, v5

    goto/16 :goto_2

    :cond_7
    const/4 v5, 0x0

    cmpl-float v5, v31, v5

    if-lez v5, :cond_3

    const/high16 v5, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v8

    div-float/2addr v5, v8

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->generate(F)I

    move-result v27

    if-eqz v27, :cond_3

    if-lez v27, :cond_8

    const/16 v5, 0x14

    move v11, v5

    :goto_5
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    move/from16 v23, v0

    const/4 v5, 0x2

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    goto/16 :goto_3

    :cond_8
    const/16 v5, 0x13

    move v11, v5

    goto :goto_5

    .restart local v24       #accelMovement:I
    :cond_9
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewRoot;->mLastTrackballTime:J

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private destroyGL()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Landroid/view/ViewRoot;->nativeAbandonGlCaches()V

    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/ViewRoot;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v5, p0, Landroid/view/ViewRoot;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v5, p0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v5, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v5, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iput-object v5, p0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    iput-object v5, p0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mUseGL:Z

    return-void
.end method

.method private dispatchKey(Landroid/view/KeyEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dispatchMotion(Landroid/view/MotionEvent;Z)V
    .locals 4
    .parameter "event"
    .parameter "sendDone"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .local v0, source:I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchPointer(Landroid/view/MotionEvent;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchTrackball(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "ViewRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping unsupported motion event (unimplemented): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    goto :goto_0
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/16 v1, 0x3ee

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dispatchTrackball(Landroid/view/MotionEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private draw(Z)V
    .locals 26
    .parameter "fullRedrawNeeded"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object/from16 v18, v0

    .local v18, surface:Landroid/view/Surface;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/view/Surface;->isValid()Z

    move-result v21

    if-nez v21, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v21, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    if-nez v21, :cond_3

    sget-object v21, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v21

    const/16 v22, 0x1

    :try_start_0
    sput-boolean v22, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    sget-object v22, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    sget-object v22, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10           #i:I
    :cond_3
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRoot;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v21, 0x1

    move/from16 v15, v21

    .local v15, scrolling:Z
    :goto_2
    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->getCurrY()I

    move-result v20

    .local v20, yoff:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mCurScrollY:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mCurScrollY:I

    const/16 p1, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move v5, v0

    .local v5, appScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move v14, v0

    .local v14, scalingRequired:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    move-object v8, v0

    .local v8, dirty:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0

    .end local v5           #appScale:F
    .end local v8           #dirty:Landroid/graphics/Rect;
    .end local v14           #scalingRequired:Z
    .end local v15           #scrolling:Z
    .end local v20           #yoff:I
    :catchall_0
    move-exception v22

    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22

    :cond_6
    const/16 v21, 0x0

    move/from16 v15, v21

    goto :goto_2

    .restart local v15       #scrolling:Z
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mScrollY:I

    move/from16 v20, v0

    .restart local v20       #yoff:I
    goto :goto_3

    .restart local v5       #appScale:F
    .restart local v8       #dirty:Landroid/graphics/Rect;
    .restart local v14       #scalingRequired:Z
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v7, v0

    .local v7, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    const/16 v22, 0xc11

    invoke-interface/range {v21 .. v22}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-interface/range {v21 .. v25}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    const/16 v22, 0x4000

    invoke-interface/range {v21 .. v22}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    const/16 v22, 0xc11

    invoke-interface/range {v21 .. v22}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x20

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v13

    .local v13, saveCount:I
    const/16 v21, 0x0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    :try_start_2
    move-object v0, v7

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    :cond_9
    if-eqz v14, :cond_b

    sget v21, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_4
    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->checkEglErrors()V

    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v13           #saveCount:I
    :cond_a
    if-eqz v15, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_0

    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v13       #saveCount:I
    :cond_b
    const/16 v21, 0x0

    goto :goto_4

    :catchall_1
    move-exception v21

    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v21

    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v13           #saveCount:I
    :cond_c
    if-eqz p1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v5

    const/high16 v25, 0x3f00

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object v0, v8

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    :cond_d
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mIsAnimating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_16

    :cond_e
    :try_start_3
    iget v11, v8, Landroid/graphics/Rect;->left:I

    .local v11, left:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .local v19, top:I
    iget v12, v8, Landroid/graphics/Rect;->right:I

    .local v12, right:I
    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    .local v6, bottom:I
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v7

    .restart local v7       #canvas:Landroid/graphics/Canvas;
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move v0, v12

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move v0, v6

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mDensity:I

    move/from16 v21, v0

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mIsAnimating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_15

    :cond_11
    const-wide/16 v16, 0x0

    .local v16, startTime:J
    invoke-virtual {v7}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v21

    if-eqz v21, :cond_12

    if-eqz v20, :cond_13

    :cond_12
    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v7

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_13
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsAnimating:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x20

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v13

    .restart local v13       #saveCount:I
    const/16 v21, 0x0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    :try_start_5
    move-object v0, v7

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    :cond_14
    if-eqz v14, :cond_17

    sget v21, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_5
    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .end local v13           #saveCount:I
    .end local v16           #startTime:J
    :cond_15
    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .end local v6           #bottom:I
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v11           #left:I
    .end local v12           #right:I
    .end local v19           #top:I
    :cond_16
    if-eqz v15, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_0

    :catch_0
    move-exception v21

    move-object/from16 v9, v21

    .local v9, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v21, "ViewRoot"

    const-string v22, "OutOfResourcesException locking surface"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v9           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v21

    move-object/from16 v9, v21

    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v21, "ViewRoot"

    const-string v22, "IllegalArgumentException locking surface"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #bottom:I
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v11       #left:I
    .restart local v12       #right:I
    .restart local v13       #saveCount:I
    .restart local v16       #startTime:J
    .restart local v19       #top:I
    :cond_17
    const/16 v21, 0x0

    goto :goto_5

    :catchall_2
    move-exception v21

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v13           #saveCount:I
    .end local v16           #startTime:J
    :catchall_3
    move-exception v21

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v21
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 1
    .parameter "inTouchMode"

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRoot;->enterTouchMode()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRoot;->leaveTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method private enterTouchMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .local v1, focused:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Landroid/view/ViewRoot;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .local v0, ancestorToTakeFocus:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :goto_0
    return v2

    .restart local v0       #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .restart local v1       #focused:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->unFocus()V

    iget-object v2, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    iput-object v3, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    const/4 v2, 0x1

    goto :goto_0

    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 6
    .parameter "focused"

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .local v2, vgParent:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .end local v2           #vgParent:Landroid/view/ViewGroup;
    :goto_1
    return-object v3

    .restart local v2       #vgParent:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .end local v2           #vgParent:Landroid/view/ViewGroup;
    :cond_2
    move-object v3, v5

    goto :goto_1
.end method

.method private finishInputEvent()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot;->mFinishedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRoot;->mFinishedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRoot;->mFinishedCallback:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ViewRoot"

    const-string v1, "Attempted to tell the input queue that the current input event is finished but there is no input event actually in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewRoot;->forceLayout(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_0
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static getInstanceCount()J
    .locals 2

    .prologue
    sget-wide v0, Landroid/view/ViewRoot;->sInstanceCount:J

    return-wide v0
.end method

.method private getRootMeasureSpec(II)I
    .locals 2
    .parameter "windowSize"
    .parameter "rootDimension"

    .prologue
    const/high16 v1, 0x4000

    packed-switch p2, :pswitch_data_0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, measureSpec:I
    :goto_0
    return v0

    .end local v0           #measureSpec:I
    :pswitch_0
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #measureSpec:I
    goto :goto_0

    .end local v0           #measureSpec:I
    :pswitch_1
    const/high16 v1, -0x8000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #measureSpec:I
    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRoot$RunQueue;
    .locals 2

    .prologue
    sget-object v1, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot$RunQueue;

    .local v0, rq:Landroid/view/ViewRoot$RunQueue;
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewRoot$RunQueue;

    .end local v0           #rq:Landroid/view/ViewRoot$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRoot$RunQueue;-><init>()V

    .restart local v0       #rq:Landroid/view/ViewRoot$RunQueue;
    sget-object v1, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;
    .locals 5
    .parameter "mainLooper"

    .prologue
    sget-object v1, Landroid/view/ViewRoot;->mStaticInit:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v2

    sput-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    const/4 v2, 0x1

    sput-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initializeGL()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/view/ViewRoot;->initializeGLInner()V

    iget-object v1, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, err:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyGL()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mGlWanted:Z

    :cond_0
    return-void
.end method

.method private initializeGLInner()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .local v0, egl:Ljavax/microedition/khronos/egl/EGL10;
    iput-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .local v1, eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    iput-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v11, 0x2

    new-array v10, v11, [I

    .local v10, version:[I
    invoke-interface {v0, v1, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/16 v11, 0x9

    new-array v2, v11, [I

    fill-array-data v2, :array_0

    .local v2, configSpec:[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v4, [I

    .local v5, num_config:[I
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v11, 0x0

    aget-object v6, v3, v11

    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v6, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v7

    .local v7, context:Ljavax/microedition/khronos/egl/EGLContext;
    iput-object v7, p0, Landroid/view/ViewRoot;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v11, p0, Landroid/view/ViewRoot;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1, v6, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v9

    .local v9, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    iput-object v9, p0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v9, v9, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-virtual {v7}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v8

    check-cast v8, Ljavax/microedition/khronos/opengles/GL11;

    .local v8, gl:Ljavax/microedition/khronos/opengles/GL11;
    iput-object v8, p0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v8}, Landroid/graphics/Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    iput-object v11, p0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    iput-boolean v4, p0, Landroid/view/ViewRoot;->mUseGL:Z

    return-void

    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method static isDirectional(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isInTouchMode()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/view/ViewRoot;->mInitialized:Z

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKeyboardKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyEvent"

    .prologue
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .local v0, convertedKey:I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    if-ne p0, p1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRoot;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private leaveTouchMode()Z
    .locals 5

    .prologue
    const/16 v4, 0x82

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewRoot;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    goto :goto_0

    .end local v0           #focused:Landroid/view/View;
    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method private static native nativeAbandonGlCaches()V
.end method

.method private static native nativeShowFPS(Landroid/graphics/Canvas;I)V
.end method

.method private performTraversals()V
    .locals 62

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v34, v0

    .local v34, host:Landroid/view/View;
    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v6, v0

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    const/16 v60, 0x0

    .local v60, windowResizesToFitContent:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    move/from16 v29, v0

    .local v29, fullRedrawNeeded:Z
    const/16 v45, 0x0

    .local v45, newSurface:Z
    const/16 v53, 0x0

    .local v53, surfaceChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v43, v0

    .local v43, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v14, v0

    .local v14, attachInfo:Landroid/view/View$AttachInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->getHostVisibility()I

    move-result v55

    .local v55, viewVisibility:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mViewVisibility:I

    move v6, v0

    move v0, v6

    move/from16 v1, v55

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    move v6, v0

    if-eqz v6, :cond_e

    :cond_2
    const/4 v6, 0x1

    move/from16 v56, v6

    .local v56, viewVisibilityChanged:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget v12, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .local v12, appScale:F
    const/16 v48, 0x0

    .local v48, params:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    move v6, v0

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    const/16 v53, 0x1

    move-object/from16 v48, v43

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    .local v28, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-eqz v6, :cond_10

    const/16 v29, 0x1

    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v47

    .local v47, packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v47

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    .local v24, desiredWindowWidth:I
    move-object/from16 v0, v47

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    .local v23, desiredWindowHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    iput-object v6, v14, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v6, v0

    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v6

    if-nez v6, :cond_4

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    :cond_4
    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    move/from16 v0, v55

    move-object v1, v14

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    const/16 v56, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const/4 v6, 0x0

    move-object/from16 v0, v34

    move-object v1, v14

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .end local v47           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_5
    :goto_3
    if-eqz v56, :cond_8

    move/from16 v0, v55

    move-object v1, v14

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    move-object/from16 v0, v34

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    if-nez v55, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    move v6, v0

    if-eqz v6, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move v6, v0

    if-eqz v6, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->destroyGL()V

    :cond_7
    const/16 v6, 0x8

    move/from16 v0, v55

    move v1, v6

    if-ne v0, v1, :cond_8

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    :cond_8
    const/16 v40, 0x0

    .local v40, insetsChanged:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move v6, v0

    if-eqz v6, :cond_a

    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v6

    iget-object v7, v14, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/view/ViewRoot$RunQueue;->executeActions(Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-eqz v6, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    move v7, v0

    if-nez v7, :cond_12

    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    move v6, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    :cond_9
    :goto_5
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v6, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v19

    .local v19, childWidthMeasureSpec:I
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v6, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v18

    .local v18, childHeightMeasureSpec:I
    move-object/from16 v0, v34

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .end local v18           #childHeightMeasureSpec:I
    .end local v19           #childWidthMeasureSpec:I
    :cond_a
    iget-boolean v6, v14, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    move-object v0, v14

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move/from16 v46, v0

    .local v46, oldVal:Z
    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    const/4 v6, 0x0

    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    iget-boolean v6, v14, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move v0, v6

    move/from16 v1, v46

    if-eq v0, v1, :cond_b

    move-object/from16 v48, v43

    .end local v46           #oldVal:Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_c

    iget-boolean v6, v14, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v6, :cond_19

    :cond_c
    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mSoftInputMode:I

    move v6, v0

    move v0, v6

    and-int/lit16 v0, v0, 0xf0

    move/from16 v50, v0

    .local v50, resizeMode:I
    if-nez v50, :cond_19

    iget-object v6, v14, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, N:I
    const/16 v35, 0x0

    .local v35, i:I
    :goto_6
    move/from16 v0, v35

    move v1, v11

    if-ge v0, v1, :cond_17

    iget-object v6, v14, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v50, 0x10

    :cond_d
    add-int/lit8 v35, v35, 0x1

    goto :goto_6

    .end local v11           #N:I
    .end local v12           #appScale:F
    .end local v23           #desiredWindowHeight:I
    .end local v24           #desiredWindowWidth:I
    .end local v28           #frame:Landroid/graphics/Rect;
    .end local v35           #i:I
    .end local v40           #insetsChanged:Z
    .end local v48           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v50           #resizeMode:I
    .end local v56           #viewVisibilityChanged:Z
    :cond_e
    const/4 v6, 0x0

    move/from16 v56, v6

    goto/16 :goto_1

    .restart local v12       #appScale:F
    .restart local v23       #desiredWindowHeight:I
    .restart local v24       #desiredWindowWidth:I
    .restart local v28       #frame:Landroid/graphics/Rect;
    .restart local v47       #packageMetrics:Landroid/util/DisplayMetrics;
    .restart local v48       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v56       #viewVisibilityChanged:Z
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_2

    .end local v23           #desiredWindowHeight:I
    .end local v24           #desiredWindowWidth:I
    .end local v47           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_10
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v24

    .restart local v24       #desiredWindowWidth:I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v23

    .restart local v23       #desiredWindowHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move/from16 v0, v24

    move v1, v6

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move/from16 v0, v23

    move v1, v6

    if-eq v0, v1, :cond_5

    :cond_11
    const/16 v29, 0x1

    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    const/16 v60, 0x1

    goto/16 :goto_3

    .restart local v40       #insetsChanged:Z
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    const/16 v40, 0x1

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_15
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v6, v0

    const/4 v7, -0x2

    if-eq v6, v7, :cond_16

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v6, v0

    const/4 v7, -0x2

    if-ne v6, v7, :cond_9

    :cond_16
    const/16 v60, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v47

    .restart local v47       #packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v47

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    goto/16 :goto_5

    .end local v47           #packageMetrics:Landroid/util/DisplayMetrics;
    .restart local v11       #N:I
    .restart local v35       #i:I
    .restart local v50       #resizeMode:I
    :cond_17
    if-nez v50, :cond_18

    const/16 v50, 0x20

    :cond_18
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v6, v0

    and-int/lit16 v6, v6, 0xf0

    move v0, v6

    move/from16 v1, v50

    if-eq v0, v1, :cond_19

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v6, v0

    and-int/lit16 v6, v6, -0xf1

    or-int v6, v6, v50

    move v0, v6

    move-object/from16 v1, v43

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v48, v43

    .end local v11           #N:I
    .end local v35           #i:I
    .end local v50           #resizeMode:I
    :cond_19
    if-eqz v48, :cond_1a

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_1a

    move-object/from16 v0, v48

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v6, v0

    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v6

    if-nez v6, :cond_1a

    const/4 v6, -0x3

    move v0, v6

    move-object/from16 v1, v48

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move v6, v0

    if-eqz v6, :cond_29

    if-eqz v60, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move v7, v0

    if-ne v6, v7, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move v7, v0

    if-ne v6, v7, :cond_1c

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v6, v0

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1b

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v6

    move v0, v6

    move/from16 v1, v24

    if-ge v0, v1, :cond_1b

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v7, v0

    if-ne v6, v7, :cond_1c

    :cond_1b
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v6, v0

    const/4 v7, -0x2

    if-ne v6, v7, :cond_29

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v6

    move v0, v6

    move/from16 v1, v23

    if-ge v0, v1, :cond_29

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v7, v0

    if-eq v6, v7, :cond_29

    :cond_1c
    const/4 v6, 0x1

    move/from16 v61, v6

    .local v61, windowShouldResize:Z
    :goto_7
    iget-object v6, v14, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v20

    .local v20, computesInternalInsets:Z
    const/16 v41, 0x0

    .local v41, insetsPending:Z
    const/16 v49, 0x0

    .local v49, relayoutResult:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_1d

    if-nez v61, :cond_1d

    if-nez v40, :cond_1d

    if-nez v56, :cond_1d

    if-eqz v48, :cond_39

    :cond_1d
    if-nez v55, :cond_20

    if-eqz v20, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_1e

    if-eqz v56, :cond_2a

    :cond_1e
    const/4 v6, 0x1

    move/from16 v41, v6

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_20

    if-nez v48, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v48, v0

    :cond_1f
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mGlWanted:Z

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    if-eqz v6, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mDrawingAllowed:Z

    :cond_21
    const/16 v38, 0x0

    .local v38, initialized:Z
    const/16 v22, 0x0

    .local v22, contentInsetsChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v32

    .local v32, hadSurface:Z
    const/16 v26, 0x0

    .local v26, fl:I
    if-eqz v48, :cond_22

    :try_start_0
    move-object/from16 v0, v48

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    iget-boolean v6, v14, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v6, :cond_22

    move-object/from16 v0, v48

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x80

    move v0, v6

    move-object/from16 v1, v48

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v55

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRoot;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v49

    if-eqz v48, :cond_23

    move/from16 v0, v26

    move-object/from16 v1, v48

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    iget v6, v6, Landroid/content/res/Configuration;->seq:I

    if-eqz v6, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v7, v0

    if-nez v7, :cond_2b

    const/4 v7, 0x1

    :goto_9
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRoot;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/res/Configuration;->seq:I

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    const/4 v6, 0x1

    move/from16 v22, v6

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    const/4 v6, 0x1

    move/from16 v58, v6

    .local v58, visibleInsetsChanged:Z
    :goto_b
    if-eqz v22, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    :cond_25
    if-eqz v58, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_26
    if-nez v32, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_27

    const/16 v45, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Region;->setEmpty()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mGlWanted:Z

    move v6, v0

    if-eqz v6, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move v6, v0

    if-nez v6, :cond_27

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->initializeGL()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v6, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2e

    const/4 v6, 0x1

    move/from16 v38, v6

    .end local v58           #visibleInsetsChanged:Z
    :cond_27
    :goto_c
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    iput v6, v14, Landroid/view/View$AttachInfo;->mWindowLeft:I

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    iput v6, v14, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mWidth:I

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    if-eqz v6, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v7, v0

    iput-object v7, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_45

    if-nez v32, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsCreating:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v16

    .local v16, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v16, :cond_30

    move-object/from16 v13, v16

    .local v13, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object v0, v13

    array-length v0, v0

    move/from16 v42, v0

    .local v42, len$:I
    const/16 v36, 0x0

    .local v36, i$:I
    :goto_d
    move/from16 v0, v36

    move/from16 v1, v42

    if-ge v0, v1, :cond_30

    aget-object v15, v13, v36

    .local v15, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-interface {v15, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v36, v36, 0x1

    goto :goto_d

    .end local v13           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v15           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v16           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v20           #computesInternalInsets:Z
    .end local v22           #contentInsetsChanged:Z
    .end local v26           #fl:I
    .end local v32           #hadSurface:Z
    .end local v36           #i$:I
    .end local v38           #initialized:Z
    .end local v41           #insetsPending:Z
    .end local v42           #len$:I
    .end local v49           #relayoutResult:I
    .end local v61           #windowShouldResize:Z
    :cond_29
    const/4 v6, 0x0

    move/from16 v61, v6

    goto/16 :goto_7

    .restart local v20       #computesInternalInsets:Z
    .restart local v41       #insetsPending:Z
    .restart local v49       #relayoutResult:I
    .restart local v61       #windowShouldResize:Z
    :cond_2a
    const/4 v6, 0x0

    move/from16 v41, v6

    goto/16 :goto_8

    .restart local v22       #contentInsetsChanged:Z
    .restart local v26       #fl:I
    .restart local v32       #hadSurface:Z
    .restart local v38       #initialized:Z
    :cond_2b
    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_2c
    const/4 v6, 0x0

    move/from16 v22, v6

    goto/16 :goto_a

    :cond_2d
    const/4 v6, 0x0

    move/from16 v58, v6

    goto/16 :goto_b

    .restart local v58       #visibleInsetsChanged:Z
    :cond_2e
    const/4 v6, 0x0

    move/from16 v38, v6

    goto/16 :goto_c

    :cond_2f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-nez v6, :cond_27

    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mCurScrollY:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mScrollY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v6, v0

    if-eqz v6, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c

    .end local v58           #visibleInsetsChanged:Z
    :catch_0
    move-exception v6

    goto/16 :goto_c

    .restart local v16       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_30
    const/16 v53, 0x1

    .end local v16           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_31
    if-eqz v53, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v7, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v10, v0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v16

    .restart local v16       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v16, :cond_32

    move-object/from16 v13, v16

    .restart local v13       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object v0, v13

    array-length v0, v0

    move/from16 v42, v0

    .restart local v42       #len$:I
    const/16 v36, 0x0

    .restart local v36       #i$:I
    :goto_e
    move/from16 v0, v36

    move/from16 v1, v42

    if-ge v0, v1, :cond_32

    aget-object v15, v13, v36

    .restart local v15       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v9, v0

    invoke-interface {v15, v6, v7, v8, v9}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v36, v36, 0x1

    goto :goto_e

    .end local v13           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v15           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v16           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v36           #i$:I
    .end local v42           #len$:I
    :cond_32
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsCreating:Z

    :cond_33
    :goto_f
    if-eqz v38, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v7, v0

    int-to-float v7, v7

    mul-float/2addr v7, v12

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v8, v0

    int-to-float v8, v8

    mul-float/2addr v8, v12

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->setViewport(II)V

    :cond_34
    and-int/lit8 v6, v49, 0x1

    if-eqz v6, :cond_47

    const/4 v6, 0x1

    :goto_10
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    move-result v27

    .local v27, focusChangedDueToTouchMode:Z
    if-nez v27, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move v7, v0

    if-ne v6, v7, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move v7, v0

    if-ne v6, v7, :cond_35

    if-eqz v22, :cond_39

    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v19

    .restart local v19       #childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v18

    .restart local v18       #childHeightMeasureSpec:I
    move-object/from16 v0, v34

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move/from16 v59, v0

    .local v59, width:I
    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move/from16 v33, v0

    .local v33, height:I
    const/16 v44, 0x0

    .local v44, measureAgain:Z
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    sub-int v6, v6, v59

    int-to-float v6, v6

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    move v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v59, v59, v6

    const/high16 v6, 0x4000

    move/from16 v0, v59

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v44, 0x1

    :cond_36
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    sub-int v6, v6, v33

    int-to-float v6, v6

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    move v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v33, v33, v6

    const/high16 v6, 0x4000

    move/from16 v0, v33

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v44, 0x1

    :cond_37
    if-eqz v44, :cond_38

    move-object/from16 v0, v34

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_38
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .end local v18           #childHeightMeasureSpec:I
    .end local v19           #childWidthMeasureSpec:I
    .end local v22           #contentInsetsChanged:Z
    .end local v26           #fl:I
    .end local v27           #focusChangedDueToTouchMode:Z
    .end local v32           #hadSurface:Z
    .end local v33           #height:I
    .end local v38           #initialized:Z
    .end local v44           #measureAgain:Z
    .end local v59           #width:I
    :cond_39
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move/from16 v25, v0

    .local v25, didLayout:Z
    if-nez v25, :cond_3a

    iget-boolean v6, v14, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v6, :cond_48

    :cond_3a
    const/4 v6, 0x1

    move/from16 v54, v6

    .local v54, triggerGlobalLayoutListener:Z
    :goto_11
    if-eqz v25, :cond_3c

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mScrollMayChange:Z

    const-wide/16 v51, 0x0

    .local v51, startTime:J
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move v8, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move v9, v0

    move-object/from16 v0, v34

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v6, v0

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v9, v0

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mRight:I

    move v10, v0

    add-int/2addr v9, v10

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v10, v0

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v10, v0

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v11, v0

    add-int/2addr v10, v11

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mTop:I

    move v11, v0

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Region;->set(IIII)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    if-eqz v6, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :try_start_2
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v8, v0

    invoke-interface {v6, v7, v8}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v51           #startTime:J
    :cond_3c
    :goto_12
    if-eqz v54, :cond_3d

    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    iget-object v6, v14, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    :cond_3d
    if-eqz v20, :cond_40

    move-object v0, v14

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v39, v0

    .local v39, insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    iget-object v6, v14, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v0, v6

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    .local v30, givenContent:Landroid/graphics/Rect;
    iget-object v6, v14, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v0, v6

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    .local v31, givenVisible:Landroid/graphics/Rect;
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v6

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move v0, v6

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move v0, v6

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, v14, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v0, v6

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .local v21, contentInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object/from16 v57, v0

    .local v57, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    if-eqz v6, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisbileInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v57

    :cond_3e
    if-nez v41, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    :try_start_3
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    move v8, v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    move-object/from16 v3, v21

    move-object/from16 v4, v57

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v21           #contentInsets:Landroid/graphics/Rect;
    .end local v30           #givenContent:Landroid/graphics/Rect;
    .end local v31           #givenVisible:Landroid/graphics/Rect;
    .end local v39           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .end local v57           #visibleInsets:Landroid/graphics/Rect;
    :cond_40
    :goto_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-eqz v6, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    if-eqz v6, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/View;->requestFocus(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    :cond_41
    :goto_14
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFirst:Z

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mViewVisibility:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v6, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v37

    .local v37, imTarget:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    move v6, v0

    move/from16 v0, v37

    move v1, v6

    if-eq v0, v1, :cond_42

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_42

    if-eqz v37, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v8, v0

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    move v9, v0

    if-nez v9, :cond_4a

    const/4 v9, 0x1

    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v10, v0

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v37           #imTarget:Z
    :cond_42
    iget-object v6, v14, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v17

    .local v17, cancelDraw:Z
    if-nez v17, :cond_4c

    if-nez v45, :cond_4c

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->draw(Z)V

    and-int/lit8 v6, v49, 0x2

    if-nez v6, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mReportNextDraw:Z

    move v6, v0

    if-eqz v6, :cond_0

    :cond_43
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mReportNextDraw:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    if-eqz v6, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v16

    .restart local v16       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v16, :cond_4b

    move-object/from16 v13, v16

    .restart local v13       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object v0, v13

    array-length v0, v0

    move/from16 v42, v0

    .restart local v42       #len$:I
    const/16 v36, 0x0

    .restart local v36       #i$:I
    :goto_16
    move/from16 v0, v36

    move/from16 v1, v42

    if-ge v0, v1, :cond_4b

    aget-object v15, v13, v36

    .restart local v15       #c:Landroid/view/SurfaceHolder$Callback;
    instance-of v6, v15, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v6, :cond_44

    check-cast v15, Landroid/view/SurfaceHolder$Callback2;

    .end local v15           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-interface {v15, v6}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    :cond_44
    add-int/lit8 v36, v36, 0x1

    goto :goto_16

    .end local v13           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v16           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v17           #cancelDraw:Z
    .end local v25           #didLayout:Z
    .end local v36           #i$:I
    .end local v42           #len$:I
    .end local v54           #triggerGlobalLayoutListener:Z
    .restart local v22       #contentInsetsChanged:Z
    .restart local v26       #fl:I
    .restart local v32       #hadSurface:Z
    .restart local v38       #initialized:Z
    :cond_45
    if-eqz v32, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v16

    .restart local v16       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    if-eqz v16, :cond_46

    move-object/from16 v13, v16

    .restart local v13       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object v0, v13

    array-length v0, v0

    move/from16 v42, v0

    .restart local v42       #len$:I
    const/16 v36, 0x0

    .restart local v36       #i$:I
    :goto_17
    move/from16 v0, v36

    move/from16 v1, v42

    if-ge v0, v1, :cond_46

    aget-object v15, v13, v36

    .restart local v15       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-interface {v15, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v36, v36, 0x1

    goto :goto_17

    .end local v13           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v15           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v36           #i$:I
    .end local v42           #len$:I
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    iput-object v7, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_f

    .end local v16           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_47
    const/4 v6, 0x0

    goto/16 :goto_10

    .end local v22           #contentInsetsChanged:Z
    .end local v26           #fl:I
    .end local v32           #hadSurface:Z
    .end local v38           #initialized:Z
    .restart local v25       #didLayout:Z
    :cond_48
    const/4 v6, 0x0

    move/from16 v54, v6

    goto/16 :goto_11

    .restart local v54       #triggerGlobalLayoutListener:Z
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    goto/16 :goto_14

    .restart local v5       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v37       #imTarget:Z
    :cond_4a
    const/4 v9, 0x0

    goto/16 :goto_15

    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v37           #imTarget:Z
    .restart local v17       #cancelDraw:Z
    :cond_4b
    :try_start_4
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v6

    goto/16 :goto_0

    :cond_4c
    and-int/lit8 v6, v49, 0x2

    if-eqz v6, :cond_4d

    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mReportNextDraw:Z

    :cond_4d
    if-eqz v29, :cond_4e

    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    :cond_4e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_0

    .end local v17           #cancelDraw:Z
    .restart local v21       #contentInsets:Landroid/graphics/Rect;
    .restart local v30       #givenContent:Landroid/graphics/Rect;
    .restart local v31       #givenVisible:Landroid/graphics/Rect;
    .restart local v39       #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v57       #visibleInsets:Landroid/graphics/Rect;
    :catch_2
    move-exception v6

    goto/16 :goto_13

    .end local v21           #contentInsets:Landroid/graphics/Rect;
    .end local v30           #givenContent:Landroid/graphics/Rect;
    .end local v31           #givenVisible:Landroid/graphics/Rect;
    .end local v39           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .end local v57           #visibleInsets:Landroid/graphics/Rect;
    .restart local v51       #startTime:J
    :catch_3
    move-exception v6

    goto/16 :goto_12
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 17
    .parameter "params"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v2, v0

    iget v14, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .local v14, appScale:F
    const/16 v16, 0x0

    .local v16, restore:Z
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    if-eqz v2, :cond_0

    const/16 v16, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/res/Configuration;->seq:I

    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v4, v0

    iget v4, v4, Landroid/view/View;->mMeasuredWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v4, v0

    iget v4, v4, Landroid/view/View;->mMeasuredHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v6, 0x3f00

    add-float/2addr v4, v6

    float-to-int v6, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v13, v0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {v2 .. v13}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v15

    .local v15, relayoutResult:I
    if-eqz v16, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    :cond_3
    return v15
.end method

.method private sendAccessibilityEvents()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private startInputEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "finishedCallback"

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot;->mFinishedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "ViewRoot"

    const-string v1, "Received a new input event from the input queue but there is already an unfinished input event in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroid/view/ViewRoot;->mFinishedCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    return-void
.end method

.method checkThread()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/view/ViewRoot$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRoot$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .local v0, oldFocus:Landroid/view/View;
    iput-object v3, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    return-void
.end method

.method public debug()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    return-void
.end method

.method public die(Z)V
    .locals 1
    .parameter "immediate"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRoot;->doDie()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/16 v1, 0x3f0

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3f6

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    :cond_0
    iput-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    iget-boolean v0, p0, Landroid/view/ViewRoot;->mUseGL:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyGL()V

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRoot;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    iput-object v2, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    :cond_2
    :goto_0
    :try_start_0
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iput-object v2, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {v0}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public dispatchFinishedEvent(IZ)V
    .locals 2
    .parameter "seq"
    .parameter "handled"

    .prologue
    const/16 v1, 0x3f2

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    .prologue
    const/16 v1, 0x3f1

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRoot;->dispatchKey(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public dispatchMotion(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRoot;->dispatchMotion(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRoot;->dispatchPointer(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method public dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    if-eqz p5, :cond_1

    const/16 v2, 0x3eb

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    int-to-float v2, p1

    iget-object v3, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p1, v2

    int-to-float v2, p2

    iget-object v3, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p2, v2

    :cond_0
    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    new-instance v1, Landroid/view/ViewRoot$ResizedInfo;

    invoke-direct {v1, p0}, Landroid/view/ViewRoot$ResizedInfo;-><init>(Landroid/view/ViewRoot;)V

    .local v1, ri:Landroid/view/ViewRoot$ResizedInfo;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRoot$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRoot$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    iput-object p6, v1, Landroid/view/ViewRoot$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    return-void

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #ri:Landroid/view/ViewRoot$ResizedInfo;
    :cond_1
    const/16 v2, 0x3ea

    goto :goto_0
.end method

.method public dispatchTrackball(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRoot;->dispatchTrackball(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method doDie()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/view/ViewRoot;->mFirst:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .local v0, viewVisibility:I
    iget v2, p0, Landroid/view/ViewRoot;->mViewVisibility:I

    if-eq v2, v0, :cond_4

    const/4 v2, 0x1

    move v1, v2

    .local v1, viewVisibilityChanged:Z
    :goto_0
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Landroid/view/ViewRoot;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .end local v0           #viewVisibility:I
    .end local v1           #viewVisibilityChanged:Z
    :cond_2
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    invoke-virtual {p0}, Landroid/view/ViewRoot;->dispatchDetachedFromWindow()V

    :cond_3
    monitor-exit p0

    return-void

    .restart local v0       #viewVisibility:I
    :cond_4
    move v1, v3

    goto :goto_0

    .end local v0           #viewVisibility:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0       #viewVisibility:I
    .restart local v1       #viewVisibilityChanged:Z
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method enqueuePendingEvent(Ljava/lang/Object;Z)I
    .locals 2
    .parameter "event"
    .parameter "sendDone"

    .prologue
    iget v1, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    add-int/lit8 v0, v1, 0x1

    .local v0, seq:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p2, :cond_1

    move v1, v0

    :goto_0
    return v1

    :cond_1
    neg-int v1, v0

    goto :goto_0
.end method

.method ensureTouchMode(Z)Z
    .locals 2
    .parameter "inTouchMode"

    .prologue
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object p0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .local v0, descendantsHaveDibsOnFocus:Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/ViewRoot;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .end local v0           #descendantsHaveDibsOnFocus:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/view/ViewRoot;->mWidth:I

    iget v1, p0, Landroid/view/ViewRoot;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected getWindowFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    :cond_0
    return-void
.end method

.method handleFinishedEvent(IZ)V
    .locals 5
    .parameter "seq"
    .parameter "handled"

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/ViewRoot;->retrievePendingEvent(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .local v0, event:Landroid/view/KeyEvent;
    if-eqz v0, :cond_0

    if-ltz p1, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .local v1, sendDone:Z
    :goto_0
    if-nez p2, :cond_2

    invoke-direct {p0, v0, v1}, Landroid/view/ViewRoot;->deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V

    .end local v1           #sendDone:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .restart local v1       #sendDone:Z
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    goto :goto_1

    :cond_3
    const-string v2, "ViewRoot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFinishedEvent(seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") neither delivering nor finishing key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v13, 0x1

    const/4 v5, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .end local p0
    :cond_0
    :goto_0
    return-void

    .restart local p0
    :sswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .restart local p0
    :sswitch_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/View$AttachInfo$InvalidateInfo;

    .local v11, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v1, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v2, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v3, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v4, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v5, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    invoke-virtual {v11}, Landroid/view/View$AttachInfo$InvalidateInfo;->release()V

    goto :goto_0

    .end local v11           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    :sswitch_2
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mProfile:Z

    if-eqz v1, :cond_1

    const-string v1, "ViewRoot"

    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRoot;->performTraversals()V

    iget-boolean v1, p0, Landroid/view/ViewRoot;->mProfile:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    iput-boolean v5, p0, Landroid/view/ViewRoot;->mProfile:Z

    goto :goto_0

    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_2

    move v2, v13

    :goto_1
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewRoot;->handleFinishedEvent(IZ)V

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_3

    move v2, v13

    :goto_2
    invoke-direct {p0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_2

    :sswitch_5
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/MotionEvent;

    .local v8, event:Landroid/view/MotionEvent;
    :try_start_0
    invoke-direct {p0, v8}, Landroid/view/ViewRoot;->deliverPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_4

    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    :cond_4
    throw v1

    .end local v8           #event:Landroid/view/MotionEvent;
    :sswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/MotionEvent;

    .restart local v8       #event:Landroid/view/MotionEvent;
    :try_start_1
    invoke-direct {p0, v8}, Landroid/view/ViewRoot;->deliverTrackballEvent(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_5

    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    :cond_5
    throw v1

    .end local v8           #event:Landroid/view/MotionEvent;
    :sswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6

    move v1, v13

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->handleAppVisibility(Z)V

    goto/16 :goto_0

    :cond_6
    move v1, v5

    goto :goto_3

    :sswitch_8
    invoke-virtual {p0}, Landroid/view/ViewRoot;->handleGetNewSurface()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/view/ViewRoot$ResizedInfo;

    .local v12, ri:Landroid/view/ViewRoot$ResizedInfo;
    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, v12, Landroid/view/ViewRoot$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v12, Landroid/view/ViewRoot$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v1, v1, Landroid/view/ViewRoot$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    .end local v12           #ri:Landroid/view/ViewRoot$ResizedInfo;
    :cond_7
    :sswitch_a
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v7, v1, Landroid/view/ViewRoot$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .local v7, config:Landroid/content/res/Configuration;
    if-eqz v7, :cond_8

    invoke-virtual {p0, v7, v5}, Landroid/view/ViewRoot;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    :cond_8
    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    iput v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    iput v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v1, v1, Landroid/view/ViewRoot$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v1, v1, Landroid/view/ViewRoot$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_9

    iput-boolean v13, p0, Landroid/view/ViewRoot;->mReportNextDraw:Z

    :cond_9
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/view/ViewRoot;->forceLayout(Landroid/view/View;)V

    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    goto/16 :goto_0

    .end local v7           #config:Landroid/content/res/Configuration;
    :sswitch_b
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_10

    move v9, v13

    .local v9, hasWindowFocus:Z
    :goto_4
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v9, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v9, :cond_b

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_11

    move v10, v13

    .local v10, inTouchMode:Z
    :goto_5
    invoke-direct {p0, v10}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    iget-boolean v1, p0, Landroid/view/ViewRoot;->mGlWanted:Z

    if-eqz v1, :cond_b

    invoke-direct {p0}, Landroid/view/ViewRoot;->checkEglErrors()V

    iget-boolean v1, p0, Landroid/view/ViewRoot;->mGlWanted:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Landroid/view/ViewRoot;->mUseGL:Z

    if-nez v1, :cond_b

    invoke-direct {p0}, Landroid/view/ViewRoot;->initializeGL()V

    iget-object v1, p0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .local v6, appScale:F
    iget-object v1, p0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Landroid/view/ViewRoot;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Landroid/view/ViewRoot;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->setViewport(II)V

    .end local v6           #appScale:F
    .end local v10           #inTouchMode:Z
    :cond_b
    iget-object v1, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_d

    if-eqz v9, :cond_c

    if-eqz v0, :cond_c

    iget-boolean v1, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    :cond_c
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    :cond_d
    if-eqz v9, :cond_f

    if-eqz v0, :cond_e

    iget-boolean v1, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean v4, p0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    if-nez v4, :cond_12

    move v4, v13

    :goto_6
    iget-object v5, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    :cond_e
    iget-object v1, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput-boolean v13, p0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    :cond_f
    if-eqz v9, :cond_0

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/view/ViewRoot;->sendAccessibilityEvents()V

    goto/16 :goto_0

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v9           #hasWindowFocus:Z
    :cond_10
    move v9, v5

    goto/16 :goto_4

    .restart local v9       #hasWindowFocus:Z
    :cond_11
    move v10, v5

    goto/16 :goto_5

    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_12
    move v4, v5

    goto :goto_6

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v9           #hasWindowFocus:Z
    :sswitch_c
    invoke-virtual {p0}, Landroid/view/ViewRoot;->doDie()V

    goto/16 :goto_0

    :sswitch_d
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/KeyEvent;

    .local v8, event:Landroid/view/KeyEvent;
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_13

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    invoke-static {v8, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v8

    :cond_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-direct {p0, v1, v5}, Landroid/view/ViewRoot;->deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    .end local v8           #event:Landroid/view/KeyEvent;
    :sswitch_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local p0
    :sswitch_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_0

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_10
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_c
        0x3ea -> :sswitch_9
        0x3eb -> :sswitch_a
        0x3ec -> :sswitch_b
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_6
        0x3f0 -> :sswitch_7
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_3
        0x3f3 -> :sswitch_d
        0x3f4 -> :sswitch_e
        0x3f5 -> :sswitch_f
        0x3f6 -> :sswitch_10
    .end sparse-switch
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "child"
    .parameter "dirty"

    .prologue
    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    :cond_3
    iget-object v0, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    :cond_4
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRoot;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    return v0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 3
    .parameter "effectId"
    .parameter "always"

    .prologue
    :try_start_0
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 5
    .parameter "effectId"

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRoot;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .local v0, audioManager:Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "ViewRoot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public profile()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mProfile:Z

    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    iget-boolean v0, p0, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    :cond_0
    iput-object p2, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRoot;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    :cond_0
    return-void
.end method

.method retrievePendingEvent(I)Ljava/lang/Object;
    .locals 2
    .parameter "seq"

    .prologue
    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, event:Ljava/lang/Object;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-object v0
.end method

.method public scheduleTraversals()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 10
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .local v1, ci:Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .local v5, vi:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .local v4, scrollY:I
    const/4 v3, 0x0

    .local v3, handled:Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_4

    :cond_0
    iget v4, p0, Landroid/view/ViewRoot;->mScrollY:I

    iget-object v2, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    .local v2, focus:Landroid/view/View;
    if-eqz v2, :cond_1

    iget-object v6, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eq v6, v7, :cond_2

    :cond_1
    iput-object v8, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    move v6, v9

    .end local v2           #focus:Landroid/view/View;
    :goto_0
    return v6

    .restart local v2       #focus:Landroid/view/View;
    :cond_2
    iget-object v6, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    if-eq v2, v6, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget-object v6, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    if-ne v2, v6, :cond_8

    iget-boolean v6, p0, Landroid/view/ViewRoot;->mScrollMayChange:Z

    if-nez v6, :cond_8

    if-nez p1, :cond_8

    .end local v2           #focus:Landroid/view/View;
    :cond_4
    :goto_1
    iget v6, p0, Landroid/view/ViewRoot;->mScrollY:I

    if-eq v4, v6, :cond_7

    if-nez p2, :cond_e

    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    if-nez v6, :cond_5

    new-instance v6, Landroid/widget/Scroller;

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    :cond_5
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    iget v7, p0, Landroid/view/ViewRoot;->mScrollY:I

    iget v8, p0, Landroid/view/ViewRoot;->mScrollY:I

    sub-int v8, v4, v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/widget/Scroller;->startScroll(IIII)V

    :cond_6
    :goto_2
    iput v4, p0, Landroid/view/ViewRoot;->mScrollY:I

    :cond_7
    move v6, v3

    goto :goto_0

    .restart local v2       #focus:Landroid/view/View;
    :cond_8
    if-eqz v2, :cond_4

    iput-object v2, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    iput-boolean v9, p0, Landroid/view/ViewRoot;->mScrollMayChange:Z

    iget-object v6, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez p1, :cond_b

    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_9
    :goto_3
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_c

    :cond_a
    :goto_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_b
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_c
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_d

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    sub-int/2addr v6, v7

    sub-int/2addr v4, v6

    goto :goto_4

    :cond_d
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_a

    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    add-int/2addr v4, v6

    goto :goto_4

    .end local v2           #focus:Landroid/view/View;
    :cond_e
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_2
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 5
    .parameter "attrs"
    .parameter "newView"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .local v1, oldSoftInputMode:I
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000

    and-int v0, v2, v3

    .local v0, compatibleWindowFlag:I
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p2, :cond_0

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v2, p0, Landroid/view/ViewRoot;->mSoftInputMode:I

    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0xf1

    and-int/lit16 v4, v1, 0xf0

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    monitor-exit p0

    return-void

    .end local v0           #compatibleWindowFlag:I
    .end local v1           #oldSoftInputMode:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 12
    .parameter "view"
    .parameter "attrs"
    .parameter "panelParentView"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-nez v1, :cond_d

    iput-object p1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object p2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/ViewRoot$TakenSurfaceHolder;

    invoke-direct {v1, p0}, Landroid/view/ViewRoot$TakenSurfaceHolder;-><init>(Landroid/view/ViewRoot;)V

    iput-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .local v10, resources:Landroid/content/res/Resources;
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    .local v7, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v1, :cond_1

    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setCompatibleDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo$Translator;)V

    :cond_2
    const/4 v11, 0x0

    .local v11, restore:Z
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_3

    const/4 v11, 0x1

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_4
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v1, p0, Landroid/view/ViewRoot;->mSoftInputMode:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v2, :cond_9

    const/high16 v2, 0x3f80

    :goto_1
    iput v2, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    if-eqz p3, :cond_5

    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    new-instance v1, Landroid/view/InputChannel;

    invoke-direct {v1}, Landroid/view/InputChannel;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewRoot;->getHostVisibility()I

    move-result v4

    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .local v9, res:I
    if-eqz v11, :cond_6

    :try_start_2
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_6
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    :cond_7
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    if-gez v9, :cond_b

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    invoke-virtual {p0}, Landroid/view/ViewRoot;->unscheduleTraversals()V

    packed-switch v9, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- unknown error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v7           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v9           #res:I
    .end local v10           #resources:Landroid/content/res/Resources;
    .end local v11           #restore:Z
    .end local p3
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v7       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v10       #resources:Landroid/content/res/Resources;
    .restart local v11       #restore:Z
    .restart local p3
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    :try_start_3
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v2, v2, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-object v8, v1

    .local v8, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {p0}, Landroid/view/ViewRoot;->unscheduleTraversals()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Adding window failed"

    invoke-direct {v1, v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    if-eqz v11, :cond_a

    :try_start_5
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_a
    throw v1

    .restart local v9       #res:I
    :pswitch_0
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid; is your activity running?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not for an application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- app for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exiting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    monitor-exit p0

    .end local v7           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v9           #res:I
    .end local v10           #resources:Landroid/content/res/Resources;
    .end local v11           #restore:Z
    .end local p3
    :goto_2
    return-void

    .restart local v7       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v9       #res:I
    .restart local v10       #resources:Landroid/content/res/Resources;
    .restart local v11       #restore:Z
    .restart local p3
    :pswitch_5
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- another window of this type already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- permission denied for this window type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object p3, v0

    .end local p3
    invoke-interface {p3}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    :cond_c
    iget-object v1, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_e

    new-instance v1, Landroid/view/InputQueue;

    iget-object v2, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-direct {v1, v2}, Landroid/view/InputQueue;-><init>(Landroid/view/InputChannel;)V

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputQueue:Landroid/view/InputQueue;

    iget-object v1, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRoot;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    :goto_3
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    and-int/lit8 v1, v9, 0x2

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .end local v7           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v9           #res:I
    .end local v10           #resources:Landroid/content/res/Resources;
    .end local v11           #restore:Z
    :cond_d
    monitor-exit p0

    goto :goto_2

    .restart local v7       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v9       #res:I
    .restart local v10       #resources:Landroid/content/res/Resources;
    .restart local v11       #restore:Z
    :cond_e
    iget-object v1, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/view/ViewRoot;->mInputHandler:Landroid/view/InputHandler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_f
    const/4 v1, 0x0

    goto :goto_4

    :cond_10
    const/4 v1, 0x0

    goto :goto_5

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public unscheduleTraversals()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 4
    .parameter "config"
    .parameter "force"

    .prologue
    sget-object v2, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentCallbacks;

    invoke-interface {v1, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_3
    return-void

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public windowFocusChanged(ZZ)V
    .locals 4
    .parameter "hasFocus"
    .parameter "inTouchMode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    move v1, v3

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_1

    move v1, v3

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
