.class public Lcom/android/server/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WindowManagerService$FadeInOutAnimation;,
        Lcom/android/server/WindowManagerService$DimAnimator;,
        Lcom/android/server/WindowManagerService$Watermark;,
        Lcom/android/server/WindowManagerService$H;,
        Lcom/android/server/WindowManagerService$StartingData;,
        Lcom/android/server/WindowManagerService$DummyAnimation;,
        Lcom/android/server/WindowManagerService$AppWindowToken;,
        Lcom/android/server/WindowManagerService$WindowToken;,
        Lcom/android/server/WindowManagerService$WindowState;,
        Lcom/android/server/WindowManagerService$Session;,
        Lcom/android/server/WindowManagerService$InputMonitor;,
        Lcom/android/server/WindowManagerService$PolicyThread;,
        Lcom/android/server/WindowManagerService$WMThread;,
        Lcom/android/server/WindowManagerService$WindowChangeListener;
    }
.end annotation


# static fields
.field static final ADJUST_WALLPAPER_LAYERS_CHANGED:I = 0x2

.field static final ADJUST_WALLPAPER_VISIBILITY_CHANGED:I = 0x4

.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final BLUR:Z = true

.field static final DEBUG:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_FREEZE:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_REORDER:Z = false

.field static final DEBUG_RESIZE:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_WALLPAPER:Z = false

.field static final DEBUG_WINDOW_MOVEMENT:Z = false

.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final DEFAULT_FADE_IN_OUT_DURATION:I = 0x190

.field private static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x12a05f200L

.field static final DIM_DURATION_MULTIPLIER:I = 0x6

.field static final HIDE_STACK_CRAWLS:Z = true

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field static final PROFILE_ORIENTATION:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WALLPAPER_TIMEOUT:J = 0x96L

.field static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final localLOGV:Z

.field private static mDockState:I

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field final mActivityManager:Landroid/app/IActivityManager;

.field private mAllowDisableKeyguard:I

.field mAnimationPending:Z

.field final mAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppTransitionReady:Z

.field mAppTransitionRunning:Z

.field mAppTransitionTimeout:Z

.field mAppsFreezingScreen:I

.field mBackgroundFillerShown:Z

.field mBackgroundFillerSurface:Landroid/view/Surface;

.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBlurShown:Z

.field mBlurSurface:Landroid/view/Surface;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClosingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mCompatibleScreenFrame:Landroid/graphics/Rect;

.field final mContext:Landroid/content/Context;

.field mCurConfiguration:Landroid/content/res/Configuration;

.field mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

.field mDisplay:Landroid/view/Display;

.field mDisplayEnabled:Z

.field mDisplayFrozen:Z

.field final mExitingAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

.field mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForcedAppOrientation:I

.field mFreezeGcPending:J

.field mFxSession:Landroid/view/SurfaceSession;

.field mH:Lcom/android/server/WindowManagerService$H;

.field final mHaveInputMethods:Z

.field mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

.field mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

.field private mInLayout:Z

.field mInTouchMode:Z

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field final mInputManager:Lcom/android/server/InputManager;

.field mInputMethodAnimLayerAdjustment:I

.field final mInputMethodDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

.field mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

.field private mKeyguardDisabled:Z

.field final mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

.field mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

.field mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

.field mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

.field mLastRotationFlags:I

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mMouseSurface:Landroid/view/Surface;

.field mMx:I

.field mMy:I

.field mNextAppTransition:I

.field mNextAppTransitionEnter:I

.field mNextAppTransitionExit:I

.field mNextAppTransitionPackage:Ljava/lang/String;

.field final mOpeningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Lcom/android/server/PowerManagerService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRequestedRotation:I

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field mScreenLayout:I

.field final mSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/WindowManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field mShowMouse:Z

.field mSkipAppTransitionAnimation:Z

.field mStartingIconInTransition:Z

.field mSystemBooted:Z

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTempRect:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mToBottomApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mToTopApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransactionSequence:I

.field mTransitionAnimationScale:F

.field mTurnOnScreen:Z

.field mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

.field private mViewServer:Lcom/android/server/ViewServer;

.field mWaitingForConfig:Z

.field mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

.field mWallpaperAnimLayerAdjustment:I

.field mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

.field final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWatermark:Lcom/android/server/WindowManagerService$Watermark;

.field mWindowAnimationScale:F

.field private mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsChanged:Z

.field mWindowsFreezingScreen:Z

.field tempWallpaperVisible:Z

.field tempWallpaperWindow:Landroid/view/IWindow;

.field private ui01Metric:Lcom/carrieriq/iqagent/client/metrics/ui/UI01;

.field wallpaperPaintPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    sput v0, Lcom/android/server/WindowManagerService;->mDockState:I

    .line 8243
    new-instance v0, Lcom/android/server/WindowManagerService$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/WindowManagerService$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V
    .locals 12
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    const/high16 v11, 0x3f80

    const/high16 v10, -0x4080

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 639
    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 242
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z

    .line 247
    iput v9, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    .line 249
    new-instance v4, Lcom/android/server/WindowManagerService$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    const-string v6, "WindowManagerService.mKeyguardTokenWatcher"

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/WindowManagerService$1;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    .line 268
    new-instance v4, Lcom/android/server/WindowManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$2;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 295
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    .line 301
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 306
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    .line 313
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    .line 319
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    .line 326
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    .line 332
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    .line 338
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    .line 355
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 362
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 367
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 372
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 378
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 389
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    .line 396
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mShowMouse:Z

    .line 397
    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 398
    iput v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    .line 401
    iput v7, p0, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    .line 403
    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTmpFloats:[F

    .line 406
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    .line 407
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    .line 408
    iput v7, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    .line 409
    iput v7, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    .line 410
    iput v7, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    .line 411
    iput v7, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 412
    iput v9, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    .line 414
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 417
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 418
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    .line 419
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 420
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 421
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 422
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    .line 423
    iput v7, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 425
    iput v7, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    .line 430
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 442
    iput v9, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 446
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 447
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 448
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 449
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 450
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 451
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    .line 452
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    .line 453
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    .line 454
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    .line 458
    new-instance v4, Lcom/android/server/WindowManagerService$H;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$H;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    .line 460
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 461
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 465
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 466
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 470
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 471
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 473
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 477
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 480
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 483
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 485
    iput v10, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    .line 486
    iput v10, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    .line 487
    iput v10, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    .line 488
    iput v10, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    .line 499
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 503
    iput v11, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 504
    iput v11, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 518
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 521
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 523
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 530
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 531
    iput v7, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 534
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    .line 536
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    .line 537
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    .line 549
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 1653
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->wallpaperPaintPending:Z

    .line 5465
    new-instance v4, Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$InputMonitor;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    .line 5808
    new-instance v4, Lcom/carrieriq/iqagent/client/metrics/ui/UI01;

    invoke-direct {v4}, Lcom/carrieriq/iqagent/client/metrics/ui/UI01;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->ui01Metric:Lcom/carrieriq/iqagent/client/metrics/ui/UI01;

    .line 5809
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    .line 8784
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 11255
    new-instance v4, Lcom/android/server/WindowManagerService$5;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$5;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 640
    iput-object p1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 641
    iput-boolean p3, p0, Lcom/android/server/WindowManagerService;->mHaveInputMethods:Z

    .line 642
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x10d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 645
    iput-object p2, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 646
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v4, v5}, Lcom/android/server/PowerManagerService;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    .line 647
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 648
    .local v2, pmc:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "SCREEN_FROZEN"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 650
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 652
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 653
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 656
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "window_animation_scale"

    iget v6, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 658
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "transition_animation_scale"

    iget v6, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 662
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 663
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 670
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "samsunghandwrite"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 671
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 674
    const/16 v4, 0xa

    const-string v5, "KEEP_SCREEN_ON_FLAG"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 676
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 678
    new-instance v4, Lcom/android/server/InputManager;

    invoke-direct {v4, p1, p0}, Lcom/android/server/InputManager;-><init>(Landroid/content/Context;Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    .line 680
    new-instance v3, Lcom/android/server/WindowManagerService$PolicyThread;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v3, v4, p0, p1, p2}, Lcom/android/server/WindowManagerService$PolicyThread;-><init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V

    .line 681
    .local v3, thr:Lcom/android/server/WindowManagerService$PolicyThread;
    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$PolicyThread;->start()V

    .line 683
    monitor-enter v3

    .line 684
    :goto_0
    :try_start_0
    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$PolicyThread;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 686
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v4

    goto :goto_0

    .line 690
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 692
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v4}, Lcom/android/server/InputManager;->start()V

    .line 695
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 696
    return-void

    .line 690
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZLcom/android/server/WindowManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WindowManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->shouldAllowDisableKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/WindowManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/WindowManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/WindowManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/WindowManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/WindowManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/WindowManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/WindowManagerService;Landroid/view/MotionEvent;)Lcom/android/server/WindowManagerService$WindowState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->getWindowByPosition(Landroid/view/MotionEvent;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/WindowManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput p1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WindowManagerService;->setSurfaceFlagsWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/IWindow;IIFI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 157
    invoke-direct/range {p0 .. p7}, Lcom/android/server/WindowManagerService;->moveChildWindowOnMyFlipImpl(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/IWindow;IIFI)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/IWindow;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->copySurfaceImpl(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/IWindow;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    return-void
.end method

.method private addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V
    .locals 28
    .parameter "win"
    .parameter "addToToken"

    .prologue
    .line 750
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v10, v0

    .line 751
    .local v10, client:Landroid/view/IWindow;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v20, v0

    .line 752
    .local v20, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v14, v0

    .line 754
    .local v14, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 755
    .local v3, N:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v8, v0

    .line 757
    .local v8, attached:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v8, :cond_15

    .line 758
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 759
    .local v21, tokenWindowsPos:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_11

    .line 760
    const/16 v26, 0x1

    sub-int v12, v21, v26

    .line 761
    .local v12, index:I
    if-ltz v12, :cond_5

    .line 765
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 767
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #N:I
    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 768
    const/16 v21, 0x0

    .line 887
    .end local v12           #index:I
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 888
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 943
    .end local v21           #tokenWindowsPos:I
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    if-eqz p2, :cond_2

    .line 944
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    :cond_2
    return-void

    .line 770
    .restart local v3       #N:I
    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v7, v0

    .line 771
    .local v7, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v7, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 773
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #N:I
    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 774
    add-int/lit8 v21, v21, -0x1

    goto :goto_0

    .line 776
    .restart local v3       #N:I
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/WindowManagerService;->findIdxBasedOnAppTokens(Lcom/android/server/WindowManagerService$WindowState;)I

    move-result v16

    .line 777
    .local v16, newIdx:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 785
    add-int/lit8 v26, v16, 0x1

    move-object v0, v14

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 786
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_0

    .line 796
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v16           #newIdx:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 797
    .local v4, NA:I
    const/16 v17, 0x0

    .line 798
    .local v17, pos:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v26, 0x1

    sub-int v11, v4, v26

    .local v11, i:I
    :goto_2
    if-ltz v11, :cond_6

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 800
    .local v19, t:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 801
    add-int/lit8 v11, v11, -0x1

    .line 815
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_6
    if-eqz v17, :cond_b

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 818
    .local v7, atoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v7, :cond_7

    .line 819
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 820
    .local v5, NC:I
    if-lez v5, :cond_7

    .line 821
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 822
    .local v9, bottom:Lcom/android/server/WindowManagerService$WindowState;
    move-object v0, v9

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-gez v26, :cond_7

    .line 823
    move-object/from16 v17, v9

    .line 827
    .end local v5           #NC:I
    .end local v9           #bottom:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_0

    .line 808
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_8
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->sendingToBottom:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_9

    .line 809
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v17, Lcom/android/server/WindowManagerService$WindowState;

    .line 798
    .restart local v17       #pos:Lcom/android/server/WindowManagerService$WindowState;
    :cond_9
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_2

    .line 838
    .local v6, NW:I
    :cond_a
    add-int/lit8 v11, v11, -0x1

    .line 831
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_b
    if-ltz v11, :cond_c

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 833
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 834
    .restart local v6       #NW:I
    if-lez v6, :cond_a

    .line 835
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v17, Lcom/android/server/WindowManagerService$WindowState;

    .line 840
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v17       #pos:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c
    if-eqz v17, :cond_e

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 844
    .restart local v7       #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v7, :cond_d

    .line 845
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 846
    .restart local v5       #NC:I
    if-lez v5, :cond_d

    .line 847
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v5, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/WindowManagerService$WindowState;

    .line 848
    .local v22, top:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-ltz v26, :cond_d

    .line 849
    move-object/from16 v17, v22

    .line 853
    .end local v5           #NC:I
    .end local v22           #top:Lcom/android/server/WindowManagerService$WindowState;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowAfter(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_0

    .line 856
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v15, v0

    .line 857
    .local v15, myLayer:I
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v3, :cond_f

    .line 858
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/WindowManagerService$WindowState;

    .line 859
    .local v23, w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-le v0, v1, :cond_10

    .line 866
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_f
    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 867
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_0

    .line 857
    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 873
    .end local v4           #NA:I
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v15           #myLayer:I
    .end local v17           #pos:Lcom/android/server/WindowManagerService$WindowState;
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v15, v0

    .line 874
    .restart local v15       #myLayer:I
    const/16 v26, 0x1

    sub-int v11, v3, v26

    .end local v3           #N:I
    .restart local v11       #i:I
    :goto_4
    if-ltz v11, :cond_12

    .line 875
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    move-object v0, v3

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-gt v0, v1, :cond_14

    .line 876
    add-int/lit8 v11, v11, 0x1

    .line 880
    :cond_12
    if-gez v11, :cond_13

    const/4 v11, 0x0

    .line 884
    :cond_13
    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 885
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_0

    .line 874
    :cond_14
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 894
    .end local v11           #i:I
    .end local v15           #myLayer:I
    .end local v21           #tokenWindowsPos:I
    .restart local v3       #N:I
    :cond_15
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 895
    .restart local v4       #NA:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v18, v0

    .line 896
    .local v18, sublayer:I
    const/high16 v13, -0x8000

    .line 897
    .local v13, largestSublayer:I
    const/16 v25, 0x0

    .line 898
    .local v25, windowWithLargestSublayer:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    if-ge v11, v4, :cond_18

    .line 899
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/WindowManagerService$WindowState;

    .line 900
    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v24, v0

    .line 901
    .local v24, wSublayer:I
    move/from16 v0, v24

    move v1, v13

    if-lt v0, v1, :cond_16

    .line 902
    move/from16 v13, v24

    .line 903
    move-object/from16 v25, v23

    .line 905
    :cond_16
    if-gez v18, :cond_1b

    .line 908
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1d

    .line 909
    if-eqz p2, :cond_17

    .line 910
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 912
    :cond_17
    if-ltz v24, :cond_1a

    move-object/from16 v26, v8

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 928
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #wSublayer:I
    :cond_18
    :goto_7
    if-lt v11, v4, :cond_1

    .line 929
    if-eqz p2, :cond_19

    .line 930
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_19
    if-gez v18, :cond_1e

    .line 933
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_1

    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v24       #wSublayer:I
    :cond_1a
    move-object/from16 v26, v23

    .line 912
    goto :goto_6

    .line 919
    :cond_1b
    move/from16 v0, v24

    move/from16 v1, v18

    if-le v0, v1, :cond_1d

    .line 920
    if-eqz p2, :cond_1c

    .line 921
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 923
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    goto :goto_7

    .line 898
    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 935
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #wSublayer:I
    :cond_1e
    if-ltz v13, :cond_1f

    move-object/from16 v26, v25

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowAfter(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_1

    :cond_1f
    move-object/from16 v26, v8

    goto :goto_8
.end method

.method private applyAnimationLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z
    .locals 4
    .parameter "wtoken"
    .parameter "lp"
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 2901
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2903
    if-eqz p2, :cond_1

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 2904
    new-instance v0, Lcom/android/server/WindowManagerService$FadeInOutAnimation;

    invoke-direct {v0, p4}, Lcom/android/server/WindowManagerService$FadeInOutAnimation;-><init>(Z)V

    .line 2970
    .local v0, a:Landroid/view/animation/Animation;
    :goto_0
    if-eqz v0, :cond_0

    .line 2979
    invoke-virtual {p1, v0}, Lcom/android/server/WindowManagerService$AppWindowToken;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2985
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_0
    :goto_1
    iget-object v2, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 2907
    :cond_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2908
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p4, :cond_2

    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionEnter:I

    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/android/server/WindowManagerService;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    goto :goto_0

    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionExit:I

    goto :goto_3

    .line 2911
    :cond_3
    const/4 v1, 0x0

    .line 2912
    .local v1, animAttr:I
    sparse-switch p3, :sswitch_data_0

    .line 2964
    :goto_4
    if-eqz v1, :cond_e

    invoke-direct {p0, p2, v1}, Lcom/android/server/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object v0, v2

    .restart local v0       #a:Landroid/view/animation/Animation;
    :goto_5
    goto :goto_0

    .line 2914
    .end local v0           #a:Landroid/view/animation/Animation;
    :sswitch_0
    if-eqz p4, :cond_4

    const/4 v2, 0x4

    move v1, v2

    .line 2917
    :goto_6
    goto :goto_4

    .line 2914
    :cond_4
    const/4 v2, 0x5

    move v1, v2

    goto :goto_6

    .line 2919
    :sswitch_1
    if-eqz p4, :cond_5

    const/4 v2, 0x6

    move v1, v2

    .line 2922
    :goto_7
    goto :goto_4

    .line 2919
    :cond_5
    const/4 v2, 0x7

    move v1, v2

    goto :goto_7

    .line 2924
    :sswitch_2
    if-eqz p4, :cond_6

    const/16 v2, 0x8

    move v1, v2

    .line 2927
    :goto_8
    goto :goto_4

    .line 2924
    :cond_6
    const/16 v2, 0x9

    move v1, v2

    goto :goto_8

    .line 2929
    :sswitch_3
    if-eqz p4, :cond_7

    const/16 v2, 0xa

    move v1, v2

    .line 2932
    :goto_9
    goto :goto_4

    .line 2929
    :cond_7
    const/16 v2, 0xb

    move v1, v2

    goto :goto_9

    .line 2934
    :sswitch_4
    if-eqz p4, :cond_8

    const/16 v2, 0xc

    move v1, v2

    .line 2937
    :goto_a
    goto :goto_4

    .line 2934
    :cond_8
    const/16 v2, 0xd

    move v1, v2

    goto :goto_a

    .line 2939
    :sswitch_5
    if-eqz p4, :cond_9

    const/16 v2, 0xe

    move v1, v2

    .line 2942
    :goto_b
    goto :goto_4

    .line 2939
    :cond_9
    const/16 v2, 0xf

    move v1, v2

    goto :goto_b

    .line 2944
    :sswitch_6
    if-eqz p4, :cond_a

    const/16 v2, 0x10

    move v1, v2

    .line 2947
    :goto_c
    goto :goto_4

    .line 2944
    :cond_a
    const/16 v2, 0x11

    move v1, v2

    goto :goto_c

    .line 2949
    :sswitch_7
    if-eqz p4, :cond_b

    const/16 v2, 0x12

    move v1, v2

    .line 2952
    :goto_d
    goto :goto_4

    .line 2949
    :cond_b
    const/16 v2, 0x13

    move v1, v2

    goto :goto_d

    .line 2954
    :sswitch_8
    if-eqz p4, :cond_c

    const/16 v2, 0x14

    move v1, v2

    .line 2957
    :goto_e
    goto :goto_4

    .line 2954
    :cond_c
    const/16 v2, 0x15

    move v1, v2

    goto :goto_e

    .line 2959
    :sswitch_9
    if-eqz p4, :cond_d

    const/16 v2, 0x16

    move v1, v2

    :goto_f
    goto :goto_4

    :cond_d
    const/16 v2, 0x17

    move v1, v2

    goto :goto_f

    .line 2964
    :cond_e
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_5

    .line 2982
    .end local v1           #animAttr:I
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$AppWindowToken;->clearAnimation()V

    goto/16 :goto_1

    .line 2985
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2912
    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_2
        0x100a -> :sswitch_4
        0x100d -> :sswitch_6
        0x100e -> :sswitch_8
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_3
        0x200b -> :sswitch_5
        0x200c -> :sswitch_7
        0x200f -> :sswitch_9
    .end sparse-switch
.end method

.method private applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z
    .locals 5
    .parameter "win"
    .parameter "transit"
    .parameter "isEntrance"

    .prologue
    const/4 v4, 0x1

    .line 2805
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    if-ne v3, p3, :cond_0

    move v3, v4

    .line 2860
    :goto_0
    return v3

    .line 2815
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2816
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p1, p2}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 2817
    .local v1, anim:I
    const/4 v2, -0x1

    .line 2818
    .local v2, attr:I
    const/4 v0, 0x0

    .line 2819
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz v1, :cond_3

    .line 2820
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2844
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 2853
    invoke-virtual {p1, v0}, Lcom/android/server/WindowManagerService$WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2854
    iput-boolean p3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    .line 2860
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_2
    :goto_2
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_0

    .line 2822
    .restart local v0       #a:Landroid/view/animation/Animation;
    .restart local v1       #anim:I
    .restart local v2       #attr:I
    :cond_3
    sparse-switch p2, :sswitch_data_0

    .line 2836
    :goto_3
    if-ltz v2, :cond_1

    .line 2837
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3, v2}, Lcom/android/server/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 2824
    :sswitch_0
    const/4 v2, 0x0

    .line 2825
    goto :goto_3

    .line 2827
    :sswitch_1
    const/4 v2, 0x1

    .line 2828
    goto :goto_3

    .line 2830
    :sswitch_2
    const/4 v2, 0x2

    .line 2831
    goto :goto_3

    .line 2833
    :sswitch_3
    const/4 v2, 0x3

    goto :goto_3

    .line 2857
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->clearAnimation()V

    goto :goto_2

    .line 2860
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 2822
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x2004 -> :sswitch_3
    .end sparse-switch
.end method

.method private applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 2794
    const/16 v0, 0x1003

    .line 2795
    .local v0, transit:I
    iget-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    if-eqz v1, :cond_0

    .line 2796
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2797
    const/16 v0, 0x1001

    .line 2800
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 2801
    return-void
.end method

.method private final assignLayersLocked()V
    .locals 7

    .prologue
    .line 8750
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8751
    .local v0, N:I
    const/4 v1, 0x0

    .line 8752
    .local v1, curBaseLayer:I
    const/4 v2, 0x0

    .line 8755
    .local v2, curLayer:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 8756
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 8757
    .local v4, w:Lcom/android/server/WindowManagerService$WindowState;
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    if-eq v5, v1, :cond_0

    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-nez v5, :cond_0

    if-lez v3, :cond_2

    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_2

    .line 8759
    :cond_0
    add-int/lit8 v2, v2, 0x5

    .line 8760
    iput v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    .line 8765
    :goto_1
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_3

    .line 8766
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 8772
    :goto_2
    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_5

    .line 8773
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 8755
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8762
    :cond_2
    iget v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v1, v2

    .line 8763
    iput v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    goto :goto_1

    .line 8767
    :cond_3
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_4

    .line 8768
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_2

    .line 8770
    :cond_4
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_2

    .line 8774
    :cond_5
    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_1

    .line 8775
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_3

    .line 8782
    .end local v4           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6
    return-void
.end method

.method static canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z
    .locals 3
    .parameter "w"

    .prologue
    const v2, 0x20008

    .line 949
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v1, v2

    .line 951
    .local v0, fl:I
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleOrAdding()Z

    move-result v1

    .line 954
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 10468
    const/4 v4, 0x0

    .line 10471
    .local v4, result:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    .line 10472
    .local v0, i:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v2, v7, v8

    .line 10473
    .local v2, nextAppIndex:I
    if-ltz v2, :cond_0

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v1, v7

    .line 10476
    .local v1, nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    :goto_0
    if-ltz v0, :cond_6

    .line 10477
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 10485
    .local v6, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10488
    .local v5, thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v5, :cond_1

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v7, :cond_1

    .line 10489
    add-int/lit8 v0, v0, -0x1

    .line 10490
    goto :goto_0

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_0
    move-object v1, v9

    .line 10473
    goto :goto_0

    .line 10496
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    if-eq v5, v1, :cond_5

    iget-object v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    .line 10498
    move v3, v2

    .line 10499
    .local v3, origAppIndex:I
    :cond_2
    if-lez v2, :cond_4

    .line 10500
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v1, v7, :cond_3

    move-object v7, v9

    .line 10533
    .end local v3           #origAppIndex:I
    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1
    return-object v7

    .line 10507
    .restart local v3       #origAppIndex:I
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 10508
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    check-cast v1, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10509
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    if-ne v1, v5, :cond_2

    .line 10513
    :cond_4
    if-eq v5, v1, :cond_5

    .line 10517
    move v2, v3

    .line 10518
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    check-cast v1, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10523
    .end local v3           #origAppIndex:I
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 10526
    move-object v4, v6

    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6
    move-object v7, v4

    .line 10533
    goto :goto_1

    .line 10530
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 10531
    goto :goto_0
.end method

.method private convertActivityResultToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 9
    .parameter "rawString"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3448
    const/4 v2, 0x0

    .line 3449
    .local v2, pkgName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3451
    .local v0, className:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1a

    if-gt v3, v4, :cond_1

    :cond_0
    move-object v3, v7

    .line 3476
    :goto_0
    return-object v3

    .line 3455
    :cond_1
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3457
    .local v1, parsingData:[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v3, v1

    if-eq v3, v8, :cond_3

    :cond_2
    move-object v3, v7

    .line 3458
    goto :goto_0

    .line 3461
    :cond_3
    aget-object v3, v1, v6

    const-string v4, "}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 3462
    aget-object v3, v1, v6

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3464
    if-eqz v1, :cond_4

    array-length v3, v1

    if-eq v3, v8, :cond_5

    :cond_4
    move-object v3, v7

    .line 3465
    goto :goto_0

    .line 3468
    :cond_5
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 3470
    aget-object v3, v1, v6

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 3471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3476
    :goto_1
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3473
    :cond_6
    aget-object v0, v1, v6

    goto :goto_1
.end method

.method private copySurfaceImpl(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/IWindow;)V
    .locals 7
    .parameter "session"
    .parameter "srcWindow"
    .parameter "dstWindow"

    .prologue
    .line 2326
    const-string v4, "android.permission.ACCESS_SURFACE_FLINGER"

    const-string v5, "setSurfaceFlagsWindow()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2328
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires ACCESS_SURFACE_FLINGER permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2331
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2333
    .local v1, origId:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2334
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v3

    .line 2335
    .local v3, srcW:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v5, 0x0

    invoke-virtual {p0, p1, p3, v5}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 2336
    .local v0, dstW:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    iget-object v5, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_1

    .line 2338
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2342
    :try_start_2
    iget-object v5, v3, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    iget-object v6, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/view/Surface;->copySurfaceTo(Landroid/view/Surface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2345
    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2348
    :cond_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2350
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2352
    return-void

    .line 2344
    :catchall_0
    move-exception v5

    .line 2345
    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2344
    throw v5

    .line 2348
    .end local v0           #dstW:Lcom/android/server/WindowManagerService$WindowState;
    .end local v3           #srcW:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2350
    :catchall_2
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private findIdxBasedOnAppTokens(Lcom/android/server/WindowManagerService$WindowState;)I
    .locals 7
    .parameter "win"

    .prologue
    const/4 v6, -0x1

    .line 735
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 736
    .local v2, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 737
    .local v1, jmax:I
    if-nez v1, :cond_0

    move v4, v6

    .line 746
    :goto_0
    return v4

    .line 740
    :cond_0
    const/4 v4, 0x1

    sub-int v0, v1, v4

    .local v0, j:I
    :goto_1
    if-ltz v0, :cond_2

    .line 741
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 742
    .local v3, wentry:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v4, v5, :cond_1

    move v4, v0

    .line 743
    goto :goto_0

    .line 740
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v3           #wentry:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    move v4, v6

    .line 746
    goto :goto_0
.end method

.method private findWindow(I)Lcom/android/server/WindowManagerService$WindowState;
    .locals 6
    .parameter "hashCode"

    .prologue
    .line 5324
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 5325
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindow()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v4

    .line 5340
    :goto_0
    return-object v4

    .line 5328
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5329
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 5330
    .local v3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5332
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 5333
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 5334
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 5335
    monitor-exit v4

    move-object v4, v2

    goto :goto_0

    .line 5332
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5338
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    monitor-exit v4

    .line 5340
    const/4 v4, 0x0

    goto :goto_0

    .line 5338
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private findWindowOffsetLocked(I)I
    .locals 10
    .parameter "tokenPos"

    .prologue
    const/4 v9, 0x1

    .line 4119
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4121
    .local v0, NW:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 4122
    move v2, v0

    .line 4123
    .local v2, i:I
    :cond_0
    if-lez v2, :cond_1

    .line 4124
    add-int/lit8 v2, v2, -0x1

    .line 4125
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 4126
    .local v5, win:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 4127
    add-int/lit8 v7, v2, 0x1

    .line 4172
    .end local v2           #i:I
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_0
    return v7

    .line 4132
    :cond_1
    :goto_1
    if-lez p1, :cond_9

    .line 4135
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    sub-int v8, p1, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 4138
    .local v6, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v7, v6, Lcom/android/server/WindowManagerService$WindowToken;->sendingToBottom:Z

    if-eqz v7, :cond_2

    .line 4141
    add-int/lit8 p1, p1, -0x1

    .line 4142
    goto :goto_1

    .line 4144
    :cond_2
    iget-object v7, v6, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4145
    .restart local v2       #i:I
    :cond_3
    if-lez v2, :cond_8

    .line 4146
    add-int/lit8 v2, v2, -0x1

    .line 4147
    iget-object v7, v6, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 4148
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4149
    .local v3, j:I
    :cond_4
    if-lez v3, :cond_6

    .line 4150
    add-int/lit8 v3, v3, -0x1

    .line 4151
    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 4152
    .local v1, cwin:Lcom/android/server/WindowManagerService$WindowState;
    iget v7, v1, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-ltz v7, :cond_4

    .line 4153
    sub-int v4, v0, v9

    .local v4, pos:I
    :goto_2
    if-ltz v4, :cond_4

    .line 4154
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    .line 4157
    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    .line 4153
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 4162
    .end local v1           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #pos:I
    :cond_6
    sub-int v4, v0, v9

    .restart local v4       #pos:I
    :goto_3
    if-ltz v4, :cond_3

    .line 4163
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_7

    .line 4165
    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    .line 4162
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 4169
    .end local v3           #j:I
    .end local v4           #pos:I
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 4170
    goto :goto_1

    .line 4172
    .end local v2           #i:I
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_9
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private finishUpdateFocusedWindowAfterAssignLayersLocked()V
    .locals 2

    .prologue
    .line 10464
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$InputMonitor;->setInputFocusLw(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 10465
    return-void
.end method

.method static fixScale(F)F
    .locals 1
    .parameter "scale"

    .prologue
    .line 4495
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    .line 4497
    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 4496
    :cond_1
    const/high16 v0, 0x41a0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 p0, 0x41a0

    goto :goto_0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 4
    .parameter "lp"

    .prologue
    .line 2761
    if-eqz p1, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2

    .line 2765
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object v0, v2

    .line 2766
    .local v0, packageName:Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2767
    .local v1, resId:I
    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_0

    .line 2768
    const-string v0, "android"

    .line 2772
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2775
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #resId:I
    :goto_1
    return-object v2

    .line 2765
    :cond_1
    const-string v2, "android"

    move-object v0, v2

    goto :goto_0

    .line 2775
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 2
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2781
    if-eqz p1, :cond_1

    .line 2782
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 2783
    const-string p1, "android"

    .line 2787
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 2790
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFocusedWindow()Lcom/android/server/WindowManagerService$WindowState;
    .locals 2

    .prologue
    .line 5997
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5998
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5999
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;
    .locals 1

    .prologue
    .line 6003
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .locals 3
    .parameter "tokens"
    .parameter "index"
    .parameter "defUnits"
    .parameter "defDps"
    .parameter "dm"

    .prologue
    .line 10617
    array-length v2, p0

    if-ge p1, v2, :cond_0

    .line 10618
    aget-object v0, p0, p1

    .line 10619
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 10621
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, val:I
    move v2, v1

    .line 10631
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #val:I
    :goto_0
    return v2

    .line 10623
    .restart local v0       #str:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 10627
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    if-nez p2, :cond_1

    move v2, p3

    .line 10628
    goto :goto_0

    .line 10630
    :cond_1
    int-to-float v2, p3

    invoke-static {p2, v2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .restart local v1       #val:I
    move v2, v1

    .line 10631
    goto :goto_0
.end method

.method private getWindowByPosition(Landroid/view/MotionEvent;)Lcom/android/server/WindowManagerService$WindowState;
    .locals 1
    .parameter "ev"

    .prologue
    .line 11303
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findWindowByPosition(Landroid/view/MotionEvent;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    return-object v0
.end method

.method private isSystemSecure()Z
    .locals 4

    .prologue
    const-string v3, "1"

    const-string v2, "0"

    .line 5039
    const-string v0, "1"

    const-string v0, "ro.secure"

    const-string v1, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    const-string v0, "ro.debuggable"

    const-string v1, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 5
    .parameter "lp"
    .parameter "animAttr"

    .prologue
    .line 2864
    const/4 v0, 0x0

    .line 2865
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2866
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 2867
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2868
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 2869
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 2870
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2873
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 2874
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2876
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2880
    const/4 v0, 0x0

    .line 2881
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2882
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 2883
    invoke-direct {p0, p1, p2}, Lcom/android/server/WindowManagerService;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2884
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 2885
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 2886
    move v0, p2

    .line 2889
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 2890
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2892
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static logSurface(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 4
    .parameter "w"
    .parameter "msg"
    .parameter "where"

    .prologue
    const-string v3, "WindowManager"

    .line 2242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2244
    .local v0, str:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2245
    const-string v1, "WindowManager"

    invoke-static {v3, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2249
    :goto_0
    return-void

    .line 2247
    :cond_0
    const-string v1, "WindowManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;
    .locals 2
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    .line 554
    new-instance v0, Lcom/android/server/WindowManagerService$WMThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$WMThread;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V

    .line 555
    .local v0, thr:Lcom/android/server/WindowManagerService$WMThread;
    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$WMThread;->start()V

    .line 557
    monitor-enter v0

    .line 558
    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WMThread;->mService:Lcom/android/server/WindowManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 560
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v1

    goto :goto_0

    .line 564
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 566
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WMThread;->mService:Lcom/android/server/WindowManagerService;

    return-object v1

    .line 564
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private moveAppWindowsLocked(Lcom/android/server/WindowManagerService$AppWindowToken;IZ)V
    .locals 2
    .parameter "wtoken"
    .parameter "tokenPos"
    .parameter "updateFocusAndLayout"

    .prologue
    .line 4274
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    .line 4277
    invoke-direct {p0, p2}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v0

    .line 4280
    .local v0, pos:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v0

    .line 4282
    if-eqz p3, :cond_1

    .line 4283
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4284
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 4286
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4287
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4289
    :cond_1
    return-void
.end method

.method private moveAppWindowsLocked(Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter "tokenPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 4293
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4295
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4296
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowToken;

    .line 4297
    .local v3, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v3, :cond_0

    .line 4298
    invoke-direct {p0, v3}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    .line 4295
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4303
    .end local v3           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v2

    .line 4306
    .local v2, pos:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 4307
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowToken;

    .line 4308
    .restart local v3       #token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v3, :cond_2

    .line 4309
    invoke-direct {p0, v2, v3}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 4306
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4313
    .end local v3           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_3
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4314
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 4316
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4317
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4320
    return-void
.end method

.method private moveChildWindowOnMyFlipImpl(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/IWindow;IIFI)V
    .locals 15
    .parameter "session"
    .parameter "client"
    .parameter "childWindow"
    .parameter "x"
    .parameter "y"
    .parameter "scale"
    .parameter "serial"

    .prologue
    .line 2287
    const-string v4, "android.permission.ACCESS_SURFACE_FLINGER"

    const-string v5, "setSurfaceFlagsWindow()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2289
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires ACCESS_SURFACE_FLINGER permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2292
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 2294
    .local v11, origId:J
    :try_start_0
    iget-object v14, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2295
    const/4 v4, 0x0

    :try_start_1
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v13

    .line 2296
    .local v13, w:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v10

    .line 2297
    .local v10, cw:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v13, :cond_1

    iget-object v4, v13, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_1

    if-eqz v10, :cond_1

    iget-object v4, v10, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_1

    .line 2299
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2306
    :try_start_2
    iget-object v4, v13, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    iget-object v5, v10, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v4 .. v9}, Landroid/view/Surface;->moveChildWindowOnMyFlip(Landroid/view/Surface;IIFI)V

    .line 2307
    iget-object v4, v10, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v5, v10, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, p4, v5

    iget-object v6, v10, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, p5, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2308
    iget-object v4, v10, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    iget-object v5, v10, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2309
    iget-object v4, v10, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    iget-object v5, v10, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2310
    move/from16 v0, p4

    move-object v1, v10

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    .line 2311
    move/from16 v0, p5

    move-object v1, v10

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    .line 2312
    iget-object v4, v10, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, p4

    move-object v1, v4

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2313
    iget-object v4, v10, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, p5

    move-object v1, v4

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2316
    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2319
    :cond_1
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2321
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2323
    return-void

    .line 2315
    :catchall_0
    move-exception v4

    .line 2316
    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2315
    throw v4

    .line 2319
    .end local v10           #cw:Lcom/android/server/WindowManagerService$WindowState;
    .end local v13           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_1
    move-exception v4

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2321
    :catchall_2
    move-exception v4

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private notifyFocusChanged()V
    .locals 5

    .prologue
    .line 5310
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 5311
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5312
    monitor-exit v3

    .line 5321
    :cond_0
    return-void

    .line 5314
    :cond_1
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Lcom/android/server/WindowManagerService$WindowChangeListener;

    .line 5315
    .local v2, windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/WindowManagerService$WindowChangeListener;

    .line 5316
    .restart local v2       #windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5317
    array-length v0, v2

    .line 5318
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5319
    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/WindowManagerService$WindowChangeListener;->focusChanged()V

    .line 5318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5316
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private notifyWindowsChanged()V
    .locals 5

    .prologue
    .line 5295
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 5296
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5297
    monitor-exit v3

    .line 5306
    :cond_0
    return-void

    .line 5299
    :cond_1
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Lcom/android/server/WindowManagerService$WindowChangeListener;

    .line 5300
    .local v2, windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/WindowManagerService$WindowChangeListener;

    .line 5301
    .restart local v2       #windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5302
    array-length v0, v2

    .line 5303
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5304
    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/WindowManagerService$WindowChangeListener;->windowsChanged()V

    .line 5303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5301
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private final performLayoutAndPlaceSurfacesLocked()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string v9, "WindowManager"

    .line 8786
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    if-eqz v6, :cond_1

    .line 8790
    const-string v6, "WindowManager"

    const-string v6, "performLayoutAndPlaceSurfacesLocked called while in layout"

    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8858
    :cond_0
    :goto_0
    return-void

    .line 8794
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    if-nez v6, :cond_0

    .line 8801
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v6, :cond_0

    .line 8806
    const/4 v2, 0x0

    .line 8807
    .local v2, recoveringMemory:Z
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 8808
    const/4 v2, 0x1

    .line 8810
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 8811
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 8812
    .local v5, ws:Lcom/android/server/WindowManagerService$WindowState;
    const-string v6, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8813
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-direct {p0, v6, v5}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 8810
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8815
    .end local v5           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 8816
    const-string v6, "WindowManager"

    const-string v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8817
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 8818
    .local v3, tmp:Ljava/lang/Object;
    monitor-enter v3

    .line 8820
    const-wide/16 v6, 0xfa

    :try_start_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8823
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8826
    .end local v1           #i:I
    .end local v3           #tmp:Ljava/lang/Object;
    :cond_3
    iput-boolean v8, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 8828
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V

    .line 8830
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v1, v6, v8

    .line 8831
    .restart local v1       #i:I
    if-ltz v1, :cond_6

    .line 8832
    :goto_3
    if-ltz v1, :cond_4

    .line 8833
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 8834
    .local v4, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-direct {p0, v6, v4}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 8835
    add-int/lit8 v1, v1, -0x1

    .line 8836
    goto :goto_3

    .line 8823
    .end local v4           #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v3       #tmp:Ljava/lang/Object;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 8837
    .end local v3           #tmp:Ljava/lang/Object;
    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 8839
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 8840
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 8841
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 8842
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 8850
    :cond_5
    :goto_4
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 8851
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 8852
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v8, 0x13

    invoke-virtual {v7, v8}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 8854
    .end local v1           #i:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 8855
    .local v0, e:Ljava/lang/RuntimeException;
    iput-boolean v10, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 8856
    const-string v6, "WindowManager"

    const-string v6, "Unhandled exception while layout out windows"

    invoke-static {v9, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 8845
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #i:I
    :cond_6
    const/4 v6, 0x0

    :try_start_5
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 8846
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v6, :cond_5

    .line 8847
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 8821
    .restart local v3       #tmp:Ljava/lang/Object;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method private final performLayoutAndPlaceSurfacesLockedInner(Z)V
    .locals 97
    .parameter "recoveringMemory"

    .prologue
    .line 8971
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v55

    .line 8972
    .local v55, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v21

    .line 8973
    .local v21, dw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v22

    .line 8977
    .local v22, dh:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 8978
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 8979
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 8983
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v67, v5, v6

    .local v67, i:I
    :goto_0
    if-ltz v67, :cond_1

    .line 8984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    .line 8983
    add-int/lit8 v67, v67, -0x1

    goto :goto_0

    .line 8988
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v67, v5, v6

    :goto_1
    if-ltz v67, :cond_2

    .line 8989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    .line 8988
    add-int/lit8 v67, v67, -0x1

    goto :goto_1

    .line 8992
    :cond_2
    const/16 v78, 0x1

    .line 8993
    .local v78, orientationChangeComplete:Z
    const/16 v66, 0x0

    .line 8994
    .local v66, holdScreen:Lcom/android/server/WindowManagerService$Session;
    const/high16 v81, -0x4080

    .line 8995
    .local v81, screenBrightness:F
    const/high16 v48, -0x4080

    .line 8996
    .local v48, buttonBrightness:F
    const/16 v61, 0x0

    .line 8997
    .local v61, focusDisplayed:Z
    const/16 v41, 0x0

    .line 8998
    .local v41, animating:Z
    const/16 v54, 0x0

    .line 9000
    .local v54, createWatermark:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v5, v0

    if-nez v5, :cond_3

    .line 9001
    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 9002
    const/16 v54, 0x1

    .line 9006
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    if-nez v5, :cond_4

    .line 9007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v94

    .line 9008
    .local v94, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v65

    .line 9014
    .local v65, height:I
    const/16 v9, 0x12

    .line 9015
    .local v9, mMw:I
    const/16 v10, 0x1e

    .line 9017
    .local v10, mMh:I
    div-int/lit8 v5, v94, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mMx:I

    .line 9018
    div-int/lit8 v5, v65, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mMy:I

    .line 9022
    :try_start_0
    new-instance v5, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v6, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const/4 v8, 0x0

    const/4 v11, -0x2

    const/4 v12, 0x4

    invoke-direct/range {v5 .. v12}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;IIIIII)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    .line 9029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v69

    .line 9031
    .local v69, mCanvas:Landroid/graphics/Canvas;
    new-instance v84, Landroid/graphics/Paint;

    invoke-direct/range {v84 .. v84}, Landroid/graphics/Paint;-><init>()V

    .line 9032
    .local v84, tPaint:Landroid/graphics/Paint;
    const/high16 v5, -0x100

    move-object/from16 v0, v84

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9033
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v84

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9034
    const/high16 v5, 0x4000

    move-object/from16 v0, v84

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9037
    new-instance v70, Landroid/graphics/Path;

    invoke-direct/range {v70 .. v70}, Landroid/graphics/Path;-><init>()V

    .line 9038
    .local v70, mPath:Landroid/graphics/Path;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v70

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 9039
    const/high16 v5, 0x4190

    const/high16 v6, 0x4184

    move-object/from16 v0, v70

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9040
    const/high16 v5, 0x4128

    const/high16 v6, 0x4184

    move-object/from16 v0, v70

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9041
    const/high16 v5, 0x4184

    const/high16 v6, 0x41e4

    move-object/from16 v0, v70

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9042
    const/high16 v5, 0x4140

    const/high16 v6, 0x41f0

    move-object/from16 v0, v70

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9043
    const/high16 v5, 0x40c0

    const/high16 v6, 0x4190

    move-object/from16 v0, v70

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9044
    const/4 v5, 0x0

    const/high16 v6, 0x41c0

    move-object/from16 v0, v70

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9045
    invoke-virtual/range {v70 .. v70}, Landroid/graphics/Path;->close()V

    .line 9047
    invoke-virtual/range {v69 .. v70}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 9048
    const/4 v5, -0x1

    move-object/from16 v0, v69

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 9049
    move-object/from16 v0, v69

    move-object/from16 v1, v70

    move-object/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 9051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 9052
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 9053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mMx:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mMy:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 9054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V

    .line 9055
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9064
    .end local v9           #mMw:I
    .end local v10           #mMh:I
    .end local v65           #height:I
    .end local v69           #mCanvas:Landroid/graphics/Canvas;
    .end local v70           #mPath:Landroid/graphics/Path;
    .end local v84           #tPaint:Landroid/graphics/Paint;
    .end local v94           #width:I
    :cond_4
    :goto_2
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 9066
    if-eqz v54, :cond_5

    .line 9067
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->createWatermark()V

    .line 9069
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWatermark:Lcom/android/server/WindowManagerService$Watermark;

    move-object v5, v0

    if-eqz v5, :cond_6

    .line 9070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWatermark:Lcom/android/server/WindowManagerService$Watermark;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$Watermark;->positionSurface(II)V

    .line 9074
    :cond_6
    const/16 v91, 0x0

    .line 9075
    .local v91, wallpaperForceHidingChanged:Z
    const/16 v79, 0x0

    .line 9076
    .local v79, repeats:I
    const/16 v51, 0x0

    .line 9079
    .local v51, changes:I
    :cond_7
    add-int/lit8 v79, v79, 0x1

    .line 9080
    const/4 v5, 0x6

    move/from16 v0, v79

    move v1, v5

    if-le v0, v1, :cond_21

    .line 9081
    :try_start_1
    const-string v5, "WindowManager"

    const-string v6, "Animation repeat aborted after too many iterations"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9082
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9641
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_70

    const/4 v5, 0x1

    move/from16 v82, v5

    .line 9643
    .local v82, someoneLosingFocus:Z
    :goto_4
    const/16 v74, 0x0

    .line 9644
    .local v74, obscured:Z
    const/16 v47, 0x0

    .line 9645
    .local v47, blurring:Z
    const/16 v58, 0x0

    .line 9646
    .local v58, dimming:Z
    const/16 v53, 0x0

    .line 9647
    .local v53, covered:Z
    const/16 v83, 0x0

    .line 9648
    .local v83, syswin:Z
    const/16 v45, 0x0

    .line 9650
    .local v45, backgroundFillerShown:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 9652
    .local v32, N:I
    const/4 v5, 0x1

    sub-int v67, v32, v5

    :goto_5
    if-ltz v67, :cond_88

    .line 9653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/android/server/WindowManagerService$WindowState;

    .line 9655
    .local v89, w:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v59, 0x0

    .line 9656
    .local v59, displayed:Z
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    .line 9657
    .local v44, attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v43, v0

    .line 9659
    .local v43, attrFlags:I
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_7f

    .line 9674
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/WindowManagerService$WindowState;->computeShownFrameLocked()V

    .line 9682
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_72

    .line 9683
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedWidth:I

    move v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    move v6, v0

    if-ne v5, v6, :cond_8

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedHeight:I

    move v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    move v6, v0

    if-eq v5, v6, :cond_71

    :cond_8
    const/4 v5, 0x1

    move/from16 v80, v5

    .line 9687
    .local v80, resize:Z
    :goto_6
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    move/from16 v94, v0

    .line 9688
    .restart local v94       #width:I
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    move/from16 v65, v0

    .line 9689
    .restart local v65       #height:I
    move/from16 v0, v94

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedWidth:I

    .line 9690
    move/from16 v0, v65

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedHeight:I

    .line 9691
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9696
    :try_start_2
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    .line 9697
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    .line 9698
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 9712
    :cond_9
    :goto_7
    if-eqz v80, :cond_c

    .line 9713
    const/4 v5, 0x1

    move/from16 v0, v94

    move v1, v5

    if-ge v0, v1, :cond_a

    const/16 v94, 0x1

    .line 9714
    :cond_a
    const/4 v5, 0x1

    move/from16 v0, v65

    move v1, v5

    if-ge v0, v1, :cond_b

    const/16 v65, 0x1

    .line 9715
    :cond_b
    :try_start_3
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v5, :cond_c

    .line 9722
    const/4 v5, 0x1

    :try_start_4
    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceResized:Z

    .line 9723
    move/from16 v0, v94

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceW:I

    .line 9724
    move/from16 v0, v65

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceH:I

    .line 9725
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v94

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 9726
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    .line 9727
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    .line 9728
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 9744
    :cond_c
    :goto_8
    :try_start_5
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    move v5, v0

    if-nez v5, :cond_11

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    move v6, v0

    if-ne v5, v6, :cond_11

    .line 9745
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    const/4 v5, 0x1

    :goto_9
    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    .line 9747
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    const/4 v5, 0x1

    :goto_a
    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    .line 9749
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    if-eq v5, v6, :cond_76

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_76

    :cond_d
    const/4 v5, 0x1

    move/from16 v52, v5

    .line 9760
    .local v52, configChanged:Z
    :goto_b
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    move v5, v0

    if-nez v5, :cond_e

    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    move v5, v0

    if-nez v5, :cond_e

    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceResized:Z

    move v5, v0

    if-nez v5, :cond_e

    if-eqz v52, :cond_77

    .line 9765
    :cond_e
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9766
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9767
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9771
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-eqz v5, :cond_f

    .line 9774
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 9775
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    move v5, v0

    if-nez v5, :cond_f

    .line 9776
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 9779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 9780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v6, v0

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9789
    :cond_f
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_10

    .line 9793
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    .line 9794
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 9795
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 9796
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    if-eqz v5, :cond_10

    .line 9797
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 9802
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9813
    .end local v52           #configChanged:Z
    :cond_11
    :goto_c
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    move v5, v0

    if-nez v5, :cond_12

    invoke-virtual/range {v89 .. v89}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v5

    if-nez v5, :cond_78

    .line 9814
    :cond_12
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-nez v5, :cond_13

    .line 9822
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 9825
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_13

    .line 9826
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 9828
    :try_start_6
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 9840
    :cond_13
    :goto_d
    :try_start_7
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_14

    .line 9841
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 9907
    :cond_14
    :goto_e
    if-eqz v59, :cond_18

    .line 9908
    if-nez v53, :cond_15

    .line 9909
    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_15

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_15

    .line 9911
    const/16 v53, 0x1

    .line 9914
    :cond_15
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_17

    .line 9915
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_16

    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-eqz v5, :cond_7e

    .line 9916
    :cond_16
    const/16 v78, 0x0

    .line 9925
    :cond_17
    :goto_f
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    .line 9933
    .end local v65           #height:I
    .end local v80           #resize:Z
    .end local v94           #width:I
    :cond_18
    :goto_10
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/WindowManagerService$WindowState;->isDisplayedLw()Z

    move-result v49

    .line 9935
    .local v49, canBeSeen:Z
    if-eqz v82, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v89

    move-object v1, v5

    if-ne v0, v1, :cond_19

    if-eqz v49, :cond_19

    .line 9936
    const/16 v61, 0x1

    .line 9939
    :cond_19
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    move v5, v0

    move v0, v5

    move/from16 v1, v74

    if-eq v0, v1, :cond_80

    const/4 v5, 0x1

    move/from16 v75, v5

    .line 9942
    .local v75, obscuredChanged:Z
    :goto_11
    move/from16 v0, v74

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    if-nez v74, :cond_1f

    .line 9943
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_1e

    .line 9944
    move/from16 v0, v43

    and-int/lit16 v0, v0, 0x80

    move v5, v0

    if-eqz v5, :cond_1a

    .line 9945
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object/from16 v66, v0

    .line 9947
    :cond_1a
    if-nez v83, :cond_1b

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1b

    const/4 v5, 0x0

    cmpg-float v5, v81, v5

    if-gez v5, :cond_1b

    .line 9949
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    move/from16 v81, v0

    .line 9951
    :cond_1b
    if-nez v83, :cond_1c

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1c

    const/4 v5, 0x0

    cmpg-float v5, v48, v5

    if-gez v5, :cond_1c

    .line 9953
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    move/from16 v48, v0

    .line 9955
    :cond_1c
    if-eqz v49, :cond_1e

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_1d

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7d4

    if-eq v5, v6, :cond_1d

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7da

    if-ne v5, v6, :cond_1e

    .line 9959
    :cond_1d
    const/16 v83, 0x1

    .line 9963
    :cond_1e
    if-eqz v49, :cond_81

    invoke-virtual/range {v89 .. v89}, Lcom/android/server/WindowManagerService$WindowState;->isOpaqueDrawn()Z

    move-result v5

    if-eqz v5, :cond_81

    const/4 v5, 0x1

    move/from16 v77, v5

    .line 9964
    .local v77, opaqueDrawn:Z
    :goto_12
    if-eqz v77, :cond_82

    move-object/from16 v0, v89

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 9968
    const/16 v74, 0x1

    .line 10053
    .end local v77           #opaqueDrawn:Z
    :cond_1f
    :goto_13
    if-eqz v75, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v89

    if-ne v0, v1, :cond_20

    .line 10057
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateWallpaperVisibilityLocked()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 9652
    :cond_20
    add-int/lit8 v67, v67, -0x1

    goto/16 :goto_5

    .line 9056
    .end local v32           #N:I
    .end local v43           #attrFlags:I
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v45           #backgroundFillerShown:Z
    .end local v47           #blurring:Z
    .end local v49           #canBeSeen:Z
    .end local v51           #changes:I
    .end local v53           #covered:Z
    .end local v58           #dimming:Z
    .end local v59           #displayed:Z
    .end local v74           #obscured:Z
    .end local v75           #obscuredChanged:Z
    .end local v79           #repeats:I
    .end local v82           #someoneLosingFocus:Z
    .end local v83           #syswin:Z
    .end local v89           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v91           #wallpaperForceHidingChanged:Z
    .restart local v9       #mMw:I
    .restart local v10       #mMh:I
    .restart local v65       #height:I
    .restart local v94       #width:I
    :catch_0
    move-exception v5

    move-object/from16 v60, v5

    .line 9057
    .local v60, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating mouse surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 9086
    .end local v9           #mMw:I
    .end local v10           #mMh:I
    .end local v60           #e:Ljava/lang/Exception;
    .end local v65           #height:I
    .end local v94           #width:I
    .restart local v51       #changes:I
    .restart local v79       #repeats:I
    .restart local v91       #wallpaperForceHidingChanged:Z
    :cond_21
    and-int/lit8 v5, v51, 0x7

    if-eqz v5, :cond_24

    .line 9089
    and-int/lit8 v5, v51, 0x4

    if-eqz v5, :cond_22

    .line 9090
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_22

    .line 9091
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 9092
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9095
    :cond_22
    and-int/lit8 v5, v51, 0x2

    if-eqz v5, :cond_23

    .line 9097
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 9098
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 9102
    :cond_23
    and-int/lit8 v5, v51, 0x1

    if-eqz v5, :cond_24

    .line 9103
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9108
    :cond_24
    const/4 v5, 0x4

    move/from16 v0, v79

    move v1, v5

    if-ge v0, v1, :cond_25

    .line 9109
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutLockedInner()I

    move-result v51

    .line 9110
    if-eqz v51, :cond_26

    .line 9637
    :goto_14
    if-nez v51, :cond_7

    goto/16 :goto_3

    .line 9114
    :cond_25
    const-string v5, "WindowManager"

    const-string v6, "Layout repeat skipped after too many iterations"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9115
    const/16 v51, 0x0

    .line 9118
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    move v5, v0

    add-int/lit8 v88, v5, 0x1

    move/from16 v0, v88

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    .line 9122
    .local v88, transactionSequence:I
    const/16 v87, 0x0

    .line 9123
    .local v87, tokensAnimating:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 9124
    .local v33, NAT:I
    const/16 v67, 0x0

    :goto_15
    move/from16 v0, v67

    move/from16 v1, v33

    if-ge v0, v1, :cond_28

    .line 9125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v0, v5

    move-wide/from16 v1, v55

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 9126
    const/16 v87, 0x1

    .line 9124
    :cond_27
    add-int/lit8 v67, v67, 0x1

    goto :goto_15

    .line 9129
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v35

    .line 9130
    .local v35, NEAT:I
    const/16 v67, 0x0

    :goto_16
    move/from16 v0, v67

    move/from16 v1, v35

    if-ge v0, v1, :cond_2a

    .line 9131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v0, v5

    move-wide/from16 v1, v55

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 9132
    const/16 v87, 0x1

    .line 9130
    :cond_29
    add-int/lit8 v67, v67, 0x1

    goto :goto_16

    .line 9142
    :cond_2a
    move/from16 v41, v87

    .line 9144
    const/16 v86, 0x0

    .line 9145
    .local v86, tokenMayBeDrawn:Z
    const/16 v92, 0x0

    .line 9146
    .local v92, wallpaperMayChange:Z
    const/16 v62, 0x0

    .line 9148
    .local v62, forceHiding:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->beginAnimationLw(II)V

    .line 9150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 9152
    .restart local v32       #N:I
    const/4 v5, 0x1

    sub-int v67, v32, v5

    :goto_17
    if-ltz v67, :cond_4b

    .line 9153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/android/server/WindowManagerService$WindowState;

    .line 9155
    .restart local v89       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    .line 9157
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_2f

    .line 9159
    move-object/from16 v0, v89

    move-wide/from16 v1, v55

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->commitFinishDrawingLocked(J)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 9160
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_2b

    .line 9164
    const/16 v92, 0x1

    .line 9168
    :cond_2b
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    move/from16 v93, v0

    .line 9169
    .local v93, wasAnimating:Z
    move-object/from16 v0, v89

    move-wide/from16 v1, v55

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$WindowState;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 9170
    const/16 v41, 0x1

    .line 9173
    :cond_2c
    if-eqz v93, :cond_2d

    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    move v5, v0

    if-nez v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v89

    if-ne v0, v1, :cond_2d

    .line 9174
    const/16 v92, 0x1

    .line 9177
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v89

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 9178
    if-nez v93, :cond_35

    if-eqz v41, :cond_35

    .line 9182
    const/16 v91, 0x1

    .line 9183
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 9224
    :cond_2e
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v89

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 9227
    .end local v93           #wasAnimating:Z
    :cond_2f
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v42, v0

    .line 9228
    .local v42, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v42, :cond_4a

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    move v5, v0

    if-eqz v5, :cond_30

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_4a

    .line 9229
    :cond_30
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->lastTransactionSequence:I

    move v5, v0

    move v0, v5

    move/from16 v1, v88

    if-eq v0, v1, :cond_31

    .line 9230
    move/from16 v0, v88

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->lastTransactionSequence:I

    .line 9231
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    .line 9232
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    .line 9234
    :cond_31
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/WindowManagerService$WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_32

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_34

    :cond_32
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move v5, v0

    if-nez v5, :cond_34

    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    move v5, v0

    if-nez v5, :cond_34

    .line 9251
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v89

    move-object v1, v5

    if-eq v0, v1, :cond_49

    .line 9252
    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_33

    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    move v5, v0

    if-nez v5, :cond_34

    .line 9253
    :cond_33
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    .line 9254
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 9255
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    .line 9260
    const/16 v86, 0x1

    .line 9152
    :cond_34
    :goto_19
    add-int/lit8 v67, v67, -0x1

    goto/16 :goto_17

    .line 9184
    .end local v42           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v93       #wasAnimating:Z
    :cond_35
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v5

    if-eqz v5, :cond_2e

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object v5, v0

    if-nez v5, :cond_2e

    goto/16 :goto_18

    .line 9187
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v89

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 9189
    if-eqz v62, :cond_38

    .line 9190
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v89

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->hideLw(ZZ)Z

    move-result v50

    .line 9218
    .local v50, changed:Z
    :cond_37
    :goto_1a
    if-eqz v50, :cond_2e

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v5, v0

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_2e

    .line 9220
    const/16 v92, 0x1

    goto/16 :goto_18

    .line 9194
    .end local v50           #changed:Z
    :cond_38
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v89

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->showLw(ZZ)Z

    move-result v50

    .line 9197
    .restart local v50       #changed:Z
    if-eqz v50, :cond_37

    .line 9198
    if-eqz v91, :cond_39

    invoke-virtual/range {v89 .. v89}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 9204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v38

    .line 9205
    .local v38, a:Landroid/view/animation/Animation;
    if-eqz v38, :cond_39

    .line 9206
    move-object/from16 v0, v89

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 9209
    .end local v38           #a:Landroid/view/animation/Animation;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move v6, v0

    if-ge v5, v6, :cond_37

    .line 9214
    :cond_3a
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1a

    .line 10088
    .end local v32           #N:I
    .end local v33           #NAT:I
    .end local v35           #NEAT:I
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v50           #changed:Z
    .end local v62           #forceHiding:Z
    .end local v86           #tokenMayBeDrawn:Z
    .end local v87           #tokensAnimating:Z
    .end local v88           #transactionSequence:I
    .end local v89           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v92           #wallpaperMayChange:Z
    .end local v93           #wasAnimating:Z
    :catch_1
    move-exception v5

    move-object/from16 v60, v5

    .line 10089
    .local v60, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Unhandled exception in Window Manager"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10092
    .end local v60           #e:Ljava/lang/RuntimeException;
    :cond_3b
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 10094
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 10096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWatermark:Lcom/android/server/WindowManagerService$Watermark;

    move-object v5, v0

    if-eqz v5, :cond_3c

    .line 10097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWatermark:Lcom/android/server/WindowManagerService$Watermark;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$Watermark;->drawIfNeeded()V

    .line 10103
    :cond_3c
    if-eqz v78, :cond_3e

    .line 10104
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_3d

    .line 10105
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 10106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10108
    :cond_3d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 10111
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v67

    .line 10112
    if-lez v67, :cond_41

    .line 10114
    :cond_3f
    add-int/lit8 v67, v67, -0x1

    .line 10115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Lcom/android/server/WindowManagerService$WindowState;

    .line 10119
    .local v95, win:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v57, 0x0

    .line 10120
    .local v57, diff:I
    :try_start_9
    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    if-eq v5, v6, :cond_8d

    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    if-eqz v5, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v57

    if-eqz v57, :cond_8d

    :cond_40
    const/4 v5, 0x1

    move/from16 v52, v5

    .line 10131
    .restart local v52       #configChanged:Z
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v95

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 10132
    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v24

    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v25

    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v95

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v28, v0

    if-eqz v52, :cond_8e

    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v29, v5

    :goto_1d
    invoke-interface/range {v23 .. v29}, Landroid/view/IWindow;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    .line 10136
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v95

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    .line 10137
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v95

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    .line 10138
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v95

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceResized:Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_c

    .line 10142
    .end local v52           #configChanged:Z
    :goto_1e
    if-gtz v67, :cond_3f

    .line 10143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10146
    .end local v57           #diff:I
    .end local v95           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_41
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->wallpaperPaintPending:Z

    move v5, v0

    if-eqz v5, :cond_43

    .line 10148
    :try_start_a
    const-string v5, "WindowManager"

    const-string v6, "Calling visibility  : "

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10151
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->wallpaperPaintPending:Z

    .line 10152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->tempWallpaperWindow:Landroid/view/IWindow;

    move-object v5, v0

    if-eqz v5, :cond_42

    .line 10153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->tempWallpaperWindow:Landroid/view/IWindow;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->tempWallpaperVisible:Z

    move v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V

    .line 10154
    :cond_42
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->tempWallpaperWindow:Landroid/view/IWindow;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_d

    .line 10159
    :cond_43
    :goto_1f
    const/16 v90, 0x0

    .line 10160
    .local v90, wallpaperDestroyed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v67

    .line 10161
    if-lez v67, :cond_47

    .line 10163
    :cond_44
    add-int/lit8 v67, v67, -0x1

    .line 10164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Lcom/android/server/WindowManagerService$WindowState;

    .line 10165
    .restart local v95       #win:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v95

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    .line 10166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v95

    if-ne v0, v1, :cond_45

    .line 10167
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 10169
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v95

    move-object v1, v5

    if-ne v0, v1, :cond_46

    .line 10170
    const/16 v90, 0x1

    .line 10172
    :cond_46
    invoke-virtual/range {v95 .. v95}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V

    .line 10173
    if-gtz v67, :cond_44

    .line 10174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10178
    .end local v95           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v67, v5, v6

    :goto_20
    if-ltz v67, :cond_8f

    .line 10179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10180
    .local v85, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, v85

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    move v5, v0

    if-nez v5, :cond_48

    .line 10181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10182
    move-object/from16 v0, v85

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    move v5, v0

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_48

    .line 10183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10178
    :cond_48
    add-int/lit8 v67, v67, -0x1

    goto :goto_20

    .line 9263
    .end local v85           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v90           #wallpaperDestroyed:Z
    .restart local v32       #N:I
    .restart local v33       #NAT:I
    .restart local v35       #NEAT:I
    .restart local v42       #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v62       #forceHiding:Z
    .restart local v86       #tokenMayBeDrawn:Z
    .restart local v87       #tokensAnimating:Z
    .restart local v88       #transactionSequence:I
    .restart local v89       #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v92       #wallpaperMayChange:Z
    :cond_49
    :try_start_b
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 9264
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_19

    .line 9267
    :cond_4a
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    move v5, v0

    if-eqz v5, :cond_34

    .line 9268
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/WindowManagerService$WindowState;->performShowLocked()Z

    goto/16 :goto_19

    .line 9272
    .end local v42           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v89           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->finishAnimationLw()I

    move-result v5

    or-int v51, v51, v5

    .line 9274
    if-eqz v86, :cond_4f

    .line 9277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v37

    .line 9278
    .local v37, NT:I
    const/16 v67, 0x0

    :goto_21
    move/from16 v0, v67

    move/from16 v1, v37

    if-ge v0, v1, :cond_4f

    .line 9279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowToken;

    iget-object v12, v5, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9280
    .local v12, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v12, :cond_4d

    .line 9278
    :cond_4c
    :goto_22
    add-int/lit8 v67, v67, 0x1

    goto :goto_21

    .line 9283
    :cond_4d
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_4e

    .line 9284
    move-object v0, v12

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move/from16 v73, v0

    .line 9285
    .local v73, numInteresting:I
    if-lez v73, :cond_4c

    iget v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move/from16 v1, v73

    if-lt v0, v1, :cond_4c

    .line 9290
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    .line 9291
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 9292
    const/16 v78, 0x1

    goto :goto_22

    .line 9294
    .end local v73           #numInteresting:I
    :cond_4e
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_4c

    .line 9295
    move-object v0, v12

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move/from16 v73, v0

    .line 9296
    .restart local v73       #numInteresting:I
    if-lez v73, :cond_4c

    iget v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move/from16 v1, v73

    if-lt v0, v1, :cond_4c

    .line 9301
    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 9302
    or-int/lit8 v51, v51, 0x8

    .line 9305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 9306
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    goto :goto_22

    .line 9316
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v37           #NT:I
    .end local v73           #numInteresting:I
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    move v5, v0

    if-eqz v5, :cond_65

    .line 9317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 9318
    .local v36, NN:I
    const/16 v64, 0x1

    .line 9323
    .local v64, goodToGo:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-nez v5, :cond_51

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    move v5, v0

    if-nez v5, :cond_51

    .line 9327
    const/16 v67, 0x0

    :goto_23
    move/from16 v0, v67

    move/from16 v1, v36

    if-ge v0, v1, :cond_51

    if-eqz v64, :cond_51

    .line 9328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9333
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_50

    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    if-nez v5, :cond_50

    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    if-nez v5, :cond_50

    .line 9335
    const/16 v64, 0x0

    .line 9327
    :cond_50
    add-int/lit8 v67, v67, 0x1

    goto :goto_23

    .line 9339
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_51
    if-eqz v64, :cond_65

    .line 9341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    move v15, v0

    .line 9342
    .local v15, transit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    move v5, v0

    if-eqz v5, :cond_52

    .line 9343
    const/4 v15, -0x1

    .line 9345
    :cond_52
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 9346
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 9347
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 9348
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 9349
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 9350
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 9352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 9359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_55

    .line 9360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 9361
    const/16 v67, 0x0

    :goto_24
    move/from16 v0, v67

    move/from16 v1, v36

    if-ge v0, v1, :cond_54

    .line 9362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9363
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$WindowToken;->sendingToTop:Z

    if-eqz v5, :cond_53

    .line 9364
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$WindowToken;->sendingToTop:Z

    .line 9365
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v36

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Lcom/android/server/WindowManagerService$AppWindowToken;IZ)V

    .line 9361
    :cond_53
    add-int/lit8 v67, v67, 0x1

    goto :goto_24

    .line 9368
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 9371
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v76, v0

    .line 9373
    .local v76, oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 9374
    const/16 v92, 0x0

    .line 9378
    const/4 v13, 0x0

    .line 9379
    .local v13, animLp:Landroid/view/WindowManager$LayoutParams;
    const/16 v40, 0x0

    .line 9380
    .local v40, animToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v46, -0x1

    .line 9386
    .local v46, bestAnimLayer:I
    const/16 v63, 0x0

    .line 9397
    .local v63, foundWallpapers:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 9398
    .local v34, NC:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v36, v34, v5

    .line 9399
    const/16 v67, 0x0

    :goto_25
    move/from16 v0, v67

    move/from16 v1, v36

    if-ge v0, v1, :cond_5b

    .line 9402
    move/from16 v0, v67

    move/from16 v1, v34

    if-ge v0, v1, :cond_59

    .line 9403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9404
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v71, 0x1

    .line 9409
    .local v71, mode:I
    :goto_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_57

    .line 9410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v5, v12, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v5, v12, :cond_57

    .line 9412
    :cond_56
    or-int v63, v63, v71

    .line 9415
    :cond_57
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    if-eqz v5, :cond_58

    .line 9416
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->findMainWindow()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v96

    .line 9417
    .local v96, ws:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v96, :cond_58

    .line 9420
    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x2000

    and-int/2addr v5, v6

    if-eqz v5, :cond_5a

    .line 9421
    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v13, v0

    .line 9422
    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v40, v0

    .line 9423
    const v46, 0x7fffffff

    .line 9399
    .end local v96           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_58
    :goto_27
    add-int/lit8 v67, v67, 0x1

    goto :goto_25

    .line 9406
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v71           #mode:I
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    sub-int v6, v67, v34

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9407
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v71, 0x2

    .restart local v71       #mode:I
    goto :goto_26

    .line 9424
    .restart local v96       #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5a
    move-object/from16 v0, v96

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move v5, v0

    move v0, v5

    move/from16 v1, v46

    if-le v0, v1, :cond_58

    .line 9425
    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v13, v0

    .line 9426
    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v40, v0

    .line 9427
    move-object/from16 v0, v96

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move/from16 v46, v0

    goto :goto_27

    .line 9433
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v71           #mode:I
    .end local v96           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5b
    const/4 v5, 0x3

    move/from16 v0, v63

    move v1, v5

    if-ne v0, v1, :cond_5f

    .line 9436
    sparse-switch v15, :sswitch_data_0

    .line 9464
    :cond_5c
    :goto_28
    and-int/lit16 v5, v15, 0x1000

    if-eqz v5, :cond_61

    .line 9465
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9466
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    .line 9477
    :cond_5d
    :goto_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 9478
    const/4 v13, 0x0

    .line 9481
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 9482
    const/16 v67, 0x0

    :goto_2a
    move/from16 v0, v67

    move/from16 v1, v36

    if-ge v0, v1, :cond_62

    .line 9483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9486
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->reportedVisible:Z

    .line 9487
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 9488
    const/4 v5, 0x0

    iput-object v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 9489
    const/4 v14, 0x1

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 9490
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 9491
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$WindowToken;->waitingToShow:Z

    .line 9492
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    .line 9482
    add-int/lit8 v67, v67, 0x1

    goto :goto_2a

    .line 9440
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :sswitch_0
    const/16 v15, 0x100e

    .line 9441
    goto :goto_28

    .line 9445
    :sswitch_1
    const/16 v15, 0x200f

    goto :goto_28

    .line 9450
    :cond_5f
    if-eqz v76, :cond_60

    .line 9453
    const/16 v15, 0x200c

    goto :goto_28

    .line 9456
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_5c

    .line 9459
    const/16 v15, 0x100d

    goto :goto_28

    .line 9467
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    if-eqz v5, :cond_5d

    .line 9468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    move-object v13, v0

    .line 9469
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9470
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    goto :goto_29

    .line 9494
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 9495
    const/16 v67, 0x0

    :goto_2b
    move/from16 v0, v67

    move/from16 v1, v36

    if-ge v0, v1, :cond_63

    .line 9496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9499
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 9500
    const/4 v5, 0x0

    iput-object v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 9501
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 9502
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 9503
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$WindowToken;->waitingToHide:Z

    .line 9507
    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 9495
    add-int/lit8 v67, v67, 0x1

    goto :goto_2b

    .line 9510
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_63
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 9512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 9513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 9517
    or-int/lit8 v51, v51, 0x1

    .line 9518
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9519
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v5

    if-nez v5, :cond_64

    .line 9520
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 9522
    :cond_64
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 9523
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 9527
    .end local v13           #animLp:Landroid/view/WindowManager$LayoutParams;
    .end local v15           #transit:I
    .end local v34           #NC:I
    .end local v36           #NN:I
    .end local v40           #animToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v46           #bestAnimLayer:I
    .end local v63           #foundWallpapers:I
    .end local v64           #goodToGo:Z
    .end local v76           #oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_65
    const/16 v39, 0x0

    .line 9529
    .local v39, adjResult:I
    if-nez v41, :cond_66

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    move v5, v0

    if-eqz v5, :cond_66

    .line 9536
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 9538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 9540
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 9541
    or-int/lit8 v51, v51, 0x1

    .line 9542
    or-int/lit8 v39, v39, 0x2

    .line 9543
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 9544
    const/16 v92, 0x1

    .line 9548
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 9551
    :cond_66
    if-eqz v91, :cond_6a

    if-nez v51, :cond_6a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    move v5, v0

    if-nez v5, :cond_6a

    .line 9558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v76, v0

    .line 9559
    .restart local v76       #oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_67

    .line 9567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-eqz v5, :cond_67

    .line 9571
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 9572
    or-int/lit8 v51, v51, 0x8

    .line 9575
    :cond_67
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v39, v39, v5

    .line 9576
    const/16 v92, 0x0

    .line 9577
    const/16 v91, 0x0

    .line 9581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-nez v5, :cond_6a

    .line 9584
    const/16 v62, 0x0

    .line 9585
    const/4 v5, 0x1

    sub-int v67, v32, v5

    :goto_2c
    if-ltz v67, :cond_6a

    .line 9586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/android/server/WindowManagerService$WindowState;

    .line 9587
    .restart local v89       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_68

    .line 9588
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    .line 9589
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v89

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-virtual/range {v89 .. v89}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 9585
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_68
    :goto_2d
    add-int/lit8 v67, v67, -0x1

    goto :goto_2c

    .line 9592
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v89

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 9593
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    move v5, v0

    if-nez v5, :cond_68

    .line 9596
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/WindowManagerService$WindowState;->clearAnimation()V

    goto :goto_2d

    .line 9604
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v76           #oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    .end local v89           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6a
    if-eqz v92, :cond_6b

    .line 9607
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v39, v39, v5

    .line 9610
    :cond_6b
    and-int/lit8 v5, v39, 0x2

    if-eqz v5, :cond_6f

    .line 9613
    or-int/lit8 v51, v51, 0x1

    .line 9614
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 9621
    :cond_6c
    :goto_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    move v5, v0

    if-eqz v5, :cond_6d

    .line 9622
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 9623
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 9624
    or-int/lit8 v51, v51, 0x8

    .line 9625
    const/16 v39, 0x0

    .line 9629
    :cond_6d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    move v5, v0

    if-eqz v5, :cond_6e

    .line 9630
    or-int/lit8 v51, v51, 0x1

    .line 9636
    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    goto/16 :goto_14

    .line 9615
    :cond_6f
    and-int/lit8 v5, v39, 0x4

    if-eqz v5, :cond_6c

    .line 9618
    or-int/lit8 v51, v51, 0x1

    goto :goto_2e

    .line 9641
    .end local v32           #N:I
    .end local v33           #NAT:I
    .end local v35           #NEAT:I
    .end local v39           #adjResult:I
    .end local v62           #forceHiding:Z
    .end local v86           #tokenMayBeDrawn:Z
    .end local v87           #tokensAnimating:Z
    .end local v88           #transactionSequence:I
    .end local v92           #wallpaperMayChange:Z
    :cond_70
    const/4 v5, 0x0

    move/from16 v82, v5

    goto/16 :goto_4

    .line 9683
    .restart local v32       #N:I
    .restart local v43       #attrFlags:I
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v45       #backgroundFillerShown:Z
    .restart local v47       #blurring:Z
    .restart local v53       #covered:Z
    .restart local v58       #dimming:Z
    .restart local v59       #displayed:Z
    .restart local v74       #obscured:Z
    .restart local v82       #someoneLosingFocus:Z
    .restart local v83       #syswin:Z
    .restart local v89       #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_71
    const/4 v5, 0x0

    move/from16 v80, v5

    goto/16 :goto_6

    .line 9699
    .restart local v65       #height:I
    .restart local v80       #resize:Z
    .restart local v94       #width:I
    :catch_2
    move-exception v5

    move-object/from16 v60, v5

    .line 9700
    .restart local v60       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error positioning surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9701
    if-nez p1, :cond_9

    .line 9702
    const-string v5, "position"

    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 9706
    .end local v60           #e:Ljava/lang/RuntimeException;
    .end local v65           #height:I
    .end local v80           #resize:Z
    .end local v94           #width:I
    :cond_72
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    const/4 v5, 0x1

    move/from16 v80, v5

    .line 9707
    .restart local v80       #resize:Z
    :goto_2f
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v94

    .line 9708
    .restart local v94       #width:I
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v65

    .line 9709
    .restart local v65       #height:I
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 9706
    .end local v65           #height:I
    .end local v80           #resize:Z
    .end local v94           #width:I
    :cond_73
    const/4 v5, 0x0

    move/from16 v80, v5

    goto :goto_2f

    .line 9730
    .restart local v65       #height:I
    .restart local v80       #resize:Z
    .restart local v94       #width:I
    :catch_3
    move-exception v5

    move-object/from16 v60, v5

    .line 9734
    .restart local v60       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure updating surface of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "size=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), pos=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9738
    if-nez p1, :cond_c

    .line 9739
    const-string v5, "size"

    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 9745
    .end local v60           #e:Ljava/lang/RuntimeException;
    :cond_74
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 9747
    :cond_75
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 9749
    :cond_76
    const/4 v5, 0x0

    move/from16 v52, v5

    goto/16 :goto_b

    .line 9803
    .restart local v52       #configChanged:Z
    :cond_77
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_11

    .line 9804
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_11

    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-nez v5, :cond_11

    .line 9808
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_c

    .line 9829
    .end local v52           #configChanged:Z
    :catch_4
    move-exception v5

    move-object/from16 v60, v5

    .line 9830
    .restart local v60       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception hiding surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 9845
    .end local v60           #e:Ljava/lang/RuntimeException;
    :cond_78
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    move v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    if-ne v5, v6, :cond_79

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    move v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_79

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDx:F

    move v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_79

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDx:F

    move v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_79

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDy:F

    move v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_79

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDy:F

    move v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_79

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHScale:F

    move v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_79

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVScale:F

    move v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_79

    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-eqz v5, :cond_7d

    .line 9854
    :cond_79
    const/16 v59, 0x1

    .line 9855
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    .line 9856
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    .line 9857
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDx:F

    .line 9858
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDx:F

    .line 9859
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDy:F

    .line 9860
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDy:F

    .line 9861
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHScale:F

    .line 9862
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastVScale:F

    .line 9869
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    if-eqz v5, :cond_7a

    .line 9871
    :try_start_c
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceAlpha:F

    .line 9872
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setAlpha(F)V

    .line 9873
    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v89

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceLayer:I

    .line 9874
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 9875
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v6, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v7, v0

    mul-float/2addr v6, v7

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v7, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v8, v0

    mul-float/2addr v7, v8

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v8, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v9, v0

    mul-float/2addr v8, v9

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v9, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v10, v0

    mul-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5

    .line 9886
    :cond_7a
    :goto_30
    :try_start_d
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-eqz v5, :cond_7b

    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_7b

    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-nez v5, :cond_7b

    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    move v5, v0

    if-nez v5, :cond_7b

    .line 9893
    move-object/from16 v0, p0

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 9894
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    .line 9895
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 9900
    :cond_7b
    :goto_31
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_14

    .line 9901
    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    goto/16 :goto_e

    .line 9878
    :catch_5
    move-exception v5

    move-object/from16 v60, v5

    .line 9879
    .restart local v60       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error updating surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9880
    if-nez p1, :cond_7a

    .line 9881
    const-string v5, "update"

    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto :goto_30

    .line 9897
    .end local v60           #e:Ljava/lang/RuntimeException;
    :cond_7c
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto :goto_31

    .line 9904
    :cond_7d
    const/16 v59, 0x1

    goto/16 :goto_e

    .line 9920
    :cond_7e
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_f

    .line 9927
    .end local v65           #height:I
    .end local v80           #resize:Z
    .end local v94           #width:I
    :cond_7f
    move-object/from16 v0, v89

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_18

    .line 9930
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v89

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_10

    .line 9939
    .restart local v49       #canBeSeen:Z
    :cond_80
    const/4 v5, 0x0

    move/from16 v75, v5

    goto/16 :goto_11

    .line 9963
    .restart local v75       #obscuredChanged:Z
    :cond_81
    const/4 v5, 0x0

    move/from16 v77, v5

    goto/16 :goto_12

    .line 9969
    .restart local v77       #opaqueDrawn:Z
    :cond_82
    if-eqz v77, :cond_84

    move-object/from16 v0, v89

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->needsBackgroundFiller(II)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 9972
    const/16 v74, 0x1

    .line 9973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1

    if-nez v5, :cond_83

    .line 9975
    :try_start_e
    new-instance v16, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "BackGroundFiller"

    const/16 v20, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    invoke-direct/range {v16 .. v24}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    .line 9985
    :cond_83
    :goto_32
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 9986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 9989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 9990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_7

    .line 9994
    :goto_33
    const/16 v45, 0x1

    .line 9995
    const/4 v5, 0x1

    :try_start_10
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    goto/16 :goto_13

    .line 9980
    :catch_6
    move-exception v5

    move-object/from16 v60, v5

    .line 9981
    .local v60, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating filler surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 9991
    .end local v60           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v5

    move-object/from16 v60, v5

    .line 9992
    .local v60, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Exception showing filler surface"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 9996
    .end local v60           #e:Ljava/lang/RuntimeException;
    :cond_84
    if-eqz v49, :cond_1f

    if-nez v74, :cond_1f

    and-int/lit8 v5, v43, 0x4

    or-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1f

    .line 10002
    and-int/lit8 v5, v43, 0x2

    if-eqz v5, :cond_86

    .line 10003
    if-nez v58, :cond_86

    .line 10005
    const/16 v58, 0x1

    .line 10006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    if-nez v5, :cond_85

    .line 10007
    new-instance v5, Lcom/android/server/WindowManagerService$DimAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/server/WindowManagerService$DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    .line 10009
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$DimAnimator;->show(II)V

    .line 10010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v89

    move-wide/from16 v2, v55

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$DimAnimator;->updateParameters(Lcom/android/server/WindowManagerService$WindowState;J)V

    .line 10013
    :cond_86
    and-int/lit8 v5, v43, 0x4

    if-eqz v5, :cond_1f

    .line 10014
    if-nez v47, :cond_1f

    .line 10016
    const/16 v47, 0x1

    .line 10017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    if-nez v5, :cond_87

    .line 10021
    :try_start_11
    new-instance v23, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "BlurSurface"

    const/16 v27, -0x1

    const/16 v28, 0x10

    const/16 v29, 0x10

    const/16 v30, -0x1

    const/high16 v31, 0x1

    invoke-direct/range {v23 .. v31}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1

    .line 10030
    :cond_87
    :goto_34
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_1f

    .line 10034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 10035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 10036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v89

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 10037
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    move v5, v0
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    if-nez v5, :cond_1f

    .line 10041
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_9

    .line 10045
    :goto_35
    const/4 v5, 0x1

    :try_start_14
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_13

    .line 10026
    :catch_8
    move-exception v5

    move-object/from16 v60, v5

    .line 10027
    .local v60, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating Blur surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 10042
    .end local v60           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v5

    move-object/from16 v60, v5

    .line 10043
    .local v60, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Failure showing blur surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 10061
    .end local v43           #attrFlags:I
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v49           #canBeSeen:Z
    .end local v59           #displayed:Z
    .end local v60           #e:Ljava/lang/RuntimeException;
    .end local v75           #obscuredChanged:Z
    .end local v77           #opaqueDrawn:Z
    .end local v89           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_88
    if-nez v45, :cond_89

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    move v5, v0

    if-eqz v5, :cond_89

    .line 10062
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1

    .line 10065
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_a

    .line 10071
    :cond_89
    :goto_36
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    if-eqz v5, :cond_8b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    if-eqz v5, :cond_8b

    .line 10072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v6, v0

    if-nez v6, :cond_8a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_8c

    :cond_8a
    const/4 v6, 0x1

    :goto_37
    move-object v0, v5

    move/from16 v1, v58

    move-wide/from16 v2, v55

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$DimAnimator;->updateSurface(ZJZ)Z

    move-result v5

    or-int v41, v41, v5

    .line 10076
    :cond_8b
    if-nez v47, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    move v5, v0
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1

    if-eqz v5, :cond_3b

    .line 10080
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1

    .line 10084
    :goto_38
    const/4 v5, 0x0

    :try_start_18
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_1b

    .line 10066
    :catch_a
    move-exception v5

    move-object/from16 v60, v5

    .line 10067
    .restart local v60       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Exception hiding filler surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 10072
    .end local v60           #e:Ljava/lang/RuntimeException;
    :cond_8c
    const/4 v6, 0x0

    goto :goto_37

    .line 10081
    :catch_b
    move-exception v5

    move-object/from16 v60, v5

    .line 10082
    .local v60, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "WindowManager"

    const-string v6, "Illegal argument exception hiding blur surface"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_1

    goto :goto_38

    .line 10120
    .end local v32           #N:I
    .end local v45           #backgroundFillerShown:Z
    .end local v47           #blurring:Z
    .end local v53           #covered:Z
    .end local v58           #dimming:Z
    .end local v60           #e:Ljava/lang/IllegalArgumentException;
    .end local v74           #obscured:Z
    .end local v82           #someoneLosingFocus:Z
    .end local v83           #syswin:Z
    .restart local v57       #diff:I
    .restart local v95       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_8d
    const/4 v5, 0x0

    move/from16 v52, v5

    goto/16 :goto_1c

    .line 10132
    .restart local v52       #configChanged:Z
    :cond_8e
    const/4 v5, 0x0

    move-object/from16 v29, v5

    goto/16 :goto_1d

    .line 10139
    .end local v52           #configChanged:Z
    :catch_c
    move-exception v5

    move-object/from16 v60, v5

    .line 10140
    .local v60, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v95

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_1e

    .line 10189
    .end local v57           #diff:I
    .end local v60           #e:Landroid/os/RemoteException;
    .end local v95           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v90       #wallpaperDestroyed:Z
    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v67, v5, v6

    :goto_39
    if-ltz v67, :cond_91

    .line 10190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10191
    .local v85, token:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v85

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    move v5, v0

    if-nez v5, :cond_90

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_90

    .line 10195
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v85

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 10196
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v85

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 10197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v85

    if-ne v0, v1, :cond_90

    .line 10200
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10201
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    .line 10189
    :cond_90
    add-int/lit8 v67, v67, -0x1

    goto :goto_39

    .line 10206
    .end local v85           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_91
    const/16 v72, 0x0

    .line 10208
    .local v72, needRelayout:Z
    if-nez v41, :cond_92

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    move v5, v0

    if-eqz v5, :cond_92

    .line 10215
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 10216
    const/16 v72, 0x1

    .line 10217
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 10218
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 10220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10223
    :cond_92
    if-eqz v61, :cond_93

    .line 10224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 10226
    :cond_93
    if-eqz v90, :cond_94

    .line 10227
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    if-eqz v5, :cond_9a

    const/4 v5, 0x1

    move/from16 v72, v5

    .line 10229
    :cond_94
    :goto_3a
    if-eqz v72, :cond_9b

    .line 10230
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    .line 10235
    :cond_95
    :goto_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 10239
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-nez v5, :cond_98

    .line 10240
    if-eqz v66, :cond_9c

    const/4 v5, 0x1

    :goto_3c
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->setHoldScreenLocked(Z)V

    .line 10241
    const/4 v5, 0x0

    cmpg-float v5, v81, v5

    if-ltz v5, :cond_96

    const/high16 v5, 0x3f80

    cmpl-float v5, v81, v5

    if-lez v5, :cond_9d

    .line 10242
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    .line 10247
    :goto_3d
    const/4 v5, 0x0

    cmpg-float v5, v48, v5

    if-ltz v5, :cond_97

    const/high16 v5, 0x3f80

    cmpl-float v5, v48, v5

    if-lez v5, :cond_9e

    .line 10248
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    .line 10253
    :goto_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

    move-object v5, v0

    move-object/from16 v0, v66

    move-object v1, v5

    if-eq v0, v1, :cond_98

    .line 10254
    move-object/from16 v0, v66

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

    .line 10255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xc

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v68

    .line 10256
    .local v68, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 10260
    .end local v68           #m:Landroid/os/Message;
    :cond_98
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mTurnOnScreen:Z

    move v5, v0

    if-eqz v5, :cond_99

    .line 10262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x5

    const/16 v28, 0x1

    invoke-virtual/range {v23 .. v28}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 10264
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mTurnOnScreen:Z

    .line 10269
    :cond_99
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 10270
    return-void

    .line 10227
    :cond_9a
    const/4 v5, 0x0

    move/from16 v72, v5

    goto/16 :goto_3a

    .line 10231
    :cond_9b
    if-eqz v41, :cond_95

    .line 10232
    const-wide/16 v5, 0x10

    add-long v5, v5, v55

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    goto/16 :goto_3b

    .line 10240
    :cond_9c
    const/4 v5, 0x0

    goto/16 :goto_3c

    .line 10244
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/high16 v6, 0x437f

    mul-float v6, v6, v81

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    goto/16 :goto_3d

    .line 10250
    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/high16 v6, 0x437f

    mul-float v6, v6, v48

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    goto/16 :goto_3e

    .line 10155
    .end local v72           #needRelayout:Z
    .end local v90           #wallpaperDestroyed:Z
    :catch_d
    move-exception v5

    goto/16 :goto_1f

    .line 9436
    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_0
        0x100a -> :sswitch_0
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_1
        0x200b -> :sswitch_1
    .end sparse-switch
.end method

.method private final performLayoutLockedInner()I
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 8861
    iget-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    if-nez v9, :cond_0

    move v9, v12

    .line 8966
    :goto_0
    return v9

    .line 8865
    :cond_0
    iput-boolean v12, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 8867
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 8868
    .local v3, dw:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 8870
    .local v2, dh:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8877
    .local v0, N:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Landroid/view/WindowManagerPolicy;->prepareLayoutLw(Ljava/util/ArrayList;)V

    .line 8880
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9, v3, v2}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(II)V

    .line 8882
    iget v9, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v6, v9, 0x1

    .line 8883
    .local v6, seq:I
    if-gez v6, :cond_1

    const/4 v6, 0x0

    .line 8884
    :cond_1
    iput v6, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    .line 8888
    const/4 v7, -0x1

    .line 8889
    .local v7, topAttached:I
    sub-int v5, v0, v13

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_9

    .line 8890
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 8895
    .local v8, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v1, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8896
    .local v1, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-eq v9, v14, :cond_3

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-eqz v9, :cond_3

    iget-object v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v9, v9, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v9, :cond_3

    if-eqz v1, :cond_2

    iget-boolean v9, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v9, :cond_3

    :cond_2
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v9, :cond_3

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v9, :cond_3

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-eqz v9, :cond_7

    :cond_3
    move v4, v13

    .line 8903
    .local v4, gone:Z
    :goto_2
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_4

    .line 8920
    :cond_4
    if-eqz v4, :cond_5

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    if-nez v9, :cond_6

    .line 8921
    :cond_5
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_8

    .line 8922
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x0

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 8923
    iput v6, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    .line 8889
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .end local v4           #gone:Z
    :cond_7
    move v4, v12

    .line 8896
    goto :goto_2

    .line 8929
    .restart local v4       #gone:Z
    :cond_8
    if-gez v7, :cond_6

    move v7, v5

    goto :goto_3

    .line 8938
    .end local v1           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v4           #gone:Z
    .end local v8           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_9
    move v5, v7

    :goto_4
    if-ltz v5, :cond_d

    .line 8939
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 8946
    .restart local v8       #win:Lcom/android/server/WindowManagerService$WindowState;
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-eqz v9, :cond_c

    .line 8951
    iget v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-eq v9, v14, :cond_a

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-nez v9, :cond_b

    :cond_a
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    if-nez v9, :cond_c

    .line 8953
    :cond_b
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 8954
    iput v6, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    .line 8938
    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 8964
    .end local v8           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_d
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v9}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 8966
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()I

    move-result v9

    goto/16 :goto_0
.end method

.method private placeWindowAfter(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 3
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 718
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 719
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 720
    return-void
.end method

.method private placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 723
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 727
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 728
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 729
    return-void
.end method

.method private final reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I
    .locals 3
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4211
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4212
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4213
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    invoke-direct {p0, p1, v2}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 4212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4215
    :cond_0
    return p1
.end method

.method private final reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I
    .locals 6
    .parameter "index"
    .parameter "win"

    .prologue
    .line 4176
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4177
    .local v0, NCW:I
    const/4 v1, 0x0

    .line 4178
    .local v1, added:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 4179
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 4180
    .local v2, cwin:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v1, :cond_0

    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-ltz v4, :cond_0

    .line 4183
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4184
    add-int/lit8 p1, p1, 0x1

    .line 4185
    const/4 v1, 0x1

    .line 4192
    :cond_0
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e9

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4193
    invoke-direct {p0, p2, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 4198
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 4178
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4195
    :cond_1
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 4200
    .end local v2           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    if-nez v1, :cond_3

    .line 4203
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4204
    add-int/lit8 p1, p1, 0x1

    .line 4206
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 4207
    return p1
.end method

.method private reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 1154
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1158
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1159
    .local v0, wpos:I
    if-ltz v0, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 1164
    invoke-direct {p0, v0, p1}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1166
    :cond_0
    return-void
.end method

.method private removeAppTokensLocked(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4258
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4259
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4260
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4261
    .local v2, token:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v3

    .line 4262
    .local v3, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4263
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    add-int/lit8 v1, v1, -0x1

    .line 4266
    add-int/lit8 v0, v0, -0x1

    .line 4259
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4269
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_1
    return-void
.end method

.method private removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 8
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2159
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    .line 2161
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_0

    .line 2162
    invoke-virtual {p0, v7}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2171
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p2}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2172
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->removeLocked()V

    .line 2174
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2176
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 2179
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_7

    .line 2180
    iput-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2185
    :cond_1
    :goto_0
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 2186
    .local v2, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2187
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2188
    if-eqz v0, :cond_2

    .line 2189
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2194
    :cond_2
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 2195
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->explicit:Z

    if-nez v3, :cond_8

    .line 2196
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2203
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 2204
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_9

    .line 2205
    iput-object v6, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2222
    :cond_4
    :goto_2
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_b

    .line 2223
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2224
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2229
    :cond_5
    :goto_3
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    if-nez v3, :cond_6

    .line 2230
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 2231
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2232
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2233
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v3, :cond_6

    .line 2234
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2238
    :cond_6
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 2239
    return-void

    .line 2181
    .end local v0           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v2           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_7
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_1

    .line 2182
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2198
    .restart local v0       #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v2       #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_8
    if-eqz v0, :cond_3

    .line 2199
    iput-boolean v7, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    goto :goto_1

    .line 2206
    :cond_9
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v3, :cond_a

    .line 2209
    iput-object v6, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    goto :goto_2

    .line 2210
    :cond_a
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 2217
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2218
    .local v1, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 2225
    .end local v1           #m:Landroid/os/Message;
    :cond_b
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 2226
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto :goto_3
.end method

.method private reportInjectionResult(I)Z
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    const-string v1, "WindowManager"

    .line 5978
    packed-switch p1, :pswitch_data_0

    .line 5991
    :pswitch_0
    const-string v0, "WindowManager"

    const-string v0, "Input event injection failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 5992
    :goto_0
    return v0

    .line 5980
    :pswitch_1
    const-string v0, "WindowManager"

    const-string v0, "Input event injection permission denied."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5981
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5985
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 5987
    :pswitch_3
    const-string v0, "WindowManager"

    const-string v0, "Input event injection timed out."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 5988
    goto :goto_0

    .line 5978
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setSurfaceFlagsWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;II)V
    .locals 5
    .parameter "session"
    .parameter "client"
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 2254
    const-string v3, "android.permission.ACCESS_SURFACE_FLINGER"

    const-string v4, "setSurfaceFlagsWindow()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2260
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires ACCESS_SURFACE_FLINGER permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2263
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2265
    .local v0, origId:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2266
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2267
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_1

    .line 2269
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2273
    :try_start_2
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, p3, p4}, Landroid/view/Surface;->setFlags(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2276
    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2279
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2281
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2283
    return-void

    .line 2275
    :catchall_0
    move-exception v4

    .line 2276
    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2275
    throw v4

    .line 2279
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2281
    :catchall_2
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setTransparentRegionWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 5
    .parameter "session"
    .parameter "client"
    .parameter "region"

    .prologue
    .line 2356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2358
    .local v0, origId:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2359
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2360
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    .line 2362
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2366
    :try_start_2
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, p3}, Landroid/view/Surface;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2369
    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2372
    :cond_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2374
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2376
    return-void

    .line 2368
    :catchall_0
    move-exception v4

    .line 2369
    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2368
    throw v4

    .line 2372
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2374
    :catchall_2
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private shouldAllowDisableKeyguard()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4394
    iget v1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4395
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4397
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 4398
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_0
    iput v1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    .line 4403
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    iget v1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    if-ne v1, v3, :cond_2

    move v1, v3

    :goto_1
    return v1

    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    move v1, v4

    .line 4398
    goto :goto_0

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_2
    move v1, v4

    .line 4403
    goto :goto_1
.end method

.method private startFreezingDisplayLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 10537
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_0

    .line 10573
    :goto_0
    return-void

    .line 10541
    :cond_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10543
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 10545
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 10546
    iget-wide v2, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 10548
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10549
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 10550
    iput-wide v0, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    .line 10558
    :cond_1
    :goto_1
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 10560
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$InputMonitor;->freezeInputDispatchingLw()V

    .line 10562
    iget v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v2, v6, :cond_2

    .line 10563
    iput v6, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 10564
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 10565
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 10572
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/Surface;->freezeDisplay(I)V

    goto :goto_0

    .line 10553
    :cond_3
    iput-wide v0, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    goto :goto_1
.end method

.method private stopFreezingDisplayLocked()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 10576
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_1

    .line 10613
    :cond_0
    :goto_0
    return-void

    .line 10580
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_0

    .line 10586
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 10587
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10591
    invoke-static {v2}, Landroid/view/Surface;->unfreezeDisplay(I)V

    .line 10593
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$InputMonitor;->thawInputDispatchingLw()V

    .line 10599
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10600
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 10608
    :cond_2
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v0, v3}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10609
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v1, v3}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10612
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private submitKeyMetrics(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5812
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/carrieriq/iqagent/client/IQClient;

    invoke-direct {v1}, Lcom/carrieriq/iqagent/client/IQClient;-><init>()V

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    .line 5813
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 5814
    .local v0, uc:I
    if-lez v0, :cond_1

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    .line 5817
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->ui01Metric:Lcom/carrieriq/iqagent/client/metrics/ui/UI01;

    int-to-short v2, v0

    iput-short v2, v1, Lcom/carrieriq/iqagent/client/metrics/ui/UI01;->wKeyCode:S

    .line 5823
    :goto_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->ui01Metric:Lcom/carrieriq/iqagent/client/metrics/ui/UI01;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-byte v2, v1, Lcom/carrieriq/iqagent/client/metrics/ui/UI01;->ucKeyEvent:B

    .line 5828
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    iget-object v2, p0, Lcom/android/server/WindowManagerService;->ui01Metric:Lcom/carrieriq/iqagent/client/metrics/ui/UI01;

    invoke-virtual {v1, v2}, Lcom/carrieriq/iqagent/client/IQClient;->submitMetric(Lcom/carrieriq/iqagent/client/Metric;)I

    .line 5829
    return-void

    .line 5819
    :cond_1
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->ui01Metric:Lcom/carrieriq/iqagent/client/metrics/ui/UI01;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Lcom/carrieriq/iqagent/client/android/KeyCodeMap;->getIQKeyCodeForAndroidKeyCode(I)S

    move-result v2

    iput-short v2, v1, Lcom/carrieriq/iqagent/client/metrics/ui/UI01;->wKeyCode:S

    goto :goto_0

    .line 5823
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z
    .locals 7
    .parameter "token"

    .prologue
    const/4 v6, 0x1

    .line 4088
    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4089
    .local v0, NW:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4090
    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 4092
    .local v4, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4093
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 4094
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4095
    .local v3, j:I
    :goto_1
    if-lez v3, :cond_0

    .line 4096
    add-int/lit8 v3, v3, -0x1

    .line 4097
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 4100
    .local v1, cwin:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4089
    .end local v1           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4103
    .end local v3           #j:I
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    if-lez v0, :cond_2

    move v5, v6

    :goto_2
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I
    .locals 5
    .parameter "interestingPos"
    .parameter "win"

    .prologue
    .line 1131
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1132
    .local v3, wpos:I
    if-ltz v3, :cond_3

    .line 1133
    if-ge v3, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1135
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1136
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 1137
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1138
    .local v0, NC:I
    :cond_1
    :goto_0
    if-lez v0, :cond_3

    .line 1139
    add-int/lit8 v0, v0, -0x1

    .line 1140
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 1141
    .local v2, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1142
    .local v1, cpos:I
    if-ltz v1, :cond_1

    .line 1143
    if-ge v1, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 1146
    :cond_2
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1150
    .end local v0           #NC:I
    .end local v1           #cpos:I
    .end local v2           #cw:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    return p1
.end method

.method private updateFocusedWindowLocked(I)Z
    .locals 9
    .parameter "mode"

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 10415
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    .line 10416
    .local v1, newFocus:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-eq v3, v1, :cond_5

    .line 10419
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10420
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 10423
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 10424
    .local v2, oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 10425
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10427
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 10428
    .local v0, imWindow:Lcom/android/server/WindowManagerService$WindowState;
    if-eq v1, v0, :cond_1

    if-eq v2, v0, :cond_1

    .line 10429
    if-eq p1, v6, :cond_3

    if-eq p1, v8, :cond_3

    move v3, v6

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10432
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 10434
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    .line 10435
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-eq v3, v1, :cond_0

    .line 10436
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10437
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 10438
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Test Code - Changing focus from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10439
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 10440
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10444
    :cond_0
    if-ne p1, v7, :cond_4

    .line 10445
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutLockedInner()I

    .line 10453
    :cond_1
    :goto_1
    if-eq p1, v6, :cond_2

    .line 10456
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked()V

    :cond_2
    move v3, v6

    .line 10460
    .end local v0           #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :goto_2
    return v3

    .restart local v0       #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v2       #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    move v3, v4

    .line 10429
    goto :goto_0

    .line 10446
    :cond_4
    if-ne p1, v8, :cond_1

    .line 10449
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    goto :goto_1

    .end local v0           #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    move v3, v4

    .line 10460
    goto :goto_2
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIZ)V
    .locals 8
    .parameter "addPos"
    .parameter "token"
    .parameter "groupId"
    .parameter "requestedOrientation"
    .parameter "fullscreen"

    .prologue
    const-string v6, "WindowManager"

    .line 3123
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "addAppToken()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3125
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3136
    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/view/IApplicationToken;->getKeyDispatchingTimeout()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long v1, v4, v6

    .line 3142
    .local v1, inputDispatchingTimeoutNanos:J
    :goto_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3143
    :try_start_1
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v3

    .line 3144
    .local v3, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v3, :cond_1

    .line 3145
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to add existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3164
    :goto_1
    return-void

    .line 3137
    .end local v1           #inputDispatchingTimeoutNanos:J
    .end local v3           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catch_0
    move-exception v0

    .line 3138
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v4, "Could not get dispatching timeout."

    invoke-static {v6, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3139
    const-wide v1, 0x12a05f200L

    .restart local v1       #inputDispatchingTimeoutNanos:J
    goto :goto_0

    .line 3148
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v3       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_1
    :try_start_2
    new-instance v3, Lcom/android/server/WindowManagerService$AppWindowToken;

    .end local v3           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    invoke-direct {v3, p0, p2}, Lcom/android/server/WindowManagerService$AppWindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/view/IApplicationToken;)V

    .line 3149
    .restart local v3       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iput-wide v1, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->inputDispatchingTimeoutNanos:J

    .line 3150
    iput p3, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 3151
    iput-boolean p5, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    .line 3152
    iput p4, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3153
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3155
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3156
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3159
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 3160
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 3163
    monitor-exit v4

    goto :goto_1

    .end local v3           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method addInputMethodWindowToListLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    const/4 v2, 0x1

    .line 1088
    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 1089
    .local v0, pos:I
    if-ltz v0, :cond_0

    .line 1090
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1093
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1094
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 1095
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1101
    :goto_0
    return-void

    .line 1098
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1099
    invoke-direct {p0, p1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1100
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_0
.end method

.method public addWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .locals 27
    .parameter "session"
    .parameter "client"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"
    .parameter "outInputChannel"

    .prologue
    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I

    move-result v23

    .line 1849
    .local v23, res:I
    if-eqz v23, :cond_0

    move/from16 v6, v23

    .line 2075
    .end local p1
    :goto_0
    return v6

    .line 1853
    .restart local p1
    :cond_0
    const/16 v22, 0x0

    .line 1854
    .local v22, reportNewConfig:Z
    const/4 v10, 0x0

    .line 1855
    .local v10, attachedWindow:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v24, 0x0

    .line 1857
    .local v24, win:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 1861
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    if-nez v6, :cond_1

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/WindowManager;

    .line 1863
    .local v25, wm:Landroid/view/WindowManager;
    invoke-interface/range {v25 .. v25}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    move v9, v0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/InputManager;->setDisplaySize(III)V

    .line 1867
    const/16 v22, 0x1

    .line 1870
    .end local v25           #wm:Landroid/view/WindowManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v6, v0

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1871
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already added"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    const/4 v6, -0x5

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2063
    :catchall_0
    move-exception v6

    move-object/from16 v5, v24

    .end local v24           #win:Lcom/android/server/WindowManagerService$WindowState;
    .end local p1
    .local v5, win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1
    :try_start_1
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 1875
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v24       #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local p1
    :cond_2
    :try_start_2
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_4

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_4

    .line 1876
    const/4 v6, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v10

    .line 1877
    if-nez v10, :cond_3

    .line 1878
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with token that is not a window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const/4 v6, -0x2

    monitor-exit v26

    goto/16 :goto_0

    .line 1882
    :cond_3
    iget-object v6, v10, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_4

    iget-object v6, v10, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_4

    .line 1884
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const/4 v6, -0x2

    monitor-exit v26

    goto/16 :goto_0

    .line 1890
    :cond_4
    const/4 v13, 0x0

    .line 1891
    .local v13, addToken:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1892
    .local v9, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-nez v9, :cond_9

    .line 1893
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_5

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x63

    if-gt v6, v7, :cond_5

    .line 1895
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add application window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const/4 v6, -0x1

    monitor-exit v26

    goto/16 :goto_0

    .line 1899
    :cond_5
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_6

    .line 1900
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/4 v6, -0x1

    monitor-exit v26

    goto/16 :goto_0

    .line 1904
    :cond_6
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_7

    .line 1905
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    const/4 v6, -0x1

    monitor-exit v26

    goto/16 :goto_0

    .line 1909
    :cond_7
    new-instance v9, Lcom/android/server/WindowManagerService$WindowToken;

    .end local v9           #token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v6, v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$WindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 1910
    .restart local v9       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const/4 v13, 0x1

    .line 1943
    :cond_8
    new-instance v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v5 .. v12}, Lcom/android/server/WindowManagerService$WindowState;-><init>(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Lcom/android/server/WindowManagerService$WindowToken;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1945
    .end local v24           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    :try_start_3
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    if-nez v6, :cond_e

    .line 1948
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding window client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that is dead, aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    const/4 v6, -0x4

    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 2063
    .end local v9           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v13           #addToken:Z
    .end local p1
    :catchall_1
    move-exception v6

    goto/16 :goto_1

    .line 1911
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v9       #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v13       #addToken:Z
    .restart local v24       #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local p1
    :cond_9
    :try_start_4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_c

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x63

    if-gt v6, v7, :cond_c

    .line 1913
    iget-object v14, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1914
    .local v14, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v14, :cond_a

    .line 1915
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with non-application token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const/4 v6, -0x3

    monitor-exit v26

    goto/16 :goto_0

    .line 1918
    :cond_a
    iget-boolean v6, v14, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v6, :cond_b

    .line 1919
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with exiting application token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    const/4 v6, -0x4

    monitor-exit v26

    goto/16 :goto_0

    .line 1923
    :cond_b
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    iget-boolean v6, v14, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v6, :cond_8

    .line 1927
    const/4 v6, -0x6

    monitor-exit v26

    goto/16 :goto_0

    .line 1929
    .end local v14           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_c
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_d

    .line 1930
    iget v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_8

    .line 1931
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with bad token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    const/4 v6, -0x1

    monitor-exit v26

    goto/16 :goto_0

    .line 1935
    :cond_d
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_8

    .line 1936
    iget v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v7, 0x7dd

    if-eq v6, v7, :cond_8

    .line 1937
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const/4 v6, -0x1

    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1953
    .end local v24           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v23

    .line 1956
    if-eqz v23, :cond_f

    .line 1957
    monitor-exit v26

    move/from16 v6, v23

    goto/16 :goto_0

    .line 1960
    :cond_f
    if-eqz p6, :cond_10

    .line 1961
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->makeInputChannelName()Ljava/lang/String;

    move-result-object v19

    .line 1962
    .local v19, name:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v18

    .line 1963
    .local v18, inputChannels:[Landroid/view/InputChannel;
    const/4 v6, 0x0

    aget-object v6, v18, v6

    iput-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 1964
    const/4 v6, 0x1

    aget-object v6, v18, v6

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/view/InputChannel;->transferToBinderOutParameter(Landroid/view/InputChannel;)V

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    move-object v6, v0

    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v6, v7}, Lcom/android/server/InputManager;->registerInputChannel(Landroid/view/InputChannel;)V

    .line 1971
    .end local v18           #inputChannels:[Landroid/view/InputChannel;
    .end local v19           #name:Ljava/lang/String;
    :cond_10
    const/16 v23, 0x0

    .line 1973
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1975
    .local v20, origId:J
    if-eqz v13, :cond_11

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1979
    :cond_11
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->attach()V

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v6, v0

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_12

    iget-object v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v6, :cond_12

    .line 1984
    iget-object v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1987
    :cond_12
    const/16 v17, 0x1

    .line 1989
    .local v17, imMayMove:Z
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_14

    .line 1990
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1991
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->addInputMethodWindowToListLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1992
    const/16 v17, 0x0

    .line 2009
    :cond_13
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v6, v0

    if-eqz v6, :cond_18

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    .line 2011
    .local v16, idxInputMethod:I
    const/4 v6, 0x1

    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_18

    .line 2012
    .end local p1
    :goto_3
    add-int/lit8 v6, v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v6, v0

    add-int/lit8 v7, v16, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    move v6, v0

    if-eqz v6, :cond_17

    .line 2014
    add-int/lit8 v16, v16, 0x1

    .line 2015
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attached window to input method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1993
    .end local v16           #idxInputMethod:I
    .restart local p1
    :cond_14
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dc

    if-ne v6, v7, :cond_15

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1996
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustInputMethodDialogsLocked()V

    .line 1997
    const/16 v17, 0x0

    goto :goto_2

    .line 1999
    :cond_15
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 2000
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_16

    .line 2001
    const-wide/16 v6, 0x0

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2002
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto/16 :goto_2

    .line 2003
    :cond_16
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v6, v0

    const/high16 v7, 0x10

    and-int/2addr v6, v7

    if-eqz v6, :cond_13

    .line 2004
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto/16 :goto_2

    .line 2018
    .end local p1
    .restart local v16       #idxInputMethod:I
    :cond_17
    add-int/lit8 v6, v16, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 2023
    .end local v16           #idxInputMethod:I
    :cond_18
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 2027
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    move v6, v0

    if-eqz v6, :cond_19

    .line 2028
    or-int/lit8 v23, v23, 0x1

    .line 2030
    :cond_19
    if-eqz v5, :cond_1a

    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v6, :cond_1a

    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-nez v6, :cond_1b

    .line 2031
    :cond_1a
    or-int/lit8 v23, v23, 0x2

    .line 2034
    :cond_1b
    const/4 v15, 0x0

    .line 2035
    .local v15, focusChanged:Z
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2036
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v15

    .line 2037
    if-eqz v15, :cond_1c

    .line 2038
    const/16 v17, 0x0

    .line 2042
    :cond_1c
    if-eqz v17, :cond_1d

    .line 2043
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2046
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 2052
    if-eqz v15, :cond_1e

    .line 2053
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked()V

    .line 2060
    :cond_1e
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleOrAdding()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2061
    const/16 v22, 0x1

    .line 2063
    :cond_1f
    monitor-exit v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2069
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 2070
    if-eqz v22, :cond_20

    .line 2071
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 2073
    :cond_20
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v6, v23

    .line 2075
    goto/16 :goto_0
.end method

.method public addWindowChangeListener(Lcom/android/server/WindowManagerService$WindowChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 5282
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5283
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5284
    monitor-exit v0

    .line 5285
    return-void

    .line 5284
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "token"
    .parameter "type"

    .prologue
    .line 3048
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3050
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3053
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3054
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 3055
    .local v0, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_1

    .line 3056
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing input method token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    monitor-exit v1

    .line 3066
    :goto_0
    return-void

    .line 3059
    :cond_1
    new-instance v0, Lcom/android/server/WindowManagerService$WindowToken;

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/android/server/WindowManagerService$WindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 3060
    .restart local v0       #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3061
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3062
    const/16 v2, 0x7dd

    if-ne p2, v2, :cond_2

    .line 3063
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3065
    :cond_2
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method adjustInputMethodDialogsLocked()V
    .locals 1

    .prologue
    .line 1320
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1321
    return-void
.end method

.method adjustWallpaperWindowsLocked()I
    .locals 32

    .prologue
    .line 1341
    const/4 v6, 0x0

    .line 1343
    .local v6, changed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 1344
    .local v10, dw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 1348
    .local v9, dh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v15, v0

    .line 1349
    .local v15, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1350
    .local v5, N:I
    const/16 v27, 0x0

    .line 1351
    .local v27, w:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v13, 0x0

    .line 1352
    .local v13, foundW:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v12, 0x0

    .line 1353
    .local v12, foundI:I
    const/16 v24, 0x0

    .line 1354
    .local v24, topCurW:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v23, 0x0

    .line 1355
    .local v23, topCurI:I
    move v14, v5

    .line 1356
    .local v14, i:I
    :cond_0
    :goto_0
    if-lez v14, :cond_5

    .line 1357
    add-int/lit8 v14, v14, -0x1

    .line 1358
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #w:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v27, Lcom/android/server/WindowManagerService$WindowState;

    .line 1359
    .restart local v27       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v31, 0x7dd

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 1360
    if-nez v24, :cond_0

    .line 1361
    move-object/from16 v24, v27

    .line 1362
    move/from16 v23, v14

    goto :goto_0

    .line 1366
    :cond_1
    const/16 v24, 0x0

    .line 1367
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 1370
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_2

    .line 1373
    const/16 v24, 0x0

    .line 1374
    goto :goto_0

    .line 1380
    :cond_2
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v30, v0

    const/high16 v31, 0x10

    and-int v30, v30, v31

    if-eqz v30, :cond_0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v30

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v30, v0

    if-nez v30, :cond_0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move/from16 v30, v0

    if-nez v30, :cond_0

    .line 1385
    :cond_3
    move-object/from16 v13, v27

    .line 1386
    move v12, v14

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    :cond_4
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    .line 1401
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    .line 1413
    const/16 v30, 0x0

    .line 1648
    .end local v5           #N:I
    :goto_1
    return v30

    .line 1415
    .restart local v5       #N:I
    :cond_6
    if-eqz v13, :cond_7

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    .line 1418
    const/16 v30, 0x0

    goto :goto_1

    .line 1422
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v13

    if-eq v0, v1, :cond_16

    .line 1428
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1429
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v21, v0

    .line 1432
    .local v21, oldW:Lcom/android/server/WindowManagerService$WindowState;
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1436
    if-eqz v13, :cond_b

    if-eqz v21, :cond_b

    .line 1437
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_8

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    :cond_8
    const/16 v30, 0x1

    move/from16 v18, v30

    .line 1439
    .local v18, oldAnim:Z
    :goto_2
    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_9

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_14

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_14

    :cond_9
    const/16 v30, 0x1

    move/from16 v11, v30

    .line 1445
    .local v11, foundAnim:Z
    :goto_3
    if-eqz v11, :cond_b

    if-eqz v18, :cond_b

    .line 1446
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 1450
    .local v19, oldI:I
    if-ltz v19, :cond_b

    .line 1458
    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_a

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    .line 1462
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1468
    :cond_a
    move v0, v12

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    .line 1473
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1474
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1475
    move-object/from16 v13, v21

    .line 1476
    move/from16 v12, v19

    .line 1506
    .end local v11           #foundAnim:Z
    .end local v18           #oldAnim:Z
    .end local v19           #oldI:I
    .end local v21           #oldW:Lcom/android/server/WindowManagerService$WindowState;
    :cond_b
    :goto_4
    if-eqz v13, :cond_1c

    const/16 v30, 0x1

    move/from16 v26, v30

    .line 1507
    .local v26, visible:Z
    :goto_5
    if-eqz v26, :cond_c

    .line 1510
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->isWallpaperVisible(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v26

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    if-nez v30, :cond_1d

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1d

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    move/from16 v30, v0

    :goto_6
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v30

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v30, v0

    move/from16 v0, v30

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    .line 1528
    .local v17, maxLayer:I
    :goto_7
    if-lez v12, :cond_c

    .line 1529
    const/16 v30, 0x1

    sub-int v30, v12, v30

    move-object v0, v15

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/WindowManagerService$WindowState;

    .line 1530
    .local v29, wb:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v13

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v30, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_1e

    .line 1545
    .end local v17           #maxLayer:I
    .end local v29           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c
    if-nez v13, :cond_1f

    if-eqz v24, :cond_1f

    .line 1548
    move-object/from16 v13, v24

    .line 1549
    add-int/lit8 v12, v23, 0x1

    .line 1556
    .end local v5           #N:I
    :goto_8
    if-eqz v26, :cond_e

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_d

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    .line 1561
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_e

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    .line 1569
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1570
    .local v7, curTokenIndex:I
    :cond_f
    if-lez v7, :cond_26

    .line 1571
    add-int/lit8 v7, v7, -0x1

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1573
    .local v22, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 1574
    or-int/lit8 v6, v6, 0x4

    .line 1575
    if-nez v26, :cond_21

    const/16 v30, 0x1

    :goto_9
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 1578
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1581
    :cond_10
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1582
    .local v8, curWallpaperIndex:I
    :goto_a
    if-lez v8, :cond_f

    .line 1583
    add-int/lit8 v8, v8, -0x1

    .line 1584
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/WindowManagerService$WindowState;

    .line 1586
    .local v28, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v26, :cond_11

    .line 1587
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v10

    move v3, v9

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 1592
    :cond_11
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v26

    if-eq v0, v1, :cond_12

    .line 1593
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    .line 1599
    if-eqz v26, :cond_22

    .line 1600
    :try_start_0
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->tempWallpaperWindow:Landroid/view/IWindow;

    .line 1601
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->tempWallpaperVisible:Z

    .line 1602
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->wallpaperPaintPending:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    :cond_12
    :goto_b
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 1616
    move-object/from16 v0, v28

    move-object v1, v13

    if-ne v0, v1, :cond_24

    .line 1617
    add-int/lit8 v12, v12, -0x1

    .line 1618
    if-lez v12, :cond_23

    const/16 v30, 0x1

    sub-int v30, v12, v30

    move-object v0, v15

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object v13, v5

    .line 1620
    :goto_c
    goto :goto_a

    .line 1437
    .end local v7           #curTokenIndex:I
    .end local v8           #curWallpaperIndex:I
    .end local v22           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v26           #visible:Z
    .end local v28           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #N:I
    .restart local v21       #oldW:Lcom/android/server/WindowManagerService$WindowState;
    :cond_13
    const/16 v30, 0x0

    move/from16 v18, v30

    goto/16 :goto_2

    .line 1439
    .restart local v18       #oldAnim:Z
    :cond_14
    const/16 v30, 0x0

    move/from16 v11, v30

    goto/16 :goto_3

    .line 1482
    .restart local v11       #foundAnim:Z
    .restart local v19       #oldI:I
    :cond_15
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1483
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    goto/16 :goto_4

    .line 1489
    .end local v11           #foundAnim:Z
    .end local v18           #oldAnim:Z
    .end local v19           #oldI:I
    .end local v21           #oldW:Lcom/android/server/WindowManagerService$WindowState;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1a

    :cond_17
    const/16 v30, 0x1

    move/from16 v16, v30

    .line 1494
    .local v16, lowerAnimating:Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1b

    :cond_18
    const/16 v30, 0x1

    move/from16 v25, v30

    .line 1497
    .local v25, upperAnimating:Z
    :goto_e
    if-eqz v16, :cond_19

    if-nez v25, :cond_b

    .line 1501
    :cond_19
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1502
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    goto/16 :goto_4

    .line 1491
    .end local v16           #lowerAnimating:Z
    .end local v25           #upperAnimating:Z
    :cond_1a
    const/16 v30, 0x0

    move/from16 v16, v30

    goto :goto_d

    .line 1494
    .restart local v16       #lowerAnimating:Z
    :cond_1b
    const/16 v30, 0x0

    move/from16 v25, v30

    goto :goto_e

    .line 1506
    .end local v16           #lowerAnimating:Z
    :cond_1c
    const/16 v30, 0x0

    move/from16 v26, v30

    goto/16 :goto_5

    .line 1516
    .restart local v26       #visible:Z
    :cond_1d
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 1538
    .restart local v17       #maxLayer:I
    .restart local v29       #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1e
    move-object/from16 v13, v29

    .line 1539
    add-int/lit8 v12, v12, -0x1

    .line 1540
    goto/16 :goto_7

    .line 1553
    .end local v17           #maxLayer:I
    .end local v29           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1f
    if-lez v12, :cond_20

    const/16 v30, 0x1

    sub-int v30, v12, v30

    move-object v0, v15

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #N:I
    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object v13, v5

    :goto_f
    goto/16 :goto_8

    .restart local v5       #N:I
    :cond_20
    const/16 v30, 0x0

    move-object/from16 v13, v30

    goto :goto_f

    .line 1575
    .end local v5           #N:I
    .restart local v7       #curTokenIndex:I
    .restart local v22       #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_21
    const/16 v30, 0x0

    goto/16 :goto_9

    .line 1604
    .restart local v8       #curWallpaperIndex:I
    .restart local v28       #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_22
    :try_start_1
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_b

    .line 1606
    :catch_0
    move-exception v30

    goto/16 :goto_b

    .line 1618
    :cond_23
    const/16 v30, 0x0

    move-object/from16 v13, v30

    goto/16 :goto_c

    .line 1626
    :cond_24
    move-object v0, v15

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 1627
    .local v20, oldIndex:I
    if-ltz v20, :cond_25

    .line 1630
    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1631
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 1632
    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_25

    .line 1633
    add-int/lit8 v12, v12, -0x1

    .line 1642
    :cond_25
    move-object v0, v15

    move v1, v12

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1643
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 1644
    or-int/lit8 v6, v6, 0x2

    .line 1645
    goto/16 :goto_a

    .end local v8           #curWallpaperIndex:I
    .end local v20           #oldIndex:I
    .end local v22           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v28           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_26
    move/from16 v30, v6

    .line 1648
    goto/16 :goto_1
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "permission"
    .parameter "func"

    .prologue
    const/4 v3, 0x1

    .line 3023
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    move v1, v3

    .line 3036
    :goto_0
    return v1

    .line 3027
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 3029
    goto :goto_0

    .line 3031
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3035
    .local v0, msg:Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 4481
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4482
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4483
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 4484
    .local v1, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 4486
    :try_start_1
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, p1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4482
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4491
    .end local v1           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    :try_start_2
    monitor-exit v2

    .line 4492
    return-void

    .line 4491
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4487
    .restart local v0       #i:I
    .restart local v1       #w:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method computeForcedAppOrientationLocked()I
    .locals 2

    .prologue
    .line 3353
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->getOrientationFromWindowsLocked()I

    move-result v0

    .line 3354
    .local v0, req:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3355
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->getOrientationFromAppTokensLocked()I

    move-result v0

    .line 3357
    :cond_0
    return v0
.end method

.method public computeNewConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 5355
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5356
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method computeNewConfigurationLocked()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 5361
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 5362
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5363
    const/4 v1, 0x0

    .line 5365
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z
    .locals 13
    .parameter "config"

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v12, "GT-I9100"

    .line 5369
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v8, :cond_0

    move v8, v9

    .line 5458
    :goto_0
    return v8

    .line 5373
    :cond_0
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v8, p1}, Lcom/android/server/InputManager;->getInputConfiguration(Landroid/content/res/Configuration;)V

    .line 5376
    iget v8, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-eq v8, v10, :cond_1

    iget v8, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-ne v8, v11, :cond_5

    :cond_1
    move v5, v10

    .line 5378
    .local v5, rotated:Z
    :goto_1
    if-eqz v5, :cond_6

    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    move v2, v8

    .line 5379
    .local v2, dw:I
    :goto_2
    if-eqz v5, :cond_7

    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    move v0, v8

    .line 5381
    .local v0, dh:I
    :goto_3
    const/4 v4, 0x3

    .line 5382
    .local v4, orientation:I
    if-ge v2, v0, :cond_8

    .line 5383
    const/4 v4, 0x1

    .line 5387
    :cond_2
    :goto_4
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5389
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5390
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5391
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    invoke-static {v1, v4, v8}, Landroid/content/res/CompatibilityInfo;->updateCompatibleScreenFrame(Landroid/util/DisplayMetrics;ILandroid/graphics/Rect;)V

    .line 5393
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    if-nez v8, :cond_4

    .line 5397
    move v3, v2

    .line 5398
    .local v3, longSize:I
    move v6, v0

    .line 5399
    .local v6, shortSize:I
    if-ge v3, v6, :cond_3

    .line 5400
    move v7, v3

    .line 5401
    .local v7, tmp:I
    move v3, v6

    .line 5402
    move v6, v7

    .line 5404
    .end local v7           #tmp:I
    :cond_3
    int-to-float v8, v3

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v3, v8

    .line 5405
    int-to-float v8, v6

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v6, v8

    .line 5410
    const/16 v8, 0x1d6

    if-ge v3, v8, :cond_9

    .line 5413
    const/16 v8, 0x11

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5446
    :goto_5
    const-string v8, "GT-I9100"

    if-eqz v12, :cond_4

    const-string v8, "GT-I9100"

    const-string v8, "GT-I9220"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5447
    const v8, 0x10000014

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5453
    .end local v3           #longSize:I
    .end local v6           #shortSize:I
    :cond_4
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    iput v8, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 5455
    iput v10, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 5456
    iput v10, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 5457
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8, p1}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    move v8, v10

    .line 5458
    goto :goto_0

    .end local v0           #dh:I
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #dw:I
    .end local v4           #orientation:I
    .end local v5           #rotated:Z
    :cond_5
    move v5, v9

    .line 5376
    goto :goto_1

    .line 5378
    .restart local v5       #rotated:Z
    :cond_6
    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    move v2, v8

    goto :goto_2

    .line 5379
    .restart local v2       #dw:I
    :cond_7
    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    move v0, v8

    goto :goto_3

    .line 5384
    .restart local v0       #dh:I
    .restart local v4       #orientation:I
    :cond_8
    if-le v2, v0, :cond_2

    .line 5385
    const/4 v4, 0x2

    goto :goto_4

    .line 5417
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v3       #longSize:I
    .restart local v6       #shortSize:I
    :cond_9
    const/16 v8, 0x320

    if-lt v3, v8, :cond_c

    const/16 v8, 0x258

    if-lt v6, v8, :cond_c

    .line 5420
    const/4 v8, 0x4

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5432
    :goto_6
    const/16 v8, 0x141

    if-gt v6, v8, :cond_a

    const/16 v8, 0x23a

    if-le v3, v8, :cond_b

    .line 5433
    :cond_a
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    const/high16 v9, 0x1000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5437
    :cond_b
    mul-int/lit8 v8, v3, 0x3

    div-int/lit8 v8, v8, 0x5

    sub-int v9, v6, v10

    if-lt v8, v9, :cond_e

    .line 5439
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_5

    .line 5421
    :cond_c
    const/16 v8, 0x212

    if-lt v3, v8, :cond_d

    const/16 v8, 0x190

    if-lt v6, v8, :cond_d

    .line 5424
    iput v11, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_6

    .line 5426
    :cond_d
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_6

    .line 5441
    :cond_e
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_5
.end method

.method createWatermark()V
    .locals 8

    .prologue
    .line 10775
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWatermark:Lcom/android/server/WindowManagerService$Watermark;

    if-eqz v6, :cond_1

    .line 10801
    :cond_0
    :goto_0
    return-void

    .line 10779
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v6, "/system/etc/setup.conf"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10780
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 10782
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 10783
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10784
    .local v3, ind:Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 10785
    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 10786
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 10787
    .local v5, toks:[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v6, v5

    if-lez v6, :cond_2

    .line 10788
    new-instance v6, Lcom/android/server/WindowManagerService$Watermark;

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v6, p0, v7, v5}, Lcom/android/server/WindowManagerService$Watermark;-><init>(Lcom/android/server/WindowManagerService;Landroid/view/SurfaceSession;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/WindowManagerService;->mWatermark:Lcom/android/server/WindowManagerService$Watermark;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 10794
    .end local v5           #toks:[Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 10796
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    :goto_1
    move-object v1, v2

    .line 10800
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_0

    .line 10794
    .end local v3           #ind:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_4

    .line 10796
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 10794
    :cond_4
    :goto_3
    throw v6

    .line 10791
    :catch_0
    move-exception v6

    .line 10794
    :goto_4
    if-eqz v1, :cond_0

    .line 10796
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 10797
    :catch_1
    move-exception v6

    goto :goto_0

    .line 10792
    :catch_2
    move-exception v6

    .line 10794
    :goto_5
    if-eqz v1, :cond_0

    .line 10796
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 10797
    :catch_3
    move-exception v7

    goto :goto_3

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v3       #ind:Ljava/io/DataInputStream;
    .restart local v4       #line:Ljava/lang/String;
    :catch_4
    move-exception v6

    goto :goto_1

    .line 10794
    .end local v3           #ind:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_2

    .line 10792
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_5

    .line 10791
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public detectSafeMode()Z
    .locals 1

    .prologue
    .line 6007
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->detectSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSafeMode:Z

    .line 6008
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 4408
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4410
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4413
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v0

    .line 4414
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4415
    monitor-exit v0

    .line 4416
    return-void

    .line 4415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v9, 0x1

    const-string v6, "    "

    const-string v8, " "

    .line 10805
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 10807
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump WindowManager from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11037
    :goto_0
    return-void

    .line 10813
    :cond_0
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v6, p2}, Lcom/android/server/InputManager;->dump(Ljava/io/PrintWriter;)V

    .line 10814
    const-string v6, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10816
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 10817
    :try_start_0
    const-string v7, "Current Window Manager state:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10818
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 10819
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10820
    .local v5, w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Window #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 10821
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10822
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10818
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 10824
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 10825
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10826
    const-string v7, "  Input method dialogs:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10827
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_2
    if-ltz v0, :cond_2

    .line 10828
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10829
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  IM Dialog #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10827
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 10832
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 10833
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10834
    const-string v7, "  Remove pending for:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10835
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_3
    if-ltz v0, :cond_3

    .line 10836
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10837
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Remove #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 10838
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10839
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10835
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 10842
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 10843
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10844
    const-string v7, "  Windows force removing:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10845
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_4
    if-ltz v0, :cond_4

    .line 10846
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10847
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Removing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 10848
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10849
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10845
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 10852
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 10853
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10854
    const-string v7, "  Windows waiting to destroy their surface:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10855
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_5
    if-ltz v0, :cond_5

    .line 10856
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10857
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Destroy #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 10858
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10859
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10855
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 10862
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 10863
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10864
    const-string v7, "  Windows losing focus:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10865
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_6
    if-ltz v0, :cond_6

    .line 10866
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10867
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Losing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 10868
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10869
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10865
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 10872
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 10873
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10874
    const-string v7, "  Windows waiting to resize:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10875
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_7
    if-ltz v0, :cond_7

    .line 10876
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10877
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Resizing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 10878
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10879
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10875
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 10882
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 10883
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10884
    const-string v7, "  All active sessions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10885
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 10886
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$Session;>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 10887
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$Session;

    .line 10888
    .local v3, s:Lcom/android/server/WindowManagerService$Session;
    const-string v7, "  Session "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 10889
    const-string v7, "    "

    invoke-virtual {v3, p2, v7}, Lcom/android/server/WindowManagerService$Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_8

    .line 11036
    .end local v0           #i:I
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$Session;>;"
    .end local v3           #s:Lcom/android/server/WindowManagerService$Session;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 10892
    .restart local v0       #i:I
    :cond_8
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 10893
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10894
    const-string v7, "  All tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10895
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 10896
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$WindowToken;>;"
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 10897
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10898
    .local v4, token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Token "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 10899
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_9

    .line 10902
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$WindowToken;>;"
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_9
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 10903
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10904
    const-string v7, "  Window token list:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10905
    const/4 v0, 0x0

    :goto_a
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_a

    .line 10906
    const-string v7, "  #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10907
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10905
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 10910
    :cond_a
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 10911
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10912
    const-string v7, "  Wallpaper tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10913
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_b
    if-ltz v0, :cond_b

    .line 10914
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10915
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Wallpaper #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 10916
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 10917
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10913
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 10920
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_b
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 10921
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10922
    const-string v7, "  Application tokens in Z order:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10923
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_c
    if-ltz v0, :cond_c

    .line 10924
    const-string v7, "  App #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10925
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10923
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 10928
    :cond_c
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 10929
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10930
    const-string v7, "  Finishing start of application tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10931
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_d
    if-ltz v0, :cond_d

    .line 10932
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10933
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Finished Starting #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 10934
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 10935
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10931
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 10938
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_d
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e

    .line 10939
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10940
    const-string v7, "  Exiting tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10941
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_e
    if-ltz v0, :cond_e

    .line 10942
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10943
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Exiting #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 10944
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 10945
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10941
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 10948
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_e
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_f

    .line 10949
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10950
    const-string v7, "  Exiting application tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10951
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_f
    if-ltz v0, :cond_f

    .line 10952
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10953
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Exiting App #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 10954
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 10955
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10951
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 10958
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_f
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10959
    const-string v7, "  mCurrentFocus="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10960
    const-string v7, "  mLastFocus="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10961
    const-string v7, "  mFocusedApp="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10962
    const-string v7, "  mInputMethodTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10963
    const-string v7, "  mInputMethodWindow="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10964
    const-string v7, "  mWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10965
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v7, :cond_10

    .line 10966
    const-string v7, "  mLowerWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10967
    const-string v7, "  mUpperWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10969
    :cond_10
    const-string v7, "  mCurConfiguration="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10970
    const-string v7, "  mInTouchMode="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10971
    const-string v7, " mLayoutSeq="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 10972
    const-string v7, "  mSystemBooted="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10973
    const-string v7, " mDisplayEnabled="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 10974
    const-string v7, "  mLayoutNeeded="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10975
    const-string v7, " mBlurShown="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 10976
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    if-eqz v7, :cond_18

    .line 10977
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    invoke-virtual {v7, p2}, Lcom/android/server/WindowManagerService$DimAnimator;->printTo(Ljava/io/PrintWriter;)V

    .line 10981
    :goto_10
    const-string v7, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10982
    iget v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 10983
    const-string v7, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10984
    iget v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 10985
    const-string v7, "  mLastWallpaperX="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(F)V

    .line 10986
    const-string v7, " mLastWallpaperY="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(F)V

    .line 10987
    const-string v7, "  mDisplayFrozen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10988
    const-string v7, " mWindowsFreezingScreen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10989
    const-string v7, " mAppsFreezingScreen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 10990
    const-string v7, " mWaitingForConfig="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 10991
    const-string v7, "  mRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 10992
    const-string v7, ", mForcedAppOrientation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 10993
    const-string v7, ", mRequestedRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 10994
    const-string v7, "  mAnimationPending="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10995
    const-string v7, " mWindowAnimationScale="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(F)V

    .line 10996
    const-string v7, " mTransitionWindowAnimationScale="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(F)V

    .line 10997
    const-string v7, "  mNextAppTransition=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10998
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10999
    const-string v7, ", mAppTransitionReady="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11000
    const-string v7, ", mAppTransitionRunning="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11001
    const-string v7, ", mAppTransitionTimeout="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 11002
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v7, :cond_11

    .line 11003
    const-string v7, "  mNextAppTransitionPackage="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11004
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11005
    const-string v7, ", mNextAppTransitionEnter=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11006
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionEnter:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11007
    const-string v7, ", mNextAppTransitionExit=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11008
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionExit:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11010
    :cond_11
    const-string v7, "  mStartingIconInTransition="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11011
    const-string v7, ", mSkipAppTransitionAnimation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 11012
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v7, :cond_13

    .line 11013
    :cond_12
    const-string v7, "  mLastEnterAnimToken="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 11014
    const-string v7, ", mLastEnterAnimParams="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11016
    :cond_13
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 11017
    const-string v7, "  mOpeningApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11019
    :cond_14
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_15

    .line 11020
    const-string v7, "  mClosingApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11022
    :cond_15
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_16

    .line 11023
    const-string v7, "  mToTopApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11025
    :cond_16
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_17

    .line 11026
    const-string v7, "  mToBottomApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11030
    :cond_17
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v7, :cond_19

    .line 11031
    const-string v7, "  DisplayWidth="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 11032
    const-string v7, " DisplayHeight="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 11036
    :goto_11
    monitor-exit v6

    goto/16 :goto_0

    .line 10979
    :cond_18
    const-string v7, "  no DimAnimator "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 11034
    :cond_19
    const-string v7, "  mDisplay is null. Do not print DisplayWidth and DisplayHeight."

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_11
.end method

.method dumpAppTokensLocked()V
    .locals 4

    .prologue
    .line 4107
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 4108
    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4107
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4110
    :cond_0
    return-void
.end method

.method dumpWindowsLocked()V
    .locals 4

    .prologue
    .line 4113
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 4114
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4113
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4116
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 2

    .prologue
    .line 4650
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4651
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_0

    .line 4652
    monitor-exit v0

    .line 4658
    :goto_0
    return-void

    .line 4654
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    .line 4655
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4657
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->performEnableScreen()V

    goto :goto_0

    .line 4655
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public enableScreenIfNeededLocked()V
    .locals 3

    .prologue
    .line 4661
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_1

    .line 4668
    :cond_0
    :goto_0
    return-void

    .line 4664
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-eqz v0, :cond_0

    .line 4667
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public executeAppTransition()V
    .locals 5

    .prologue
    .line 3528
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3530
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3533
    :cond_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3540
    :try_start_0
    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 3541
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 3542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3543
    .local v0, origId:J
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3544
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3546
    .end local v0           #origId:J
    :cond_1
    monitor-exit v2

    .line 3547
    return-void

    .line 3546
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4451
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4453
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4455
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/WindowManagerService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WindowManagerService$3;-><init>(Lcom/android/server/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4464
    return-void
.end method

.method findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;
    .locals 2
    .parameter "token"

    .prologue
    .line 3040
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 3041
    .local v0, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-nez v0, :cond_0

    .line 3042
    const/4 v1, 0x0

    .line 3044
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    goto :goto_0
.end method

.method findDesiredInputMethodWindowIndexLocked(Z)I
    .locals 13
    .parameter "willMove"

    .prologue
    .line 958
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 959
    .local v5, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 960
    .local v0, N:I
    const/4 v8, 0x0

    .line 961
    .local v8, w:Lcom/android/server/WindowManagerService$WindowState;
    move v4, v0

    .line 962
    .local v4, i:I
    :cond_0
    if-lez v4, :cond_1

    .line 963
    add-int/lit8 v4, v4, -0x1

    .line 964
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #w:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 968
    .restart local v8       #w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v8}, Lcom/android/server/WindowManagerService;->canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 976
    if-nez p1, :cond_1

    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    if-lez v4, :cond_1

    .line 979
    const/4 v11, 0x1

    sub-int v11, v4, v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 980
    .local v9, wb:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v12, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v11, v12, :cond_1

    invoke-static {v9}, Lcom/android/server/WindowManagerService;->canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 981
    add-int/lit8 v4, v4, -0x1

    .line 982
    move-object v8, v9

    .line 989
    .end local v9           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 994
    if-eqz p1, :cond_8

    if-eqz v8, :cond_8

    .line 995
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 996
    .local v1, curTarget:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v1, :cond_8

    iget-object v11, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v11, :cond_8

    .line 1002
    iget-object v7, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1003
    .local v7, token:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v3, 0x0

    .line 1004
    .local v3, highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v2, 0x0

    .line 1005
    .local v2, highestPos:I
    iget-boolean v11, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v11, :cond_2

    iget-object v11, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_3

    .line 1006
    :cond_2
    const/4 v6, 0x0

    .line 1007
    .local v6, pos:I
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1008
    :goto_0
    if-ltz v6, :cond_3

    .line 1009
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/WindowManagerService$WindowState;

    .line 1010
    .local v10, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v11, v10, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v11, v7, :cond_4

    .line 1024
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    if-eqz v3, :cond_8

    .line 1031
    iget v11, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    .line 1034
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1035
    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1036
    add-int/lit8 v11, v2, 0x1

    .line 1084
    .end local v1           #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :goto_1
    return v11

    .line 1013
    .restart local v1       #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v2       #highestPos:I
    .restart local v3       #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v6       #pos:I
    .restart local v7       #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v10       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    iget-boolean v11, v10, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    if-nez v11, :cond_6

    .line 1014
    if-eqz v3, :cond_5

    iget v11, v10, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v12, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_6

    .line 1016
    :cond_5
    move-object v3, v10

    .line 1017
    move v2, v6

    .line 1020
    :cond_6
    add-int/lit8 v6, v6, -0x1

    .line 1021
    goto :goto_0

    .line 1037
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_8

    iget v11, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_8

    .line 1043
    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1044
    add-int/lit8 v11, v2, 0x1

    goto :goto_1

    .line 1051
    .end local v1           #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_8
    if-eqz v8, :cond_b

    .line 1052
    if-eqz p1, :cond_9

    .line 1062
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1063
    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v11, :cond_a

    .line 1064
    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v11, v11, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1069
    :cond_9
    :goto_2
    add-int/lit8 v11, v4, 0x1

    goto :goto_1

    .line 1066
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_2

    .line 1071
    :cond_b
    if-eqz p1, :cond_c

    .line 1081
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1082
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1084
    :cond_c
    const/4 v11, -0x1

    goto :goto_1
.end method

.method public findWindowByPosition(Landroid/view/MotionEvent;)Lcom/android/server/WindowManagerService$WindowState;
    .locals 23
    .parameter "nextMotion"

    .prologue
    .line 11308
    const-string v19, "WindowManager"

    const-string v20, "+findWindowByPosition"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11309
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 11310
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 11311
    .local v16, xf:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 11312
    .local v18, yf:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 11314
    .local v6, eventTime:J
    const/4 v10, 0x0

    .line 11316
    .local v10, target:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 11317
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11318
    move/from16 v0, v16

    float-to-int v0, v0

    move v15, v0

    .line 11319
    .local v15, x:I
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 11321
    .local v17, y:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v14, v0

    .line 11322
    .local v14, windows:Ljava/util/ArrayList;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11323
    .local v3, N:I
    const/4 v12, 0x0

    .line 11324
    .local v12, topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTempRect:Landroid/graphics/Rect;

    move-object v11, v0

    .line 11326
    .local v11, tmpRect:Landroid/graphics/Rect;
    const-string v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "window coundt is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11327
    const/16 v20, 0x1

    sub-int v9, v3, v20

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_8

    .line 11328
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11330
    .local v5, child:Lcom/android/server/WindowManagerService$WindowState;
    const-string v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Checking dispatch to: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11334
    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x3e8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7cf

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1

    .line 11335
    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7db

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 11336
    const-string v20, "WindowManager"

    const-string v21, "Attached window to inputmethod, don\'t need to check."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11327
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 11340
    :cond_1
    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7db

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 11341
    const-string v20, "WindowManager"

    const-string v21, "Found inputMethod and bypass to find the next window under it!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11388
    .end local v3           #N:I
    .end local v5           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v9           #i:I
    .end local v11           #tmpRect:Landroid/graphics/Rect;
    .end local v12           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v14           #windows:Ljava/util/ArrayList;
    :catchall_0
    move-exception v20

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v20

    .line 11389
    .end local v15           #x:I
    .end local v17           #y:I
    :catchall_1
    move-exception v20

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v20

    .line 11345
    .restart local v3       #N:I
    .restart local v5       #child:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v9       #i:I
    .restart local v11       #tmpRect:Landroid/graphics/Rect;
    .restart local v12       #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v14       #windows:Ljava/util/ArrayList;
    .restart local v15       #x:I
    .restart local v17       #y:I
    :cond_2
    :try_start_3
    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v8, v0

    .line 11346
    .local v8, flags:I
    const/high16 v20, 0x4000

    and-int v20, v20, v8

    if-eqz v20, :cond_3

    .line 11347
    if-nez v12, :cond_3

    .line 11348
    move-object v12, v5

    .line 11351
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v20

    if-nez v20, :cond_4

    .line 11352
    const-string v20, "WindowManager"

    const-string v21, "Not visible!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11355
    :cond_4
    and-int/lit8 v20, v8, 0x10

    if-eqz v20, :cond_5

    .line 11356
    const-string v20, "WindowManager"

    const-string v21, "Not touchable!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11357
    const/high16 v20, 0x4

    and-int v20, v20, v8

    if-eqz v20, :cond_0

    goto :goto_1

    .line 11362
    :cond_5
    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11363
    move-object v0, v5

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 11364
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 11365
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 11366
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 11367
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 11375
    :cond_6
    :goto_2
    and-int/lit8 v13, v8, 0x28

    .line 11378
    .local v13, touchFlags:I
    move-object v0, v11

    move v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-nez v20, :cond_7

    if-nez v13, :cond_a

    .line 11379
    :cond_7
    const-string v20, "WindowManager"

    const-string v21, "Using this target!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11380
    move-object v10, v5

    .line 11388
    .end local v5           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v8           #flags:I
    .end local v13           #touchFlags:I
    :cond_8
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11389
    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 11391
    const-string v19, "WindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "-findWindowByPosition : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11392
    return-object v10

    .line 11368
    .restart local v5       #child:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v8       #flags:I
    :cond_9
    :try_start_5
    move-object v0, v5

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 11369
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 11370
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 11371
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 11372
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 11384
    .restart local v13       #touchFlags:I
    :cond_a
    const/high16 v20, 0x4

    and-int v20, v20, v8

    if-eqz v20, :cond_0

    .line 11385
    const-string v20, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Adding to outside target list: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public finishDrawingWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    .locals 6
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2743
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2744
    .local v0, origId:J
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2745
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2746
    .local v2, win:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$WindowState;->finishDrawingLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2747
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 2748
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2750
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2751
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2753
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2754
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2755
    return-void

    .line 2753
    .end local v2           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getAnimationScale(I)F
    .locals 1
    .parameter "which"

    .prologue
    .line 4538
    packed-switch p1, :pswitch_data_0

    .line 4542
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4539
    :pswitch_0
    iget v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_0

    .line 4540
    :pswitch_1
    iget v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_0

    .line 4538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .locals 3

    .prologue
    .line 4546
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .locals 3
    .parameter "token"

    .prologue
    .line 3391
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3392
    :try_start_0
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3393
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_0

    .line 3394
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    .line 3397
    :goto_0
    return v1

    :cond_0
    iget v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 3398
    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentDockState()I
    .locals 1

    .prologue
    .line 4744
    sget v0, Lcom/android/server/WindowManagerService;->mDockState:I

    return v0
.end method

.method public getDPadKeycodeState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4622
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4624
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4626
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getDPadScancodeState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4590
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4592
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4594
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 1
    .parameter "deviceId"

    .prologue
    .line 4642
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .locals 1

    .prologue
    .line 4646
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v0}, Lcom/android/server/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeycodeState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4598
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4600
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4602
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getKeycodeStateForDevice(II)I
    .locals 2
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4606
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4608
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4610
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getOrientationFromAppTokensLocked()I
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x3

    .line 3207
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v6, v8, v11

    .line 3208
    .local v6, pos:I
    const/4 v0, 0x0

    .line 3209
    .local v0, curGroup:I
    const/4 v4, -0x1

    .line 3210
    .local v4, lastOrientation:I
    const/4 v1, 0x0

    .line 3211
    .local v1, findingBehind:Z
    const/4 v2, 0x0

    .line 3212
    .local v2, haveGroup:Z
    const/4 v3, 0x0

    .line 3213
    .local v3, lastFullscreen:Z
    :cond_0
    :goto_0
    if-ltz v6, :cond_7

    .line 3214
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3215
    .local v7, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    add-int/lit8 v6, v6, -0x1

    .line 3218
    if-nez v1, :cond_1

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v8, :cond_1

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_0

    .line 3223
    :cond_1
    if-nez v2, :cond_3

    .line 3225
    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_0

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    if-nez v8, :cond_0

    .line 3228
    const/4 v2, 0x1

    .line 3229
    iget v0, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 3230
    iget v4, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3242
    :cond_2
    iget v5, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3246
    .local v5, or:I
    iget-boolean v3, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    .line 3247
    if-eqz v3, :cond_4

    if-eq v5, v9, :cond_4

    move v8, v5

    .line 3259
    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :goto_1
    return v8

    .line 3231
    .restart local v7       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3
    iget v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    if-eq v0, v8, :cond_2

    .line 3237
    if-eq v4, v9, :cond_2

    if-eqz v3, :cond_2

    move v8, v4

    .line 3239
    goto :goto_1

    .line 3253
    .restart local v5       #or:I
    :cond_4
    if-eq v5, v10, :cond_5

    if-eq v5, v9, :cond_5

    move v8, v5

    .line 3255
    goto :goto_1

    .line 3257
    :cond_5
    if-ne v5, v9, :cond_6

    move v8, v11

    :goto_2
    or-int/2addr v1, v8

    .line 3258
    goto :goto_0

    .line 3257
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_7
    move v8, v10

    .line 3259
    goto :goto_1
.end method

.method public getOrientationFromWindowsLocked()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 3183
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .line 3184
    .local v0, pos:I
    :cond_0
    if-ltz v0, :cond_2

    .line 3185
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 3186
    .local v2, wtoken:Lcom/android/server/WindowManagerService$WindowState;
    add-int/lit8 v0, v0, -0x1

    .line 3187
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v3, :cond_1

    move v3, v5

    .line 3203
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :goto_0
    return v3

    .line 3192
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v3, :cond_0

    .line 3195
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3196
    .local v1, req:I
    if-eq v1, v5, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    move v3, v1

    .line 3200
    goto :goto_0

    .end local v1           #req:I
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    move v3, v5

    .line 3203
    goto :goto_0
.end method

.method public getPendingAppTransition()I
    .locals 1

    .prologue
    .line 3515
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    return v0
.end method

.method public getRequestedRotation()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 4915
    iget v0, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    return v0
.end method

.method public getScancodeState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4566
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4568
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4570
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getScancodeStateForDevice(II)I
    .locals 2
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4574
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4576
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4578
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4550
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4552
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4554
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchStateForDevice(II)I
    .locals 2
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4558
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4560
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4562
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballKeycodeState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4614
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4616
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4618
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballScancodeState(I)I
    .locals 3
    .parameter "sw"

    .prologue
    .line 4582
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4584
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4586
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getWindowDisplayFrame(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "session"
    .parameter "client"
    .parameter "outDisplayFrame"

    .prologue
    .line 2401
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2402
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 2403
    .local v0, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v0, :cond_0

    .line 2404
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2405
    monitor-exit v1

    .line 2409
    :goto_0
    return-void

    .line 2407
    :cond_0
    iget-object v2, v0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2408
    monitor-exit v1

    goto :goto_0

    .end local v0           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasKeys([I[Z)Z
    .locals 3
    .parameter "keycodes"
    .parameter "keyExists"

    .prologue
    .line 4630
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/InputManager;->hasKeys(II[I[Z)Z

    move-result v0

    return v0
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 1

    .prologue
    .line 4477
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public injectInputEventNoWait(Landroid/view/InputEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    .line 5965
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5966
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5967
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5969
    .local v6, ident:J
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v4, 0x0

    const/16 v5, 0x7530

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 5973
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5974
    invoke-direct {p0, v8}, Lcom/android/server/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 24
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 5850
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    .line 5851
    .local v3, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    .line 5853
    .local v5, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    .line 5854
    .local v7, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 5855
    .local v8, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    .line 5856
    .local v9, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    .line 5857
    .local v10, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    .line 5858
    .local v11, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    .line 5859
    .local v12, scancode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    .line 5860
    .local v14, source:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .line 5862
    .local v13, flag:I
    if-nez v14, :cond_0

    .line 5863
    const/16 v14, 0x101

    .line 5866
    :cond_0
    const-wide/16 v15, 0x0

    cmp-long v15, v5, v15

    if-nez v15, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 5867
    :cond_1
    const-wide/16 v15, 0x0

    cmp-long v15, v3, v15

    if-nez v15, :cond_2

    move-wide v3, v5

    .line 5871
    :cond_2
    const/4 v15, 0x3

    if-eq v13, v15, :cond_3

    .line 5873
    or-int/lit8 v13, v13, 0x8

    .line 5875
    :cond_3
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 5883
    .local v2, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 5884
    .local v17, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 5885
    .local v18, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 5887
    .local v21, ident:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    move-object v15, v0

    if-eqz p2, :cond_4

    const/16 v16, 0x2

    move/from16 v19, v16

    :goto_0
    const/16 v20, 0x7530

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v23

    .line 5892
    .local v23, result:I
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5893
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->reportInjectionResult(I)Z

    move-result v15

    return v15

    .line 5887
    .end local v23           #result:I
    :cond_4
    const/16 v16, 0x1

    move/from16 v19, v16

    goto :goto_0
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 5908
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5909
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5910
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5912
    .local v6, ident:J
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 5913
    .local v1, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 5914
    const/16 v0, 0x1002

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 5917
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    if-eqz p2, :cond_1

    const/4 v4, 0x2

    :goto_0
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 5922
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5923
    invoke-direct {p0, v8}, Lcom/android/server/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    .line 5917
    .end local v8           #result:I
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 5938
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5939
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5940
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5942
    .local v6, ident:J
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 5943
    .local v1, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 5944
    const v0, 0x10004

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 5947
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    if-eqz p2, :cond_1

    const/4 v4, 0x2

    :goto_0
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 5952
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5953
    invoke-direct {p0, v8}, Lcom/android/server/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    .line 5947
    .end local v8           #result:I
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 7
    .parameter "client"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8642
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 8645
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 8647
    .local v0, idx:I
    if-lez v0, :cond_0

    .line 8648
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    sub-int v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 8649
    .local v1, imFocus:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v1, :cond_0

    .line 8650
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 8652
    monitor-exit v2

    move v2, v6

    .line 8657
    .end local v1           #imFocus:Lcom/android/server/WindowManagerService$WindowState;
    :goto_0
    return v2

    .line 8656
    :cond_0
    monitor-exit v2

    move v2, v5

    .line 8657
    goto :goto_0

    .line 8656
    .end local v0           #idx:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isInputMethodActive()Z
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 542
    .local v0, imw:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLockScreenViewMaking()Z
    .locals 1

    .prologue
    .line 4473
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isLockScreenMaking()Z

    move-result v0

    return v0
.end method

.method public isLockScreenViewShowing()Z
    .locals 1

    .prologue
    .line 4468
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isLockScreenShowing()Z

    move-result v0

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "componentName"

    .prologue
    .line 11249
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isViewServerRunning()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5074
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 5082
    :goto_0
    return v0

    .line 5078
    :cond_0
    const-string v0, "android.permission.DUMP"

    const-string v1, "isViewServerRunning"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 5079
    goto :goto_0

    .line 5082
    :cond_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/ViewServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method final isWallpaperVisible(Lcom/android/server/WindowManagerService$WindowState;)Z
    .locals 1
    .parameter "wallpaperTarget"

    .prologue
    .line 1330
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logWindowList(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1170
    .local v0, N:I
    :goto_0
    if-lez v0, :cond_0

    .line 1171
    add-int/lit8 v0, v0, -0x1

    .line 1172
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1174
    :cond_0
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 11041
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11042
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11043
    return-void

    .line 11041
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 11042
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 2
    .parameter "inputChannelName"

    .prologue
    .line 4634
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "monitorInput()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4636
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4638
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/InputManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public moveAppToken(ILandroid/os/IBinder;)V
    .locals 7
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4219
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "moveAppToken()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4221
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4224
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4227
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 4228
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4229
    :cond_1
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    monitor-exit v3

    .line 4252
    :goto_0
    return-void

    .line 4233
    :cond_2
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4240
    .local v0, origId:J
    invoke-direct {p0, v2}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4243
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    .line 4246
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 4247
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4248
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4250
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4251
    monitor-exit v3

    goto :goto_0

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public moveAppTokensToBottom(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v8, -0x1

    .line 4354
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "moveAppTokensToBottom()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4356
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4359
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4360
    .local v2, origId:J
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 4361
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4362
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4363
    .local v0, N:I
    const/4 v4, 0x0

    .line 4364
    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 4365
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {p0, v6}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v5

    .line 4366
    .local v5, wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v5, :cond_2

    .line 4367
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4368
    iget v6, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v6, v8, :cond_1

    .line 4369
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4370
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4371
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4372
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->sendingToTop:Z

    .line 4373
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->sendingToBottom:Z

    .line 4375
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 4364
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4379
    .end local v5           #wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3
    iget v6, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-ne v6, v8, :cond_4

    .line 4380
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4382
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4383
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4384
    return-void

    .line 4382
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v4           #pos:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public moveAppTokensToTop(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v7, -0x1

    .line 4323
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "moveAppTokensToTop()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4325
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4328
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4329
    .local v2, origId:J
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4330
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4331
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4332
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4333
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v4

    .line 4334
    .local v4, wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v4, :cond_1

    .line 4335
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4336
    iget v5, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v5, v7, :cond_1

    .line 4337
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4338
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4339
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4340
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowToken;->sendingToBottom:Z

    .line 4341
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowToken;->sendingToTop:Z

    .line 4332
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4346
    .end local v4           #wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2
    iget v5, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-ne v5, v7, :cond_3

    .line 4347
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4349
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4350
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4351
    return-void

    .line 4349
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method moveInputMethodDialogsLocked(I)V
    .locals 7
    .parameter "pos"

    .prologue
    .line 1177
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 1179
    .local v1, dialogs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1181
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1182
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    invoke-direct {p0, p1, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 1181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1189
    :cond_0
    if-ltz p1, :cond_2

    .line 1190
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v3, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1191
    .local v3, targetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 1192
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 1193
    .local v5, wp:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v5, v6, :cond_1

    .line 1194
    add-int/lit8 p1, p1, 0x1

    .line 1198
    .end local v5           #wp:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 1199
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 1200
    .local v4, win:Lcom/android/server/WindowManagerService$WindowState;
    iput-object v3, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1201
    invoke-direct {p0, p1, v4}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 1198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1209
    .end local v3           #targetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 1210
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 1211
    .restart local v4       #win:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1212
    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1209
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1218
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    return-void
.end method

.method moveInputMethodWindowsIfNeededLocked(Z)Z
    .locals 13
    .parameter "needAssignLayers"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1221
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1222
    .local v6, imWin:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1223
    .local v0, DN:I
    if-nez v6, :cond_0

    if-nez v0, :cond_0

    move v8, v9

    .line 1316
    :goto_0
    return v8

    .line 1227
    :cond_0
    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v5

    .line 1228
    .local v5, imPos:I
    if-ltz v5, :cond_c

    .line 1234
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1235
    .local v1, N:I
    if-ge v5, v1, :cond_4

    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v8

    .line 1240
    .local v4, firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1
    if-eqz v6, :cond_5

    move-object v2, v6

    .line 1242
    .local v2, baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    :goto_2
    iget-object v8, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1243
    iget-object v8, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 1244
    .local v3, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget v8, v3, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-gez v8, :cond_1

    move-object v2, v3

    .line 1247
    .end local v3           #cw:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    if-ne v4, v2, :cond_8

    .line 1250
    add-int/lit8 v7, v5, 0x1

    .line 1251
    .local v7, pos:I
    :goto_3
    if-ge v7, v1, :cond_2

    .line 1252
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-nez v8, :cond_6

    .line 1257
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 1259
    :goto_4
    if-ge v7, v1, :cond_3

    .line 1260
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v8, :cond_7

    .line 1265
    :cond_3
    if-lt v7, v1, :cond_8

    move v8, v9

    .line 1267
    goto :goto_0

    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #pos:I
    :cond_4
    move-object v4, v12

    .line 1235
    goto :goto_1

    .line 1240
    .restart local v4       #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    move-object v2, v8

    goto :goto_2

    .line 1255
    .restart local v2       #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v7       #pos:I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1263
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1271
    .end local v7           #pos:I
    :cond_8
    if-eqz v6, :cond_b

    .line 1276
    invoke-direct {p0, v5, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result v5

    .line 1281
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1282
    invoke-direct {p0, v5, v6}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1287
    if-lez v0, :cond_9

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1312
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_9
    :goto_5
    if-eqz p1, :cond_a

    .line 1313
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    :cond_a
    move v8, v11

    .line 1316
    goto/16 :goto_0

    .line 1289
    .restart local v1       #N:I
    .restart local v2       #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v4       #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_5

    .line 1296
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c
    if-eqz v6, :cond_d

    .line 1298
    invoke-direct {p0, v9, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1299
    iput-object v12, v6, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1300
    invoke-direct {p0, v6}, Lcom/android/server/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1305
    if-lez v0, :cond_9

    invoke-virtual {p0, v10}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_5

    .line 1307
    :cond_d
    invoke-virtual {p0, v10}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_5
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 702
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 703
    :catch_0
    move-exception v0

    .line 706
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 707
    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    :cond_0
    throw v0
.end method

.method public openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .locals 3
    .parameter "client"
    .parameter "inputContext"

    .prologue
    .line 8635
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null client"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8636
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null inputContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8637
    :cond_1
    new-instance v0, Lcom/android/server/WindowManagerService$Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$Session;-><init>(Lcom/android/server/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    .line 8638
    .local v0, session:Lcom/android/server/WindowManagerService$Session;
    return-object v0
.end method

.method public overridePendingAppTransition(Ljava/lang/String;II)V
    .locals 2
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 3520
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3521
    iput-object p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 3522
    iput p2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionEnter:I

    .line 3523
    iput p3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionExit:I

    .line 3525
    :cond_0
    return-void
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .locals 3
    .parameter "_token"

    .prologue
    .line 5768
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "pauseKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5770
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5773
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5774
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 5775
    .local v0, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_1

    .line 5776
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v2, v0}, Lcom/android/server/WindowManagerService$InputMonitor;->pauseDispatchingLw(Lcom/android/server/WindowManagerService$WindowToken;)V

    .line 5778
    :cond_1
    monitor-exit v1

    .line 5779
    return-void

    .line 5778
    .end local v0           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public performEnableScreen()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 4671
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4672
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v7, :cond_0

    .line 4673
    monitor-exit v6

    .line 4718
    :goto_0
    return-void

    .line 4675
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-nez v7, :cond_1

    .line 4676
    monitor-exit v6

    goto :goto_0

    .line 4711
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 4681
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4682
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 4683
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 4684
    .local v5, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    if-nez v7, :cond_3

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v7

    if-nez v7, :cond_3

    .line 4686
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 4682
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4690
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4699
    :try_start_2
    const-string v7, "SurfaceFlinger"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 4700
    .local v4, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v4, :cond_5

    .line 4702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4703
    .local v1, data:Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4704
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v1, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4706
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4711
    .end local v1           #data:Landroid/os/Parcel;
    .end local v4           #surfaceFlinger:Landroid/os/IBinder;
    :cond_5
    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4713
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 4716
    const/16 v6, -0x3e8

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    or-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v6, v10, v7}, Lcom/android/server/WindowManagerService;->setRotationUnchecked(IZI)V

    goto :goto_0

    .line 4708
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 4709
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "WindowManager"

    const-string v8, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public prepareAppTransition(I)V
    .locals 5
    .parameter "transit"

    .prologue
    .line 3481
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3483
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3486
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3490
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3491
    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-nez v1, :cond_4

    .line 3493
    :cond_1
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 3503
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 3504
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 3505
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 3506
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3507
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3508
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3511
    :cond_3
    monitor-exit v0

    .line 3512
    return-void

    .line 3494
    :cond_4
    const/16 v1, 0x1008

    if-ne p1, v1, :cond_5

    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2009

    if-ne v1, v2, :cond_5

    .line 3497
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    goto :goto_0

    .line 3511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3498
    :cond_5
    const/16 v1, 0x1006

    if-ne p1, v1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2007

    if-ne v1, v2, :cond_2

    .line 3501
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final rebuildAppWindowListLocked()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 8698
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8700
    .local v1, NW:I
    const/4 v4, -0x1

    .line 8701
    .local v4, lastWallpaper:I
    const/4 v5, 0x0

    .line 8704
    .local v5, numRemoved:I
    const/4 v2, 0x0

    .line 8705
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 8706
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 8707
    .local v6, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v8, :cond_0

    .line 8708
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 8709
    .local v7, win:Lcom/android/server/WindowManagerService$WindowState;
    iput-boolean v10, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 8712
    add-int/lit8 v1, v1, -0x1

    .line 8713
    add-int/lit8 v5, v5, 0x1

    .line 8714
    goto :goto_0

    .line 8715
    .end local v7           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_0
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7dd

    if-ne v8, v9, :cond_1

    sub-int v8, v2, v10

    if-ne v4, v8, :cond_1

    .line 8717
    move v4, v2

    .line 8719
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 8720
    goto :goto_0

    .line 8724
    .end local v6           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 8725
    move v2, v4

    .line 8731
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8732
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 8733
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowToken;

    invoke-direct {p0, v2, v8}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 8732
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8737
    :cond_3
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8738
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    .line 8739
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowToken;

    invoke-direct {p0, v2, v8}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 8738
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8742
    :cond_4
    sub-int/2addr v2, v4

    .line 8743
    if-eq v2, v5, :cond_5

    .line 8744
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rebuild removed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " windows but added "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8747
    :cond_5
    return-void
.end method

.method reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V
    .locals 14
    .parameter "win"
    .parameter "operation"

    .prologue
    .line 10325
    iget-object v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 10327
    .local v8, surface:Landroid/view/Surface;
    const/16 v10, 0x7918

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v13, v13, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object p2, v11, v12

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 10330
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-nez v10, :cond_0

    .line 10331
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 10334
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 10339
    .local v1, callingIdentity:J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10340
    .local v0, N:I
    const/4 v5, 0x0

    .line 10341
    .local v5, leakedSurface:Z
    const-string v10, "WindowManager"

    const-string v11, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10342
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 10343
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 10344
    .local v9, ws:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v10, :cond_1

    .line 10345
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 10346
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " surface="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v12, v12, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v12, v12, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10351
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 10352
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 10353
    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 10354
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10355
    add-int/lit8 v3, v3, -0x1

    .line 10356
    add-int/lit8 v0, v0, -0x1

    .line 10357
    const/4 v5, 0x1

    .line 10342
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10358
    :cond_2
    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v10, :cond_1

    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eqz v10, :cond_1

    .line 10359
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " surface="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10362
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 10363
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 10364
    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 10365
    const/4 v5, 0x1

    goto :goto_1

    .line 10370
    .end local v9           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    const/4 v4, 0x0

    .line 10371
    .local v4, killedApps:Z
    if-nez v5, :cond_7

    .line 10372
    const-string v10, "WindowManager"

    const-string v11, "No leaked surfaces; killing applicatons!"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10373
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 10374
    .local v6, pidCandidates:Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    .line 10375
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 10376
    .restart local v9       #ws:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v10, :cond_4

    .line 10377
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v10, v10, Lcom/android/server/WindowManagerService$Session;->mPid:I

    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v11, v11, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-virtual {v6, v10, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 10374
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 10380
    .end local v9           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 10381
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    new-array v7, v10, [I

    .line 10382
    .local v7, pids:[I
    const/4 v3, 0x0

    :goto_3
    array-length v10, v7

    if-ge v3, v10, :cond_6

    .line 10383
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    aput v10, v7, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10382
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 10386
    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v11, "Free memory"

    invoke-interface {v10, v7, v11}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-eqz v10, :cond_7

    .line 10387
    const/4 v4, 0x1

    .line 10394
    .end local v6           #pidCandidates:Landroid/util/SparseIntArray;
    .end local v7           #pids:[I
    :cond_7
    :goto_4
    if-nez v5, :cond_8

    if-eqz v4, :cond_a

    .line 10397
    :cond_8
    :try_start_2
    const-string v10, "WindowManager"

    const-string v11, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10398
    if-eqz v8, :cond_9

    .line 10399
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    .line 10400
    const/4 v10, 0x0

    iput-boolean v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 10401
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10405
    :cond_9
    :try_start_3
    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v10}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 10410
    :cond_a
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10412
    return-void

    .line 10410
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #killedApps:Z
    .end local v5           #leakedSurface:Z
    :catchall_0
    move-exception v10

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 10406
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #killedApps:Z
    .restart local v5       #leakedSurface:Z
    :catch_0
    move-exception v10

    goto :goto_5

    .line 10389
    .restart local v6       #pidCandidates:Landroid/util/SparseIntArray;
    .restart local v7       #pids:[I
    :catch_1
    move-exception v10

    goto :goto_4
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 4420
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4422
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4425
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 4426
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 4428
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4436
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 4438
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4439
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 4440
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 4444
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4445
    return-void
.end method

.method public relayoutWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .locals 29
    .parameter "session"
    .parameter "client"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outConfig"
    .parameter "outSurface"

    .prologue
    .line 2470
    const/4 v9, 0x0

    .line 2473
    .local v9, displayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2475
    .local v17, origId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2476
    const/16 v26, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v24

    .line 2477
    .local v24, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v24, :cond_0

    .line 2478
    const/16 v26, 0x0

    monitor-exit v25

    move/from16 v25, v26

    .line 2738
    :goto_0
    return v25

    .line 2480
    :cond_0
    move/from16 v0, p4

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    .line 2481
    move/from16 v0, p5

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    .line 2483
    if-eqz p3, :cond_1

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 2487
    :cond_1
    const/4 v6, 0x0

    .line 2488
    .local v6, attrChanges:I
    const/4 v11, 0x0

    .line 2489
    .local v11, flagChanges:I
    if-eqz p3, :cond_2

    .line 2490
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v28, v0

    xor-int v11, v27, v28

    move v0, v11

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2491
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 2496
    :cond_2
    move v0, v6

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 2497
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    .line 2500
    :cond_3
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x4000

    move/from16 v26, v0

    if-eqz v26, :cond_19

    const/16 v26, 0x1

    move/from16 v20, v26

    .line 2503
    .local v20, scaledWindow:Z
    :goto_1
    if-eqz v20, :cond_1c

    .line 2506
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p4

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    :goto_2
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    .line 2508
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p5

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    :goto_3
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    .line 2514
    :goto_4
    const v26, 0x20008

    and-int v26, v26, v11

    if-eqz v26, :cond_1d

    const/16 v26, 0x1

    move/from16 v13, v26

    .line 2518
    .local v13, imMayMove:Z
    :goto_5
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p6

    if-ne v0, v1, :cond_4

    and-int/lit8 v26, v11, 0x8

    if-nez v26, :cond_4

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    move/from16 v26, v0

    if-nez v26, :cond_1e

    :cond_4
    const/16 v26, 0x1

    move/from16 v12, v26

    .line 2522
    .local v12, focusMayChange:Z
    :goto_6
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p6

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x10

    and-int v26, v26, v27

    if-eqz v26, :cond_1f

    const/16 v26, 0x1

    move/from16 v23, v26

    .line 2525
    .local v23, wallpaperMayMove:Z
    :goto_7
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    .line 2526
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v16, v0

    .line 2527
    .local v16, oldVisibility:I
    move/from16 v0, p6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    .line 2528
    if-nez p6, :cond_22

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move/from16 v26, v0

    if-nez v26, :cond_22

    .line 2530
    :cond_5
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v26

    if-nez v26, :cond_20

    const/16 v26, 0x1

    move/from16 v9, v26

    .line 2531
    :goto_8
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 2532
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2533
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 2535
    :cond_6
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    .line 2536
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2539
    :cond_7
    const/16 v26, 0x8

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 2540
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2542
    :cond_8
    if-eqz v9, :cond_c

    .line 2543
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 2546
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2548
    :cond_9
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x20

    and-int v26, v26, v27

    if-eqz v26, :cond_a

    .line 2552
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    .line 2554
    :cond_a
    const/4 v8, 0x0

    .line 2555
    .local v8, diff:I
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_c

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_c

    .line 2558
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 2564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, p11

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2567
    .end local v8           #diff:I
    :cond_c
    and-int/lit8 v26, v6, 0x8

    if-eqz v26, :cond_d

    .line 2569
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2570
    const/4 v9, 0x1

    .line 2573
    :cond_d
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->createSurfaceLocked()Landroid/view/Surface;

    move-result-object v21

    .line 2574
    .local v21, surface:Landroid/view/Surface;
    if-eqz v21, :cond_21

    .line 2575
    move-object/from16 v0, p12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 2576
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReportDestroySurface:Z

    .line 2577
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2594
    :goto_9
    if-eqz v9, :cond_e

    .line 2595
    const/4 v12, 0x1

    .line 2597
    :cond_e
    :try_start_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x7db

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    if-nez v26, :cond_f

    .line 2599
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2600
    const/4 v13, 0x1

    .line 2602
    :cond_f
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 2608
    const v15, 0x480001

    .line 2612
    .local v15, mask:I
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    .line 2613
    .local v19, sa:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const v27, -0x480002

    and-int v26, v26, v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const v28, 0x480001

    and-int v27, v27, v28

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2671
    .end local v15           #mask:I
    .end local v19           #sa:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #surface:Landroid/view/Surface;
    :cond_10
    :goto_a
    if-eqz v12, :cond_11

    .line 2673
    const/16 v26, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 2674
    const/4 v13, 0x0

    .line 2681
    :cond_11
    const/4 v5, 0x0

    .line 2683
    .local v5, assignLayers:Z
    if-eqz v13, :cond_13

    .line 2684
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v26

    if-nez v26, :cond_12

    if-eqz v9, :cond_13

    .line 2690
    :cond_12
    const/4 v5, 0x1

    .line 2693
    :cond_13
    if-eqz v23, :cond_14

    .line 2694
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v26

    and-int/lit8 v26, v26, 0x2

    if-eqz v26, :cond_14

    .line 2695
    const/4 v5, 0x1

    .line 2699
    :cond_14
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2700
    move/from16 v0, p7

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    .line 2701
    if-eqz v5, :cond_15

    .line 2702
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 2704
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v7

    .line 2705
    .local v7, configChanged:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2706
    if-eqz v9, :cond_16

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    move/from16 v26, v0

    if-eqz v26, :cond_16

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/Display;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/Display;->getHeight()I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 2710
    :cond_16
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_17

    .line 2711
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2713
    :cond_17
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2714
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2715
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2727
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    move v14, v0

    .line 2729
    .local v14, inTouchMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 2730
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2732
    if-eqz v7, :cond_18

    .line 2733
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 2736
    :cond_18
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2738
    if-eqz v14, :cond_2c

    const/16 v25, 0x1

    :goto_b
    if-eqz v9, :cond_2d

    const/16 v26, 0x2

    :goto_c
    or-int v25, v25, v26

    goto/16 :goto_0

    .line 2500
    .end local v5           #assignLayers:Z
    .end local v7           #configChanged:Z
    .end local v12           #focusMayChange:Z
    .end local v13           #imMayMove:Z
    .end local v14           #inTouchMode:Z
    .end local v16           #oldVisibility:I
    .end local v20           #scaledWindow:Z
    .end local v23           #wallpaperMayMove:Z
    :cond_19
    const/16 v26, 0x0

    move/from16 v20, v26

    goto/16 :goto_1

    .line 2506
    .restart local v20       #scaledWindow:Z
    :cond_1a
    const/high16 v26, 0x3f80

    goto/16 :goto_2

    .line 2508
    :cond_1b
    const/high16 v26, 0x3f80

    goto/16 :goto_3

    .line 2511
    :cond_1c
    const/high16 v26, 0x3f80

    :try_start_3
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    goto/16 :goto_4

    .line 2730
    .end local v6           #attrChanges:I
    .end local v11           #flagChanges:I
    .end local v20           #scaledWindow:Z
    .end local v24           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v26

    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v26

    .line 2514
    .restart local v6       #attrChanges:I
    .restart local v11       #flagChanges:I
    .restart local v20       #scaledWindow:Z
    .restart local v24       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1d
    const/16 v26, 0x0

    move/from16 v13, v26

    goto/16 :goto_5

    .line 2518
    .restart local v13       #imMayMove:Z
    :cond_1e
    const/16 v26, 0x0

    move/from16 v12, v26

    goto/16 :goto_6

    .line 2522
    .restart local v12       #focusMayChange:Z
    :cond_1f
    const/16 v26, 0x0

    move/from16 v23, v26

    goto/16 :goto_7

    .line 2530
    .restart local v16       #oldVisibility:I
    .restart local v23       #wallpaperMayMove:Z
    :cond_20
    const/16 v26, 0x0

    move/from16 v9, v26

    goto/16 :goto_8

    .line 2583
    .restart local v21       #surface:Landroid/view/Surface;
    :cond_21
    :try_start_4
    invoke-virtual/range {p12 .. p12}, Landroid/view/Surface;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_9

    .line 2585
    .end local v21           #surface:Landroid/view/Surface;
    :catch_0
    move-exception v26

    move-object/from16 v10, v26

    .line 2586
    .local v10, e:Ljava/lang/Exception;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 2588
    const-string v26, "WindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception thrown when creating surface for client "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2591
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2592
    const/16 v26, 0x0

    monitor-exit v25

    move/from16 v25, v26

    goto/16 :goto_0

    .line 2616
    .end local v10           #e:Ljava/lang/Exception;
    :cond_22
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2617
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_25

    .line 2623
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move/from16 v26, v0

    if-eqz v26, :cond_23

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-eqz v26, :cond_25

    .line 2626
    :cond_23
    const/16 v22, 0x2002

    .line 2627
    .local v22, transit:I
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    .line 2628
    const/16 v22, 0x5

    .line 2630
    :cond_24
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-nez v26, :cond_27

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->isWinVisibleLw()Z

    move-result v26

    if-eqz v26, :cond_27

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v26

    if-eqz v26, :cond_27

    .line 2632
    const/4 v12, 0x1

    .line 2633
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2653
    .end local v22           #transit:I
    :cond_25
    :goto_d
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_26

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x1000

    and-int v26, v26, v27

    if-eqz v26, :cond_26

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2b

    .line 2660
    :cond_26
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    .line 2661
    invoke-virtual/range {p12 .. p12}, Landroid/view/Surface;->release()V

    goto/16 :goto_a

    .line 2634
    .restart local v22       #transit:I
    :cond_27
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v26

    if-eqz v26, :cond_28

    .line 2637
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    goto :goto_d

    .line 2638
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_29

    .line 2642
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2643
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    goto :goto_d

    .line 2645
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2a

    .line 2646
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2648
    :cond_2a
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V

    goto :goto_d

    .line 2663
    .end local v22           #transit:I
    :cond_2b
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 2666
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReportDestroySurface:Z

    .line 2667
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_a

    .line 2738
    .restart local v5       #assignLayers:Z
    .restart local v7       #configChanged:Z
    .restart local v14       #inTouchMode:Z
    :cond_2c
    const/16 v25, 0x0

    goto/16 :goto_b

    :cond_2d
    const/16 v26, 0x0

    goto/16 :goto_c
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .locals 14
    .parameter "token"

    .prologue
    const/4 v13, -0x1

    .line 4013
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "removeAppToken()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4015
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4018
    :cond_0
    const/4 v1, 0x0

    .line 4019
    .local v1, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v11, 0x0

    .line 4020
    .local v11, startingToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v7, 0x0

    .line 4022
    .local v7, delayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4023
    .local v9, origId:J
    iget-object v12, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 4024
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowToken;

    .line 4025
    .local v6, basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4026
    if-eqz v6, :cond_9

    iget-object v1, v6, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_9

    .line 4028
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    move-result v7

    .line 4029
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 4030
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4031
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->waitingToShow:Z

    .line 4032
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4033
    const/4 v7, 0x1

    .line 4043
    :cond_1
    :goto_0
    if-eqz v7, :cond_8

    .line 4045
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4053
    :goto_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4054
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v0, v1, :cond_2

    .line 4055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 4056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    .line 4058
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    .line 4059
    iget-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v0, :cond_3

    .line 4060
    move-object v11, v1

    .line 4062
    :cond_3
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 4063
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v0, v1, :cond_4

    .line 4065
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 4066
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 4067
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/WindowManagerService$InputMonitor;->setFocusedAppLw(Lcom/android/server/WindowManagerService$AppWindowToken;)V

    .line 4073
    :cond_4
    :goto_2
    if-nez v7, :cond_5

    if-eqz v1, :cond_5

    .line 4074
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 4076
    :cond_5
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4077
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4079
    if-eqz v11, :cond_6

    .line 4082
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v11}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4083
    .local v8, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v0, v8}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4085
    .end local v8           #m:Landroid/os/Message;
    :cond_6
    return-void

    .line 4034
    :cond_7
    :try_start_1
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v13, :cond_1

    .line 4035
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4036
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->waitingToHide:Z

    .line 4037
    const/4 v7, 0x1

    goto :goto_0

    .line 4050
    :cond_8
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 4051
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    goto :goto_1

    .line 4076
    .end local v6           #basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4070
    .restart local v6       #basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_9
    :try_start_2
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    .locals 3
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2079
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2080
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 2081
    .local v0, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v0, :cond_0

    .line 2082
    monitor-exit v1

    .line 2086
    :goto_0
    return-void

    .line 2084
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/WindowManagerService;->removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2085
    monitor-exit v1

    goto :goto_0

    .end local v0           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeWindowChangeListener(Lcom/android/server/WindowManagerService$WindowChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 5288
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5289
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5290
    monitor-exit v0

    .line 5291
    return-void

    .line 5290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 8
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2096
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2098
    .local v0, origId:J
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->disposeInputChannel()V

    .line 2110
    const/4 v3, 0x0

    .line 2115
    .local v3, wasVisible:Z
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2118
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2120
    const/16 v2, 0x2002

    .line 2121
    .local v2, transit:I
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v7, :cond_0

    .line 2122
    const/4 v2, 0x5

    .line 2125
    :cond_0
    invoke-direct {p0, p2, v2, v6}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2126
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2129
    .end local v2           #transit:I
    :cond_1
    iget-boolean v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2132
    :cond_2
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2133
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    .line 2134
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2135
    invoke-direct {p0, v7}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2136
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2137
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v4, :cond_3

    .line 2138
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2141
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2156
    :goto_0
    return-void

    .line 2146
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2149
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v4

    iget v5, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    if-eq v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2152
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2154
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .locals 12
    .parameter "token"

    .prologue
    .line 3069
    const-string v8, "android.permission.MANAGE_APP_TOKENS"

    const-string v9, "removeWindowToken()"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3071
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3074
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3075
    .local v4, origId:J
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3076
    :try_start_0
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 3077
    .local v7, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3078
    if-eqz v7, :cond_7

    .line 3079
    const/4 v2, 0x0

    .line 3080
    .local v2, delayed:Z
    iget-boolean v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v9, :cond_5

    .line 3081
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 3083
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3084
    .local v0, N:I
    const/4 v1, 0x0

    .line 3086
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 3087
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 3089
    .local v6, win:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3090
    const/4 v2, 0x1

    .line 3093
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3094
    const/16 v9, 0x2002

    const/4 v10, 0x0

    invoke-direct {p0, v6, v9, v10}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 3096
    const/4 v1, 0x1

    .line 3086
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3100
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    if-eqz v1, :cond_4

    .line 3101
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3102
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3103
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3106
    :cond_4
    if-eqz v2, :cond_6

    .line 3107
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3113
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v9}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 3117
    .end local v2           #delayed:Z
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3118
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3119
    return-void

    .line 3108
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v2       #delayed:Z
    .restart local v3       #i:I
    :cond_6
    :try_start_1
    iget v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v10, 0x7dd

    if-ne v9, v10, :cond_5

    .line 3109
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3117
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #delayed:Z
    .end local v3           #i:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 3115
    .restart local v7       #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_7
    :try_start_2
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempted to remove non-existing token: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method requestAnimationLocked(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 10288
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    if-nez v0, :cond_0

    .line 10289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    .line 10290
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10292
    :cond_0
    return-void
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 1
    .parameter "keyCode"
    .parameter "componentName"
    .parameter "request"

    .prologue
    .line 11245
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .locals 3
    .parameter "_token"

    .prologue
    .line 5782
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "resumeKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5784
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5787
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5788
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 5789
    .local v0, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_1

    .line 5790
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v2, v0}, Lcom/android/server/WindowManagerService$InputMonitor;->resumeDispatchingLw(Lcom/android/server/WindowManagerService$WindowToken;)V

    .line 5792
    :cond_1
    monitor-exit v1

    .line 5793
    return-void

    .line 5792
    .end local v0           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method sendNewConfiguration()V
    .locals 2

    .prologue
    .line 5349
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5352
    :goto_0
    return-void

    .line 5350
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendWindowWallpaperCommandLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 12
    .parameter "window"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne p1, v0, :cond_3

    .line 2438
    :cond_0
    move/from16 v9, p7

    .line 2439
    .local v9, doWait:Z
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2440
    .local v7, curTokenIndex:I
    :cond_1
    if-lez v7, :cond_2

    .line 2441
    add-int/lit8 v7, v7, -0x1

    .line 2442
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2443
    .local v10, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, v10, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2444
    .local v8, curWallpaperIndex:I
    :goto_0
    if-lez v8, :cond_1

    .line 2445
    add-int/lit8 v8, v8, -0x1

    .line 2446
    iget-object v0, v10, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/WindowManagerService$WindowState;

    .line 2448
    .local v11, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :try_start_0
    iget-object v0, v11, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2451
    const/16 p7, 0x0

    goto :goto_0

    .line 2457
    .end local v8           #curWallpaperIndex:I
    .end local v10           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v11           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    if-eqz v9, :cond_3

    .line 2462
    .end local v7           #curTokenIndex:I
    .end local v9           #doWait:Z
    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 2452
    .restart local v7       #curTokenIndex:I
    .restart local v8       #curWallpaperIndex:I
    .restart local v9       #doWait:Z
    .restart local v10       #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v11       #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAnimationScale(IF)V
    .locals 2
    .parameter "which"
    .parameter "scale"

    .prologue
    .line 4501
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4503
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4506
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    const/4 p2, 0x0

    .line 4508
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 4509
    packed-switch p1, :pswitch_data_0

    .line 4515
    :goto_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4516
    return-void

    .line 4507
    :cond_2
    const/high16 v0, 0x41a0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/high16 p2, 0x41a0

    goto :goto_0

    .line 4510
    :pswitch_0
    invoke-static {p2}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_1

    .line 4511
    :pswitch_1
    invoke-static {p2}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_1

    .line 4509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .locals 3
    .parameter "scales"

    .prologue
    const/4 v2, 0x1

    .line 4519
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4521
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4524
    :cond_0
    if-eqz p1, :cond_2

    .line 4525
    array-length v0, p1

    if-lt v0, v2, :cond_1

    .line 4526
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 4528
    :cond_1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 4529
    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 4534
    :cond_2
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4535
    return-void
.end method

.method public setAppGroupId(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "token"
    .parameter "groupId"

    .prologue
    .line 3167
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppStartingIcon()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3169
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3172
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3173
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3174
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_1

    .line 3175
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set group id of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    monitor-exit v1

    .line 3180
    :goto_0
    return-void

    .line 3178
    :cond_1
    iput p2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 3179
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .locals 5
    .parameter "token"
    .parameter "requestedOrientation"

    .prologue
    .line 3374
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppOrientation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3376
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3379
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3380
    :try_start_0
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3381
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_1

    .line 3382
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    monitor-exit v1

    .line 3388
    :goto_0
    return-void

    .line 3386
    :cond_1
    iput p2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3387
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V
    .locals 18
    .parameter "token"
    .parameter "pkg"
    .parameter "theme"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "transferFrom"
    .parameter "createIfNeeded"

    .prologue
    .line 3552
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "setAppStartingIcon()"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3554
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3557
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3562
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v16

    .line 3563
    .local v16, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v16, :cond_1

    .line 3564
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    monitor-exit v17

    .line 3706
    :goto_0
    return-void

    .line 3571
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v4, v0

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v4, v0

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3572
    :cond_2
    monitor-exit v17

    goto :goto_0

    .line 3705
    .end local v16           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3575
    .restart local v16       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3
    :try_start_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v4, v0

    if-eqz v4, :cond_4

    .line 3576
    monitor-exit v17

    goto :goto_0

    .line 3579
    :cond_4
    if-eqz p7, :cond_c

    .line 3580
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v15

    .line 3581
    .local v15, ttoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v15, :cond_c

    .line 3582
    iget-object v14, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3583
    .local v14, startingWindow:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v14, :cond_b

    .line 3584
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    move v4, v0

    if-eqz v4, :cond_5

    .line 3588
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3593
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3597
    .local v12, origId:J
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3598
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 3599
    move-object v0, v14

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3600
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3601
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 3602
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3603
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 3604
    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 3605
    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 3606
    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3610
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 3611
    iget-object v4, v15, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3612
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3613
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 3620
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-eqz v4, :cond_6

    .line 3621
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 3623
    :cond_6
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v4, :cond_7

    .line 3624
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    .line 3626
    :cond_7
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v4, :cond_8

    .line 3627
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 3628
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 3629
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 3631
    :cond_8
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move v4, v0

    iget-boolean v5, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eq v4, v5, :cond_9

    .line 3632
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 3633
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 3635
    :cond_9
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_a

    .line 3636
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3637
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 3638
    iget v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 3639
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3640
    const/4 v4, 0x0

    iput v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 3641
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 3642
    invoke-virtual {v15}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 3645
    :cond_a
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3646
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3647
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3648
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3649
    monitor-exit v17

    goto/16 :goto_0

    .line 3650
    .end local v12           #origId:J
    :cond_b
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v4, :cond_c

    .line 3656
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3657
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3658
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 3659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    const/4 v5, 0x5

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3663
    .local v11, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    invoke-virtual {v4, v11}, Lcom/android/server/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3664
    monitor-exit v17

    goto/16 :goto_0

    .line 3671
    .end local v11           #m:Landroid/os/Message;
    .end local v14           #startingWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v15           #ttoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_c
    if-nez p8, :cond_d

    .line 3672
    monitor-exit v17

    goto/16 :goto_0

    .line 3679
    :cond_d
    if-eqz p3, :cond_10

    .line 3680
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    move-object v0, v4

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v10

    .line 3682
    .local v10, ent:Lcom/android/server/AttributeCache$Entry;
    iget-object v4, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3684
    monitor-exit v17

    goto/16 :goto_0

    .line 3686
    :cond_e
    iget-object v4, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3688
    monitor-exit v17

    goto/16 :goto_0

    .line 3690
    :cond_f
    iget-object v4, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3692
    monitor-exit v17

    goto/16 :goto_0

    .line 3696
    .end local v10           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_10
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 3697
    new-instance v4, Lcom/android/server/WindowManagerService$StartingData;

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/android/server/WindowManagerService$StartingData;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;II)V

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    const/4 v5, 0x5

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3704
    .restart local v11       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    invoke-virtual {v4, v11}, Lcom/android/server/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3705
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 9
    .parameter "token"
    .parameter "visible"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3822
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppVisibility()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3824
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3829
    :cond_0
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3830
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v1

    .line 3831
    .local v1, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v1, :cond_1

    .line 3832
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    monitor-exit v8

    .line 3905
    :goto_0
    return-void

    .line 3850
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v5, :cond_6

    .line 3853
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-eq v0, p2, :cond_2

    .line 3854
    monitor-exit v8

    goto :goto_0

    .line 3904
    .end local v1           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3856
    .restart local v1       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2
    if-nez p2, :cond_4

    move v0, v4

    :goto_1
    :try_start_1
    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 3860
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->setDummyAnimation()V

    .line 3861
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3862
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3863
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->waitingToHide:Z

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->waitingToShow:Z

    .line 3864
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 3865
    if-eqz p2, :cond_5

    .line 3866
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3867
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    .line 3868
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 3873
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-eqz v0, :cond_3

    .line 3874
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 3875
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->waitingToShow:Z

    .line 3877
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eqz v0, :cond_3

    .line 3884
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 3885
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 3897
    :cond_3
    :goto_2
    monitor-exit v8

    goto :goto_0

    :cond_4
    move v0, v3

    .line 3856
    goto :goto_1

    .line 3889
    :cond_5
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3893
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v0, :cond_3

    .line 3894
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->waitingToHide:Z

    goto :goto_2

    .line 3900
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3901
    .local v6, origId:J
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 3902
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 3903
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3904
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 3709
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppWillBeHidden()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3711
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3716
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3717
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3718
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_1

    .line 3719
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set will be hidden of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    monitor-exit v1

    .line 3724
    :goto_0
    return-void

    .line 3722
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 3723
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setCurrentDockState(I)V
    .locals 0
    .parameter "dockState"

    .prologue
    .line 4740
    sput p1, Lcom/android/server/WindowManagerService;->mDockState:I

    .line 4741
    return-void
.end method

.method public setEventDispatching(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 5796
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "resumeKeyDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5798
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5801
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5802
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/WindowManagerService$InputMonitor;->setEventDispatchingLw(Z)V

    .line 5803
    monitor-exit v0

    .line 5804
    return-void

    .line 5803
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .locals 8
    .parameter "token"
    .parameter "moveFocusNow"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3402
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "setFocusedApp()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3404
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3407
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3408
    const/4 v0, 0x0

    .line 3409
    .local v0, changed:Z
    if-nez p1, :cond_4

    .line 3411
    :try_start_0
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_3

    move v0, v7

    .line 3412
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3413
    if-eqz v0, :cond_1

    .line 3414
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$InputMonitor;->setFocusedAppLw(Lcom/android/server/WindowManagerService$AppWindowToken;)V

    .line 3418
    :cond_1
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->updateTopActivity(Landroid/content/ComponentName;)V

    .line 3438
    :goto_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 3439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3440
    .local v2, origId:J
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3441
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3443
    .end local v2           #origId:J
    :cond_2
    monitor-exit v4

    .line 3444
    :goto_2
    return-void

    :cond_3
    move v0, v6

    .line 3411
    goto :goto_0

    .line 3421
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v1

    .line 3422
    .local v1, newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v1, :cond_5

    .line 3423
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    monitor-exit v4

    goto :goto_2

    .line 3443
    .end local v1           #newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3426
    .restart local v1       #newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v5, v1, :cond_7

    move v0, v7

    .line 3427
    :goto_3
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3429
    if-eqz v0, :cond_6

    .line 3430
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v5, v1}, Lcom/android/server/WindowManagerService$InputMonitor;->setFocusedAppLw(Lcom/android/server/WindowManagerService$AppWindowToken;)V

    .line 3434
    :cond_6
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/WindowManagerService;->convertActivityResultToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->updateTopActivity(Landroid/content/ComponentName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_7
    move v0, v6

    .line 3426
    goto :goto_3
.end method

.method setHoldScreenLocked(Z)V
    .locals 2
    .parameter "holding"

    .prologue
    .line 10276
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 10277
    .local v0, state:Z
    if-eq p1, v0, :cond_0

    .line 10278
    if-eqz p1, :cond_1

    .line 10279
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10285
    :cond_0
    :goto_0
    return-void

    .line 10281
    :cond_1
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStoppedLw()V

    .line 10282
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public setInTouchMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 4721
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4722
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 4723
    monitor-exit v0

    .line 4724
    return-void

    .line 4723
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .locals 5
    .parameter "adj"

    .prologue
    .line 1105
    iput p1, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    .line 1106
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1107
    .local v2, imw:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_0

    .line 1108
    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 1111
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1112
    .local v3, wi:I
    :goto_0
    if-lez v3, :cond_0

    .line 1113
    add-int/lit8 v3, v3, -0x1

    .line 1114
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    .line 1115
    .local v0, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_0

    .line 1120
    .end local v0           #cw:Lcom/android/server/WindowManagerService$WindowState;
    .end local v3           #wi:I
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1121
    .local v1, di:I
    :goto_1
    if-lez v1, :cond_1

    .line 1122
    add-int/lit8 v1, v1, -0x1

    .line 1123
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imw:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 1124
    .restart local v2       #imw:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_1

    .line 1128
    :cond_1
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "session"
    .parameter "client"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"

    .prologue
    .line 2381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2383
    .local v0, origId:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2384
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2385
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_0

    .line 2386
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    .line 2387
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2388
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2389
    iput p3, v2, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    .line 2390
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2391
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2393
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2395
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2397
    return-void

    .line 2393
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2395
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMouseCursor(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 4956
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/WindowManagerService;->mMx:I

    if-ne v2, p1, :cond_1

    iget v2, p0, Lcom/android/server/WindowManagerService;->mMy:I

    if-ne v2, p2, :cond_1

    .line 4992
    :cond_0
    :goto_0
    return-void

    .line 4960
    :cond_1
    if-eq p1, v3, :cond_2

    if-ne p2, v3, :cond_5

    .line 4961
    :cond_2
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/WindowManagerService;->mMx:I

    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/WindowManagerService;->mMy:I

    .line 4968
    :goto_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4969
    :try_start_0
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4971
    if-eq p1, v3, :cond_3

    if-ne p2, v3, :cond_6

    .line 4972
    :cond_3
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mShowMouse:Z

    if-eqz v3, :cond_4

    .line 4973
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V

    .line 4974
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/WindowManagerService;->mShowMouse:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4989
    :cond_4
    :goto_2
    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 4991
    :goto_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4963
    :cond_5
    iput p1, p0, Lcom/android/server/WindowManagerService;->mMx:I

    iput p2, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto :goto_1

    .line 4978
    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 4979
    .local v1, top:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/WindowManagerService;->mMx:I

    iget v5, p0, Lcom/android/server/WindowManagerService;->mMy:I

    invoke-virtual {v3, v4, v5}, Landroid/view/Surface;->setPosition(II)V

    .line 4980
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    iget v4, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setLayer(I)V

    .line 4981
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mShowMouse:Z

    if-nez v3, :cond_4

    .line 4982
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->show()V

    .line 4983
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WindowManagerService;->mShowMouse:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 4986
    .end local v1           #top:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 4987
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v3, "WindowManager"

    const-string v4, "Failure showing mouse surface"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4989
    :try_start_5
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_3

    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v3

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 3361
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setNewConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3363
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3366
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3367
    :try_start_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 3368
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 3369
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3370
    monitor-exit v0

    .line 3371
    return-void

    .line 3370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRotation(IZI)V
    .locals 3
    .parameter "rotation"
    .parameter "alwaysSendConfiguration"
    .parameter "animFlags"

    .prologue
    const-string v2, "OrientationDebug"

    .line 4728
    const-string v0, "OrientationDebug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[wms] in setRotation() rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alwaysSendConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " animFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "setRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4731
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4734
    :cond_0
    const-string v0, "OrientationDebug"

    const-string v0, "[wms] in setRotation() now call setRotationUnchecked()"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->setRotationUnchecked(IZI)V

    .line 4736
    return-void
.end method

.method public setRotationUnchecked(IZI)V
    .locals 5
    .parameter "rotation"
    .parameter "alwaysSendConfiguration"
    .parameter "animFlags"

    .prologue
    .line 4753
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4755
    .local v1, origId:J
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4756
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/WindowManagerService;->setRotationUncheckedLocked(II)Z

    move-result v0

    .line 4757
    .local v0, changed:Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4759
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 4760
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 4763
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4764
    return-void

    .line 4757
    .end local v0           #changed:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setRotationUncheckedLocked(II)Z
    .locals 13
    .parameter "rotation"
    .parameter "animFlags"

    .prologue
    .line 4776
    const/16 v9, -0x3e8

    if-ne p1, v9, :cond_4

    .line 4777
    iget p1, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 4783
    :goto_0
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v10, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    iget v11, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    iget-boolean v12, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    invoke-interface {v9, v10, v11, v12}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(IIZ)I

    move-result p1

    .line 4786
    iget-boolean v9, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-eq v9, p1, :cond_5

    const/4 v9, 0x1

    move v0, v9

    .line 4788
    .local v0, changed:Z
    :goto_1
    if-eqz v0, :cond_f

    .line 4795
    iget v4, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    .line 4796
    .local v4, oldRotation:I
    iput p1, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    .line 4797
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 4798
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 4799
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x7d0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4801
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 4802
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4803
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 4804
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting rotation to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", animFlags="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4805
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p1}, Lcom/android/server/InputManager;->setDisplayOrientation(II)V

    .line 4806
    iget-boolean v9, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v9, :cond_0

    .line 4807
    const/4 v9, 0x0

    invoke-static {v9, p1, p2}, Landroid/view/Surface;->setOrientation(III)V

    .line 4811
    :cond_0
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget-boolean v9, p0, Lcom/android/server/WindowManagerService;->mShowMouse:Z

    if-eqz v9, :cond_2

    .line 4813
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 4814
    .local v8, width:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 4815
    .local v2, height:I
    packed-switch v4, :pswitch_data_0

    .line 4882
    :cond_1
    :goto_2
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    if-eqz v9, :cond_2

    .line 4883
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 4884
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 4886
    .local v6, top:Lcom/android/server/WindowManagerService$WindowState;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    iget v10, p0, Lcom/android/server/WindowManagerService;->mMx:I

    iget v11, p0, Lcom/android/server/WindowManagerService;->mMy:I

    invoke-virtual {v9, v10, v11}, Landroid/view/Surface;->setPosition(II)V

    .line 4887
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    iget v10, v6, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/Surface;->setLayer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4891
    :goto_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 4897
    .end local v2           #height:I
    .end local v6           #top:Lcom/android/server/WindowManagerService$WindowState;
    .end local v8           #width:I
    :cond_2
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int v3, v9, v10

    .local v3, i:I
    :goto_4
    if-ltz v3, :cond_e

    .line 4898
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 4899
    .local v7, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v9, :cond_3

    .line 4900
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 4897
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 4779
    .end local v0           #changed:Z
    .end local v3           #i:I
    .end local v4           #oldRotation:I
    .end local v7           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    iput p1, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 4780
    iput p2, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    goto/16 :goto_0

    .line 4786
    :cond_5
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1

    .line 4817
    .restart local v0       #changed:Z
    .restart local v2       #height:I
    .restart local v4       #oldRotation:I
    .restart local v8       #width:I
    :pswitch_0
    const/4 v9, 0x1

    if-ne p1, v9, :cond_6

    .line 4818
    iget v5, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4819
    .local v5, temp:I
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4820
    sub-int v9, v2, v5

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto :goto_2

    .line 4822
    .end local v5           #temp:I
    :cond_6
    const/4 v9, 0x2

    if-ne p1, v9, :cond_7

    .line 4823
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    sub-int v9, v8, v9

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4824
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    sub-int v9, v2, v9

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto :goto_2

    .line 4826
    :cond_7
    const/4 v9, 0x3

    if-ne p1, v9, :cond_1

    .line 4827
    iget v5, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4828
    .restart local v5       #temp:I
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    sub-int v9, v8, v9

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4829
    iput v5, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto :goto_2

    .line 4833
    .end local v5           #temp:I
    :pswitch_1
    if-nez p1, :cond_8

    .line 4834
    iget v5, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4835
    .restart local v5       #temp:I
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    sub-int v9, v8, v9

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4836
    iput v5, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto/16 :goto_2

    .line 4838
    .end local v5           #temp:I
    :cond_8
    const/4 v9, 0x2

    if-ne p1, v9, :cond_9

    .line 4839
    iget v5, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4840
    .restart local v5       #temp:I
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4841
    sub-int v9, v2, v5

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto/16 :goto_2

    .line 4843
    .end local v5           #temp:I
    :cond_9
    const/4 v9, 0x3

    if-ne p1, v9, :cond_1

    .line 4844
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    sub-int v9, v8, v9

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4845
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    sub-int v9, v2, v9

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto/16 :goto_2

    .line 4849
    :pswitch_2
    if-nez p1, :cond_a

    .line 4850
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    sub-int v9, v8, v9

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4851
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    sub-int v9, v2, v9

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto/16 :goto_2

    .line 4853
    :cond_a
    const/4 v9, 0x1

    if-ne p1, v9, :cond_b

    .line 4854
    iget v5, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4855
    .restart local v5       #temp:I
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    sub-int v9, v8, v9

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4856
    iput v5, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto/16 :goto_2

    .line 4858
    .end local v5           #temp:I
    :cond_b
    const/4 v9, 0x3

    if-ne p1, v9, :cond_1

    .line 4859
    iget v5, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4860
    .restart local v5       #temp:I
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4861
    sub-int v9, v2, v5

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto/16 :goto_2

    .line 4865
    .end local v5           #temp:I
    :pswitch_3
    if-nez p1, :cond_c

    .line 4866
    iget v5, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4867
    .restart local v5       #temp:I
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4868
    sub-int v9, v2, v5

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto/16 :goto_2

    .line 4870
    .end local v5           #temp:I
    :cond_c
    const/4 v9, 0x1

    if-ne p1, v9, :cond_d

    .line 4871
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    sub-int v9, v8, v9

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4872
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    sub-int v9, v2, v9

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto/16 :goto_2

    .line 4874
    :cond_d
    const/4 v9, 0x2

    if-ne p1, v9, :cond_1

    .line 4875
    iget v5, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4876
    .restart local v5       #temp:I
    iget v9, p0, Lcom/android/server/WindowManagerService;->mMy:I

    sub-int v9, v8, v9

    iput v9, p0, Lcom/android/server/WindowManagerService;->mMx:I

    .line 4877
    iput v5, p0, Lcom/android/server/WindowManagerService;->mMy:I

    goto/16 :goto_2

    .line 4888
    .end local v5           #temp:I
    .restart local v6       #top:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 4889
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v9, "WindowManager"

    const-string v10, "Failure showing mouse surface when rotated"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 4891
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v9

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v9

    .line 4903
    .end local v2           #height:I
    .end local v6           #top:Lcom/android/server/WindowManagerService$WindowState;
    .end local v8           #width:I
    .restart local v3       #i:I
    :cond_e
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int v3, v9, v10

    .end local p2
    :goto_5
    if-ltz v3, :cond_f

    .line 4905
    :try_start_2
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/IRotationWatcher;

    invoke-interface {p2, p1}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4903
    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 4911
    .end local v3           #i:I
    .end local v4           #oldRotation:I
    :cond_f
    return v0

    .line 4906
    .restart local v3       #i:I
    .restart local v4       #oldRotation:I
    :catch_1
    move-exception v9

    goto :goto_6

    .line 4815
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z
    .locals 9
    .parameter "wtoken"
    .parameter "lp"
    .parameter "visible"
    .parameter "transit"
    .parameter "performLayout"

    .prologue
    .line 3728
    const/4 v2, 0x0

    .line 3730
    .local v2, delayed:Z
    iget-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-ne v7, p3, :cond_0

    .line 3731
    if-nez p3, :cond_4

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 3732
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 3735
    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 3736
    iget-boolean v7, p1, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-ne v7, p3, :cond_c

    .line 3737
    iget-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3738
    .local v0, N:I
    const/4 v1, 0x0

    .line 3743
    .local v1, changed:Z
    const/4 v4, 0x0

    .line 3745
    .local v4, runningAppAnimation:Z
    const/4 v7, -0x1

    if-eq p4, v7, :cond_2

    .line 3746
    iget-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v7, v8, :cond_1

    .line 3747
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3749
    :cond_1
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z

    .line 3750
    const/4 v1, 0x1

    .line 3751
    iget-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_2

    .line 3752
    const/4 v4, 0x1

    move v2, v4

    .line 3756
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_a

    .line 3757
    iget-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 3758
    .local v6, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v6, v7, :cond_5

    .line 3756
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3731
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 3762
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3763
    const/4 v2, 0x1

    .line 3768
    :cond_6
    if-eqz p3, :cond_8

    .line 3769
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3770
    if-nez v4, :cond_7

    .line 3771
    const/16 v7, 0x1001

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 3774
    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    .line 3776
    :cond_8
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3777
    if-nez v4, :cond_9

    .line 3778
    const/16 v7, 0x2002

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 3781
    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    .line 3785
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_a
    if-nez p3, :cond_e

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 3786
    if-nez p3, :cond_f

    .line 3787
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v8}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 3803
    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    .line 3804
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3805
    if-eqz p5, :cond_11

    .line 3806
    const/4 v7, 0x3

    invoke-direct {p0, v7}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3807
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3814
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    :cond_c
    :goto_5
    iget-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_d

    .line 3815
    const/4 v2, 0x1

    .line 3818
    :cond_d
    return v2

    .line 3785
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_3

    .line 3791
    :cond_f
    iget-object v5, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3792
    .local v5, swin:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v5, :cond_b

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v7, :cond_10

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-eqz v7, :cond_b

    .line 3794
    :cond_10
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    .line 3795
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_4

    .line 3809
    .end local v5           #swin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_11
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v7}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    goto :goto_5
.end method

.method setWallpaperAnimLayerAdjustmentLocked(I)V
    .locals 5
    .parameter "adj"

    .prologue
    .line 1658
    iput p1, p0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1659
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1660
    .local v0, curTokenIndex:I
    :cond_0
    if-lez v0, :cond_1

    .line 1661
    add-int/lit8 v0, v0, -0x1

    .line 1662
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1663
    .local v2, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1664
    .local v1, curWallpaperIndex:I
    :goto_0
    if-lez v1, :cond_0

    .line 1665
    add-int/lit8 v1, v1, -0x1

    .line 1666
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 1667
    .local v3, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_0

    .line 1672
    .end local v1           #curWallpaperIndex:I
    .end local v2           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v3           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    return-void
.end method

.method public setWindowWallpaperPositionLocked(Lcom/android/server/WindowManagerService$WindowState;FFFF)V
    .locals 1
    .parameter "window"
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 2413
    iget v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 2414
    :cond_0
    iput p2, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    .line 2415
    iput p3, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    .line 2416
    iput p4, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    .line 2417
    iput p5, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    .line 2418
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2419
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2422
    :cond_1
    return-void
.end method

.method showSurfaceRobustlyLocked(Lcom/android/server/WindowManagerService$WindowState;)Z
    .locals 5
    .parameter "win"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 10304
    :try_start_0
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 10305
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 10306
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V

    .line 10307
    iget-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    if-eqz v1, :cond_0

    .line 10310
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    .line 10311
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mTurnOnScreen:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v1, v2

    .line 10321
    :goto_0
    return v1

    .line 10315
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 10316
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure showing surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10319
    const-string v1, "show"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    move v1, v4

    .line 10321
    goto :goto_0
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .locals 7
    .parameter "token"
    .parameter "configChanges"

    .prologue
    .line 3971
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3973
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3976
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3977
    if-nez p2, :cond_1

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3979
    monitor-exit v3

    .line 3991
    :goto_0
    return-void

    .line 3982
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 3983
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v4, :cond_3

    .line 3984
    :cond_2
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    monitor-exit v3

    goto :goto_0

    .line 3990
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3987
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3988
    .local v0, origId:J
    invoke-virtual {p0, v2, p2}, Lcom/android/server/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V

    .line 3989
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3990
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V
    .locals 8
    .parameter "wtoken"
    .parameter "configChanges"

    .prologue
    const/16 v5, 0x11

    const/4 v7, 0x1

    .line 3951
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_1

    .line 3952
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-nez v3, :cond_0

    .line 3953
    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    .line 3954
    iget v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 3955
    iget v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v7, :cond_0

    .line 3956
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 3957
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3958
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3962
    :cond_0
    iget-object v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3963
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3964
    iget-object v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 3965
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    iput-boolean v7, v2, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    .line 3963
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3968
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    return-void
.end method

.method public startViewServer(I)Z
    .locals 6
    .parameter "port"

    .prologue
    const/4 v3, 0x0

    const-string v5, "WindowManager"

    const-string v4, "View server did not start"

    .line 5006
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 5035
    :goto_0
    return v1

    .line 5010
    :cond_0
    const-string v1, "android.permission.DUMP"

    const-string v2, "startViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 5011
    goto :goto_0

    .line 5014
    :cond_1
    const/16 v1, 0x400

    if-ge p1, v1, :cond_2

    move v1, v3

    .line 5015
    goto :goto_0

    .line 5018
    :cond_2
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v1, :cond_4

    .line 5019
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5021
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->start()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 5022
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 5023
    .local v0, e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v1, "View server did not start"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    move v1, v3

    .line 5026
    goto :goto_0

    .line 5030
    :cond_4
    :try_start_1
    new-instance v1, Lcom/android/server/ViewServer;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ViewServer;-><init>(Lcom/android/server/WindowManagerService;I)V

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    .line 5031
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->start()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 5032
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 5033
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v1, "View server did not start"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 5035
    goto :goto_0
.end method

.method public startVoiceCommandActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 11397
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->startVoiceCommandActivity(Landroid/content/Intent;)V

    .line 11398
    return-void
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "force"

    .prologue
    .line 3994
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3996
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3999
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4000
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 4001
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v4, :cond_2

    .line 4002
    :cond_1
    monitor-exit v3

    .line 4010
    :goto_0
    return-void

    .line 4004
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4007
    .local v0, origId:J
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4, p2}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 4008
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4009
    monitor-exit v3

    goto :goto_0

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public stopViewServer()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5052
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 5063
    :goto_0
    return v0

    .line 5056
    :cond_0
    const-string v0, "android.permission.DUMP"

    const-string v1, "stopViewServer"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 5057
    goto :goto_0

    .line 5060
    :cond_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v0, :cond_2

    .line 5061
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/ViewServer;->stop()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 5063
    goto :goto_0
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 6012
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemReady()V

    .line 6013
    return-void
.end method

.method unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V
    .locals 7
    .parameter "wtoken"
    .parameter "unfreezeSurfaceNow"
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3909
    iget-boolean v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-eqz v4, :cond_6

    .line 3912
    iget-object v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3913
    .local v0, N:I
    const/4 v2, 0x0

    .line 3914
    .local v2, unfrozeWindows:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3915
    iget-object v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 3916
    .local v3, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_1

    .line 3917
    iput-boolean v6, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    .line 3918
    iget-object v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_0

    .line 3919
    iput-boolean v5, v3, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 3921
    :cond_0
    const/4 v2, 0x1

    .line 3914
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3924
    .end local v3           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    if-nez p3, :cond_3

    if-eqz v2, :cond_4

    .line 3926
    :cond_3
    iput-boolean v6, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    .line 3927
    iget v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 3929
    :cond_4
    if-eqz p2, :cond_6

    .line 3930
    if-eqz v2, :cond_5

    .line 3931
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3932
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3934
    :cond_5
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 3937
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #unfrozeWindows:Z
    :cond_6
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 8
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    .line 3264
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3266
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3269
    :cond_0
    const/4 v0, 0x0

    .line 3270
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3272
    .local v2, ident:J
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3273
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3274
    if-eqz p2, :cond_1

    .line 3275
    invoke-virtual {p0, p2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v4

    .line 3277
    .local v4, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v4, :cond_1

    .line 3278
    const/16 v6, 0x80

    invoke-virtual {p0, v4, v6}, Lcom/android/server/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V

    .line 3282
    .end local v4           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3300
    :cond_2
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3302
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3303
    return-object v0

    .line 3284
    :cond_3
    if-eqz p1, :cond_2

    .line 3289
    :try_start_1
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 3290
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget v7, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v7, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 3291
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-static {p1, v6}, Landroid/app/MiuiThemeHelper;->copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V


    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;


    invoke-virtual {p0, v6}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3292
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 3293
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 3294
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3295
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 3296
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .end local v0           #config:Landroid/content/res/Configuration;
    .local v1, config:Landroid/content/res/Configuration;
    move-object v0, v1

    .end local v1           #config:Landroid/content/res/Configuration;
    .restart local v0       #config:Landroid/content/res/Configuration;
    goto :goto_0

    .line 3300
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method updateOrientationFromAppTokensLocked()Z
    .locals 6

    .prologue
    .line 3321
    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v4, :cond_0

    .line 3327
    const/4 v4, 0x0

    .line 3346
    :goto_0
    return v4

    .line 3330
    :cond_0
    const/4 v0, 0x0

    .line 3331
    .local v0, changed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3333
    .local v1, ident:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v3

    .line 3335
    .local v3, req:I
    iget v4, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    if-eq v3, v4, :cond_1

    .line 3336
    iput v3, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    .line 3339
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    .line 3340
    const/16 v4, -0x3e8

    iget v5, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    or-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->setRotationUncheckedLocked(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 3342
    const/4 v0, 0x1

    .line 3348
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v0

    .line 3346
    goto :goto_0

    .line 3348
    .end local v3           #req:I
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z
    .locals 20
    .parameter "wallpaperWin"
    .parameter "dw"
    .parameter "dh"
    .parameter "sync"

    .prologue
    .line 1676
    const/4 v11, 0x0

    .line 1677
    .local v11, changed:Z
    const/4 v13, 0x0

    .line 1678
    .local v13, rawChanged:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    move v3, v0

    move/from16 v16, v3

    .line 1679
    .local v16, wpx:F
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    move v3, v0

    move/from16 v17, v3

    .line 1680
    .local v17, wpxs:F
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int v10, v3, p2

    .line 1681
    .local v10, availw:I
    if-lez v10, :cond_b

    int-to-float v3, v10

    mul-float v3, v3, v16

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    move v12, v3

    .line 1682
    .local v12, offset:I
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    move v3, v0

    if-eq v3, v12, :cond_c

    const/4 v3, 0x1

    move v11, v3

    .line 1683
    :goto_3
    if-eqz v11, :cond_0

    .line 1686
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    .line 1688
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move v3, v0

    cmpl-float v3, v3, v16

    if-nez v3, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    move v3, v0

    cmpl-float v3, v3, v17

    if-eqz v3, :cond_2

    .line 1689
    :cond_1
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    .line 1690
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    .line 1691
    const/4 v13, 0x1

    .line 1694
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    move v3, v0

    move/from16 v18, v3

    .line 1695
    .local v18, wpy:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    move v3, v0

    move/from16 v19, v3

    .line 1696
    .local v19, wpys:F
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v9, v3, p3

    .line 1697
    .local v9, availh:I
    if-lez v9, :cond_f

    int-to-float v3, v9

    mul-float v3, v3, v18

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    move v12, v3

    .line 1698
    :goto_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    move v3, v0

    if-eq v3, v12, :cond_3

    .line 1701
    const/4 v11, 0x1

    .line 1702
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    .line 1704
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move v3, v0

    cmpl-float v3, v3, v18

    if-nez v3, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    move v3, v0

    cmpl-float v3, v3, v19

    if-eqz v3, :cond_5

    .line 1705
    :cond_4
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    .line 1706
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    .line 1707
    const/4 v13, 0x1

    .line 1710
    :cond_5
    if-eqz v13, :cond_8

    .line 1715
    if-eqz p4, :cond_6

    .line 1716
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    .line 1718
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    move v7, v0

    move/from16 v8, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 1721
    if-eqz p4, :cond_8

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 1723
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1724
    .local v14, start:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    move-wide v3, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    cmp-long v3, v3, v14

    if-gez v3, :cond_7

    .line 1729
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v3, v0

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1733
    :goto_7
    const-wide/16 v3, 0x96

    add-long/2addr v3, v14

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    .line 1735
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 1740
    :cond_7
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1747
    .end local v14           #start:J
    :cond_8
    :goto_8
    return v11

    .line 1678
    .end local v9           #availh:I
    .end local v10           #availw:I
    .end local v12           #offset:I
    .end local v16           #wpx:F
    .end local v17           #wpxs:F
    .end local v18           #wpy:F
    .end local v19           #wpys:F
    :cond_9
    const/high16 v3, 0x3f00

    move/from16 v16, v3

    goto/16 :goto_0

    .line 1679
    .restart local v16       #wpx:F
    :cond_a
    const/high16 v3, -0x4080

    move/from16 v17, v3

    goto/16 :goto_1

    .line 1681
    .restart local v10       #availw:I
    .restart local v17       #wpxs:F
    :cond_b
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_2

    .line 1682
    .restart local v12       #offset:I
    :cond_c
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_3

    .line 1694
    :cond_d
    const/high16 v3, 0x3f00

    move/from16 v18, v3

    goto/16 :goto_4

    .line 1695
    .restart local v18       #wpy:F
    :cond_e
    const/high16 v3, -0x4080

    move/from16 v19, v3

    goto/16 :goto_5

    .line 1697
    .restart local v9       #availh:I
    .restart local v19       #wpys:F
    :cond_f
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_6

    .line 1743
    :catch_0
    move-exception v3

    goto :goto_8

    .line 1730
    .restart local v14       #start:J
    :catch_1
    move-exception v3

    goto :goto_7
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;Z)Z
    .locals 10
    .parameter "changingTarget"
    .parameter "sync"

    .prologue
    const/4 v9, 0x0

    .line 1761
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1762
    .local v4, dw:I
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 1764
    .local v3, dh:I
    const/4 v0, 0x0

    .line 1766
    .local v0, changed:Z
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1767
    .local v5, target:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v5, :cond_1

    .line 1768
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    .line 1769
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    .line 1773
    :cond_0
    :goto_0
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    .line 1774
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    .line 1780
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1781
    .local v1, curTokenIndex:I
    :cond_2
    if-lez v1, :cond_6

    .line 1782
    add-int/lit8 v1, v1, -0x1

    .line 1783
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1784
    .local v6, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1785
    .local v2, curWallpaperIndex:I
    :cond_3
    :goto_2
    if-lez v2, :cond_2

    .line 1786
    add-int/lit8 v2, v2, -0x1

    .line 1787
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 1788
    .local v7, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {p0, v7, v4, v3, p2}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1789
    invoke-virtual {v7}, Lcom/android/server/WindowManagerService$WindowState;->computeShownFrameLocked()V

    .line 1790
    const/4 v0, 0x1

    .line 1792
    const/4 p2, 0x0

    goto :goto_2

    .line 1770
    .end local v1           #curTokenIndex:I
    .end local v2           #curWallpaperIndex:I
    .end local v6           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 1771
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    goto :goto_0

    .line 1775
    :cond_5
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    .line 1776
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    goto :goto_1

    .line 1797
    .restart local v1       #curTokenIndex:I
    :cond_6
    return v0
.end method

.method updateWallpaperVisibilityLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1801
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p0, v7}, Lcom/android/server/WindowManagerService;->isWallpaperVisible(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v5

    .line 1802
    .local v5, visible:Z
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1803
    .local v3, dw:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1805
    .local v2, dh:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1806
    .local v0, curTokenIndex:I
    :cond_0
    if-lez v0, :cond_6

    .line 1807
    add-int/lit8 v0, v0, -0x1

    .line 1808
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1809
    .local v4, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-boolean v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-ne v7, v5, :cond_1

    .line 1810
    if-nez v5, :cond_4

    move v7, v8

    :goto_0
    iput-boolean v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 1813
    iput-boolean v8, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1816
    :cond_1
    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1817
    .local v1, curWallpaperIndex:I
    :cond_2
    :goto_1
    if-lez v1, :cond_0

    .line 1818
    add-int/lit8 v1, v1, -0x1

    .line 1819
    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 1820
    .local v6, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v5, :cond_3

    .line 1821
    invoke-virtual {p0, v6, v3, v2, v9}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 1824
    :cond_3
    iget-boolean v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    if-eq v7, v5, :cond_2

    .line 1825
    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    .line 1831
    if-eqz v5, :cond_5

    .line 1832
    :try_start_0
    iget-object v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    iput-object v7, p0, Lcom/android/server/WindowManagerService;->tempWallpaperWindow:Landroid/view/IWindow;

    .line 1833
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->tempWallpaperVisible:Z

    .line 1834
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->wallpaperPaintPending:Z

    goto :goto_1

    .line 1838
    :catch_0
    move-exception v7

    goto :goto_1

    .end local v1           #curWallpaperIndex:I
    .end local v6           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    move v7, v9

    .line 1810
    goto :goto_0

    .line 1836
    .restart local v1       #curWallpaperIndex:I
    .restart local v6       #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    iget-object v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v7, v5}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1843
    .end local v1           #curWallpaperIndex:I
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v6           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6
    return-void
.end method

.method public validateAppTokens(Ljava/util/List;)V
    .locals 7
    .parameter "tokens"

    .prologue
    const/4 v4, 0x1

    const-string v6, "WindowManager"

    const-string v5, " @ "

    .line 2993
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v3, v4

    .line 2994
    .local v1, v:I
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v0, v3, v4

    .line 2995
    .local v0, m:I
    :goto_0
    if-ltz v1, :cond_2

    if-ltz v0, :cond_2

    .line 2996
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2997
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v3, :cond_0

    .line 2998
    add-int/lit8 v0, v0, -0x1

    .line 2999
    goto :goto_0

    .line 3001
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    if-eq v3, v4, :cond_1

    .line 3002
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tokens out of sync: external is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", internal is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 3006
    add-int/lit8 v0, v0, -0x1

    .line 3007
    goto :goto_0

    .line 3008
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2
    :goto_1
    if-ltz v1, :cond_3

    .line 3009
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External token not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3012
    :cond_3
    :goto_2
    if-ltz v0, :cond_5

    .line 3013
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3014
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-nez v3, :cond_4

    .line 3015
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid internal token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 3018
    goto :goto_2

    .line 3019
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_5
    return-void
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .locals 8
    .parameter "client"

    .prologue
    .line 5148
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5149
    const/4 v6, 0x0

    .line 5182
    :goto_0
    return v6

    .line 5152
    :cond_0
    const/4 v5, 0x1

    .line 5154
    .local v5, result:Z
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindow()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 5156
    .local v2, focusedWindow:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v3, 0x0

    .line 5160
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 5161
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5163
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    if-eqz v2, :cond_1

    .line 5164
    :try_start_1
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5165
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 5166
    iget-object v6, v2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 5168
    :cond_1
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 5169
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 5173
    if-eqz v4, :cond_2

    .line 5175
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v3, v4

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_3
    :goto_2
    move v6, v5

    .line 5182
    goto :goto_0

    .line 5170
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 5171
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    const/4 v5, 0x0

    .line 5173
    if-eqz v3, :cond_3

    .line 5175
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 5176
    :catch_1
    move-exception v1

    .line 5177
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_2

    .line 5173
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_4

    .line 5175
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 5173
    :cond_4
    :goto_5
    throw v6

    .line 5176
    :catch_2
    move-exception v1

    .line 5177
    .restart local v1       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_5

    .line 5176
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v1

    .line 5177
    .restart local v1       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1

    .line 5173
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 5170
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v6

    move-object v1, v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_3
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .locals 12
    .parameter "client"

    .prologue
    .line 5095
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5096
    const/4 v9, 0x0

    .line 5137
    :goto_0
    return v9

    .line 5099
    :cond_0
    const/4 v6, 0x1

    .line 5102
    .local v6, result:Z
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 5104
    :try_start_0
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/WindowManagerService$WindowState;

    .line 5105
    .local v8, windows:[Lcom/android/server/WindowManagerService$WindowState;
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5107
    const/4 v4, 0x0

    .line 5111
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 5112
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5114
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_2
    array-length v1, v8

    .line 5115
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 5116
    aget-object v7, v8, v3

    .line 5117
    .local v7, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5118
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V

    .line 5119
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 5120
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 5115
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5105
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v7           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v8           #windows:[Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 5123
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v8       #windows:[Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    :try_start_4
    const-string v9, "DONE.\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5124
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 5128
    if-eqz v5, :cond_2

    .line 5130
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_2
    move-object v4, v5

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_3
    :goto_3
    move v9, v6

    .line 5137
    goto :goto_0

    .line 5125
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 5126
    .local v2, e:Ljava/lang/Exception;
    :goto_4
    const/4 v6, 0x0

    .line 5128
    if-eqz v4, :cond_3

    .line 5130
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 5131
    :catch_1
    move-exception v2

    .line 5132
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_3

    .line 5128
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    :goto_5
    if-eqz v4, :cond_4

    .line 5130
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 5128
    :cond_4
    :goto_6
    throw v9

    .line 5131
    :catch_2
    move-exception v2

    .line 5132
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_6

    .line 5131
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v2

    .line 5132
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_2

    .line 5128
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #i:I
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 5125
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v9

    move-object v2, v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_4
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .parameter "client"
    .parameter "command"
    .parameter "parameters"

    .prologue
    .line 5206
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5207
    const/4 v14, 0x0

    .line 5278
    :cond_0
    :goto_0
    return v14

    .line 5210
    :cond_1
    const/4 v12, 0x1

    .line 5211
    .local v12, success:Z
    const/4 v5, 0x0

    .line 5212
    .local v5, data:Landroid/os/Parcel;
    const/4 v11, 0x0

    .line 5214
    .local v11, reply:Landroid/os/Parcel;
    const/4 v9, 0x0

    .line 5219
    .local v9, out:Ljava/io/BufferedWriter;
    const/16 v14, 0x20

    :try_start_0
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 5220
    .local v8, index:I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_2

    .line 5221
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v8

    .line 5223
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p3

    move v1, v14

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 5224
    .local v4, code:Ljava/lang/String;
    const/16 v14, 0x10

    invoke-static {v4, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14

    long-to-int v7, v14

    .line 5227
    .local v7, hashCode:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_5

    .line 5228
    add-int/lit8 v14, v8, 0x1

    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 5233
    :goto_1
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->findWindow(I)Lcom/android/server/WindowManagerService$WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 5234
    .local v13, window:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v13, :cond_6

    .line 5235
    const/4 v14, 0x0

    .line 5263
    if-eqz v5, :cond_3

    .line 5264
    throw v5

    .line 5266
    :cond_3
    if-eqz v11, :cond_4

    .line 5267
    throw v11

    .line 5269
    :cond_4
    if-eqz v9, :cond_0

    .line 5271
    :try_start_1
    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5272
    :catch_0
    move-exception v15

    goto :goto_0

    .line 5230
    .end local v13           #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    :try_start_2
    const-string p3, ""

    goto :goto_1

    .line 5238
    .restart local v13       #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 5239
    const-string v14, "android.view.IWindow"

    invoke-virtual {v5, v14}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5240
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5241
    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5242
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 5243
    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v5, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 5247
    iget-object v14, v13, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v14}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 5249
    .local v3, binder:Landroid/os/IBinder;
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v3, v14, v5, v11, v15}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5251
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    .line 5253
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v14

    if-nez v14, :cond_7

    .line 5254
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v14, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5255
    .end local v9           #out:Ljava/io/BufferedWriter;
    .local v10, out:Ljava/io/BufferedWriter;
    :try_start_3
    const-string v14, "DONE\n"

    invoke-virtual {v10, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5256
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v9, v10

    .line 5263
    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    :cond_7
    if-eqz v5, :cond_8

    .line 5264
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 5266
    :cond_8
    if-eqz v11, :cond_9

    .line 5267
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 5269
    :cond_9
    if-eqz v9, :cond_a

    .line 5271
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v3           #binder:Landroid/os/IBinder;
    .end local v4           #code:Ljava/lang/String;
    .end local v7           #hashCode:I
    .end local v8           #index:I
    .end local v13           #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_a
    :goto_2
    move v14, v12

    .line 5278
    goto/16 :goto_0

    .line 5259
    :catch_1
    move-exception v14

    move-object v6, v14

    .line 5260
    .local v6, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v14, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not send command "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with parameters "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5261
    const/4 v12, 0x0

    .line 5263
    if-eqz v5, :cond_b

    .line 5264
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 5266
    :cond_b
    if-eqz v11, :cond_c

    .line 5267
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 5269
    :cond_c
    if-eqz v9, :cond_a

    .line 5271
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 5272
    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v14

    goto :goto_2

    .line 5263
    :catchall_0
    move-exception v14

    :goto_4
    if-eqz v5, :cond_d

    .line 5264
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 5266
    :cond_d
    if-eqz v11, :cond_e

    .line 5267
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 5269
    :cond_e
    if-eqz v9, :cond_f

    .line 5271
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 5263
    :cond_f
    :goto_5
    throw v14

    .line 5272
    :catch_3
    move-exception v15

    goto :goto_5

    .line 5263
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v3       #binder:Landroid/os/IBinder;
    .restart local v4       #code:Ljava/lang/String;
    .restart local v7       #hashCode:I
    .restart local v8       #index:I
    .restart local v10       #out:Ljava/io/BufferedWriter;
    .restart local v13       #window:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_1
    move-exception v14

    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 5259
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v14

    move-object v6, v14

    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    goto :goto_3
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .parameter "window"
    .parameter "result"

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2426
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 2428
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    .line 2429
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2431
    :cond_0
    monitor-exit v0

    .line 2432
    return-void

    .line 2431
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1752
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1754
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    .line 1755
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1757
    :cond_0
    monitor-exit v0

    .line 1758
    return-void

    .line 1757
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .locals 5
    .parameter "watcher"

    .prologue
    .line 4919
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4920
    .local v1, watcherBinder:Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/WindowManagerService$4;

    invoke-direct {v0, p0, v1}, Lcom/android/server/WindowManagerService$4;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;)V

    .line 4936
    .local v0, dr:Landroid/os/IBinder$DeathRecipient;
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4938
    :try_start_0
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4939
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4944
    :goto_0
    :try_start_1
    iget v3, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    monitor-exit v2

    return v3

    .line 4945
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 4940
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method final windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;
    .locals 8
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    const/4 v4, 0x0

    const-string v7, "WindowManager"

    const-string v6, "Requested window "

    const-string v5, "Failed looking up window"

    .line 8671
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 8674
    .local v1, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v1, :cond_1

    .line 8675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8677
    .local v0, ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_0

    .line 8678
    throw v0

    .line 8680
    :cond_0
    const-string v2, "WindowManager"

    const-string v2, "Failed looking up window"

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 8694
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :goto_0
    return-object v2

    .line 8683
    :cond_1
    if-eqz p1, :cond_3

    iget-object v2, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    if-eq v2, p1, :cond_3

    .line 8684
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8687
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_2

    .line 8688
    throw v0

    .line 8690
    :cond_2
    const-string v2, "WindowManager"

    const-string v2, "Failed looking up window"

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 8691
    goto :goto_0

    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_3
    move-object v2, v1

    .line 8694
    goto :goto_0
.end method

.method final windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;
    .locals 1
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    .line 8666
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    return-object v0
.end method
