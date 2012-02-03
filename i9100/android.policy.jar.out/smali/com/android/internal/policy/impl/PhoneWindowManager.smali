.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final ACTION_THEME_PACKAGE_CHANGED:Ljava/lang/String; = "samsung.theme_package_changed"

.field static final APPLICATION_LAYER:I = 0x2

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_THEME:Z = false

.field static final DEFAULT_ACCELEROMETER_ROTATION:I = 0x0

.field static final INPUT_METHOD_DIALOG_LAYER:I = 0xd

.field static final INPUT_METHOD_LAYER:I = 0xc

.field static final KEYBOARD_ALWAYS_HIDDEN:Z = false

.field static final KEYGUARD_DIALOG_LAYER:I = 0xf

.field static final KEYGUARD_LAYER:I = 0xe

.field static final PHONE_LAYER:I = 0x3

.field static final PRINT_ANIM:Z = false

.field static final PRIORITY_PHONE_LAYER:I = 0x9

.field static final SEARCH_BAR_LAYER:I = 0x4

.field static final SECURE_SYSTEM_OVERLAY_LAYER:I = 0x13

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field static final STATUS_BAR_LAYER:I = 0x10

.field static final STATUS_BAR_PANEL_LAYER:I = 0x5

.field private static final SW_LID:I = 0x0

.field static final SYSTEM_ALERT_LAYER:I = 0xa

.field static final SYSTEM_DIALOG_LAYER:I = 0x6

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_ERROR_LAYER:I = 0xb

.field static final SYSTEM_OVERLAY_LAYER:I = 0x12

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TOAST_LAYER:I = 0x7

.field static final WALLPAPER_LAYER:I = 0x2

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;


# instance fields
.field mAccelerometerDefault:I

.field mAllowLockscreenWhenOn:Z

.field mBroadcastDone:Landroid/content/BroadcastReceiver;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:Z

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field mFancyRotationAnimation:I

.field mForceStatusBar:Z

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field mH:I

.field mHandler:Landroid/os/Handler;

.field mHasSoftInput:Z

.field mHideLockScreen:Z

.field mHideStatusBar:Z

.field private mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

.field mHomeIntent:Landroid/content/Intent;

.field private mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

.field mHomeLongPress:Ljava/lang/Runnable;

.field mHomePressed:Z

.field mIncallPowerBehavior:I

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field mLandscapeRotation:I

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpen:Z

.field mLidOpenRotation:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field mLongPressVibePattern:[J

.field mMenuLongPress:Ljava/lang/Runnable;

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field private final mPointerLocationInputHandler:Landroid/view/InputHandler;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/LocalPowerManager;

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field private mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

.field private mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

.field mScreenLockTimeout:Ljava/lang/Runnable;

.field mScreenOn:Z

.field mSearchKeyPressed:Z

.field mSeascapeRotation:I

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field final mStatusBarPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

.field mTopFullscreenFounded:Z

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mUiMode:I

.field mUpsideDownRotation:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mW:I

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 293
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 294
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1225
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 228
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 231
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    .line 233
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 242
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 243
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 251
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 252
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 253
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 255
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 256
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 258
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 259
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 262
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    .line 326
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 327
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 328
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 329
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 338
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    .line 346
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    .line 350
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    .line 542
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 600
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    .line 611
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    .line 2353
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2359
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 2631
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    .line 3054
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 3437
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->releaseDialogs()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    return-void
.end method

.method private determineHiddenState(ZIII)I
    .locals 1
    .parameter "lidOpen"
    .parameter "mode"
    .parameter "hiddenValue"
    .parameter "visibleValue"

    .prologue
    .line 907
    packed-switch p2, :pswitch_data_0

    move v0, p4

    .line 913
    :goto_0
    return v0

    .line 909
    :pswitch_0
    if-eqz p1, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p3

    goto :goto_0

    .line 911
    :pswitch_1
    if-eqz p1, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    move v0, p4

    goto :goto_0

    .line 907
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 1213
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1215
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 1216
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_0
    return-object v0
.end method

.method private getCurrentLandscapeRotation(I)I
    .locals 2
    .parameter "lastRotation"

    .prologue
    .line 2528
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2529
    .local v0, sensorRotation:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 2537
    :goto_0
    return v1

    .line 2533
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p1

    .line 2534
    goto :goto_0

    .line 2537
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    goto :goto_0
.end method

.method private getCurrentPortraitRotation(I)I
    .locals 2
    .parameter "lastRotation"

    .prologue
    .line 2545
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v0

    .line 2546
    .local v0, sensorRotation:I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 2554
    :goto_0
    return v1

    .line 2550
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p1

    .line 2551
    goto :goto_0

    .line 2554
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    goto :goto_0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 2585
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2586
    .local v0, ar:[I
    if-nez v0, :cond_0

    .line 2587
    const/4 v3, 0x0

    .line 2593
    :goto_0
    return-object v3

    .line 2589
    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    .line 2590
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 2591
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 2590
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 2593
    goto :goto_0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 1204
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1206
    .local v0, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 1207
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_0
    return-object v0
.end method

.method private interceptPowerKeyDown(Z)V
    .locals 4
    .parameter "handled"

    .prologue
    .line 526
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 527
    if-nez p1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 530
    :cond_0
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .locals 4
    .parameter "canceled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 535
    if-nez p1, :cond_0

    move v0, v3

    .line 538
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 535
    goto :goto_0

    .line 537
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    move v0, v2

    .line 538
    goto :goto_0
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .parameter "sensorRotation"

    .prologue
    .line 2558
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .parameter "sensorRotation"

    .prologue
    .line 2541
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isMediaKey(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 2030
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x56

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x59

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_1

    .line 2037
    :cond_0
    const/4 v0, 0x1

    .line 2039
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMtpRunning()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2327
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2328
    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.MtpApplication"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2329
    const-string v1, "MTP-PWM"

    const-string v2, " Set DEVICE_PROVISIONED value to one for home key press"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v3

    .line 2333
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method private readRotation(I)I
    .locals 2
    .parameter "resID"

    .prologue
    .line 822
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 823
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_0

    .line 836
    .end local v0           #rotation:I
    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 825
    .restart local v0       #rotation:I
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 827
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 829
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    .line 831
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    .line 833
    .end local v0           #rotation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 823
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private releaseDialogs()V
    .locals 1

    .prologue
    .line 3064
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-eqz v0, :cond_0

    .line 3066
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions;->releaseDialog()V

    .line 3068
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    if-eqz v0, :cond_1

    .line 3070
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->dismiss()V

    .line 3071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    .line 3073
    :cond_1
    return-void
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 2453
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2455
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2459
    :cond_0
    :goto_0
    return-void

    .line 2456
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 2642
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v1

    .line 2643
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 2644
    .local v0, enable:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v0, :cond_0

    .line 2645
    if-eqz v0, :cond_2

    .line 2647
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2652
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 2654
    :cond_0
    monitor-exit v1

    .line 2655
    return-void

    .line 2643
    .end local v0           #enable:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 2650
    .restart local v0       #enable:Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2654
    .end local v0           #enable:Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;II)Landroid/view/View;
    .locals 14
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"

    .prologue
    .line 1013
    if-nez p2, :cond_0

    .line 1014
    const/4 v11, 0x0

    .line 1110
    :goto_0
    return-object v11

    .line 1018
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1019
    .local v3, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 1030
    .local v7, setTheme:Z
    const/4 v11, 0x0

    :try_start_1
    move-object v0, v3

    move-object/from16 v1, p2

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 1031
    if-eqz p3, :cond_1

    .line 1032
    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    const/4 v7, 0x1

    .line 1039
    :cond_1
    :goto_1
    if-nez v7, :cond_2

    .line 1040
    const v11, 0x1030005

    :try_start_2
    invoke-virtual {v3, v11}, Landroid/content/Context;->setTheme(I)V

    .line 1043
    :cond_2
    invoke-static {v3}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v9

    .line 1044
    .local v9, win:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1046
    const/4 v11, 0x0

    goto :goto_0

    .line 1049
    :cond_3
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1050
    .local v6, r:Landroid/content/res/Resources;
    move-object v0, v6

    move/from16 v1, p5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1052
    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/view/Window;->setType(I)V

    .line 1058
    const v11, 0x20018

    const v12, 0x20018

    invoke-virtual {v9, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 1066
    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v9, v11, v12}, Landroid/view/Window;->setLayout(II)V

    .line 1069
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1070
    .local v5, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1071
    move-object/from16 v0, p2

    move-object v1, v5

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1072
    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1074
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Starting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1076
    const-string v11, "window"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 1078
    .local v10, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 1080
    .local v8, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/Window;->isFloating()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1087
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1095
    :cond_4
    invoke-virtual {v10, v8, v5}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    if-eqz v11, :cond_5

    move-object v11, v8

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1100
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #setTheme:Z
    .end local v8           #view:Landroid/view/View;
    .end local v9           #win:Landroid/view/Window;
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 1102
    .local v4, e:Landroid/view/WindowManager$BadTokenException;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " already running, starting window not displayed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    .end local v4           #e:Landroid/view/WindowManager$BadTokenException;
    :goto_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1103
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 1107
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " failed creating starting window"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1035
    .end local v4           #e:Ljava/lang/RuntimeException;
    .restart local v3       #context:Landroid/content/Context;
    .restart local v7       #setTheme:Z
    :catch_2
    move-exception v11

    goto/16 :goto_1
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 918
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 919
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    .line 920
    .local v0, lidOpen:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v1, v0}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 921
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(ZIII)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 924
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->determineHiddenState(ZIII)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 927
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 931
    return-void

    :cond_1
    move v1, v3

    .line 927
    goto :goto_0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "attrs"

    .prologue
    .line 883
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 892
    :goto_0
    return-void

    .line 888
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 883
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1917
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    .line 1940
    :goto_0
    return v5

    .line 1922
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1923
    new-instance v3, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getShownFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1924
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v0, v5, v8

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 1925
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1926
    .local v4, w:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1927
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getShownFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1924
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1930
    .end local v4           #w:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    div-int/lit8 v2, v5, 0xa

    .line 1931
    .local v2, insetw:I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    div-int/lit8 v1, v5, 0xa

    .line 1932
    .local v1, inseth:I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    sub-int/2addr v6, v1

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    .line 1937
    goto :goto_0

    .end local v0           #i:I
    .end local v1           #inseth:I
    .end local v2           #insetw:I
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_3
    move v5, v8

    .line 1940
    goto :goto_0
.end method

.method public allowKeyRepeat()Z
    .locals 1

    .prologue
    .line 2880
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    return v0
.end method

.method public animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1794
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1796
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    .line 1797
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 1799
    :cond_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_3

    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v3, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_3

    .line 1805
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1806
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1808
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 1810
    :cond_1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1812
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 1814
    :cond_2
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1815
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 1819
    :cond_3
    return-void
.end method

.method public beginAnimationLw(II)V
    .locals 2
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    .line 1783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1784
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 1786
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 1787
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 1788
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 1789
    return-void
.end method

.method public beginLayoutLw(II)V
    .locals 7
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v6, 0x0

    .line 1527
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    .line 1528
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    .line 1529
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 1530
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1531
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 1532
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 1533
    const/high16 v5, 0x1000

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1536
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    .line 1537
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1538
    .local v3, pf:Landroid/graphics/Rect;
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1539
    .local v0, df:Landroid/graphics/Rect;
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1540
    .local v4, vf:Landroid/graphics/Rect;
    iput v6, v4, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 1541
    iput v6, v4, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 1542
    iput p1, v4, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v3, Landroid/graphics/Rect;->right:I

    .line 1543
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    .line 1545
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v3, v0, v4, v4}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1548
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_2

    .line 1549
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1550
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move v1, v5

    .line 1551
    .local v1, isFullScreen:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1554
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 1570
    .end local v0           #df:Landroid/graphics/Rect;
    .end local v1           #isFullScreen:Z
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #pf:Landroid/graphics/Rect;
    .end local v4           #vf:Landroid/graphics/Rect;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #df:Landroid/graphics/Rect;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #pf:Landroid/graphics/Rect;
    .restart local v4       #vf:Landroid/graphics/Rect;
    :cond_1
    move v1, v6

    .line 1550
    goto :goto_0

    .line 1558
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1561
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    goto :goto_1
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1002
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 841
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 843
    .local v1, type:I
    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    const/16 v2, 0xbb7

    if-le v1, v2, :cond_1

    :cond_0
    move v2, v3

    .line 879
    :goto_0
    return v2

    .line 848
    :cond_1
    const/16 v2, 0xbb6

    if-ne v1, v2, :cond_2

    move v2, v3

    .line 849
    goto :goto_0

    .line 852
    :cond_2
    const/4 v0, 0x0

    .line 853
    .local v0, permission:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 871
    :pswitch_0
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 873
    :goto_1
    :pswitch_1
    if-eqz v0, :cond_3

    .line 874
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 876
    const/4 v2, -0x8

    goto :goto_0

    .line 868
    :pswitch_2
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 869
    goto :goto_1

    :cond_3
    move v2, v3

    .line 879
    goto :goto_0

    .line 853
    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createForceHideEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2694
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2695
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2702
    .local v1, intent:Landroid/content/Intent;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2704
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_2

    move-object v3, v5

    .line 2714
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-object v3

    .line 2696
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2697
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    move-object v3, v5

    .line 2699
    goto :goto_1

    .line 2708
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.dock_home"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2709
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2710
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v2

    .line 2711
    goto :goto_1

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3
    move-object v3, v5

    .line 2714
    goto :goto_1
.end method

.method public detectSafeMode()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-string v5, "WindowManager"

    .line 2563
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x52

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v2

    .line 2564
    .local v2, menuState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x2f

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getKeycodeState(I)I

    move-result v3

    .line 2565
    .local v3, sState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x17

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getDPadKeycodeState(I)I

    move-result v0

    .line 2566
    .local v0, dpadState:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x110

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getTrackballScancodeState(I)I

    move-result v4

    .line 2567
    .local v4, trackballState:I
    if-gtz v2, :cond_0

    if-gtz v3, :cond_0

    if-gtz v0, :cond_0

    if-lez v4, :cond_1

    :cond_0
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 2568
    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v6, :cond_2

    const/16 v6, 0x2711

    :goto_1
    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2571
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    if-eqz v5, :cond_3

    .line 2572
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAFE MODE ENABLED (menu="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dpad="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " trackball="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    :goto_2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    return v5

    .line 2567
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2568
    :cond_2
    const/16 v6, 0x2710

    goto :goto_1

    .line 2575
    :cond_3
    const-string v5, "WindowManager"

    const-string v6, "SAFE MODE not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2578
    .end local v0           #dpadState:I
    .end local v2           #menuState:I
    .end local v3           #sState:I
    .end local v4           #trackballState:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2580
    .local v1, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "window manager dead"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 998
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 2414
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 2659
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 2660
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 2661
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 2419
    return-void
.end method

.method public finishAnimationLw()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1823
    const/4 v1, 0x0

    .line 1825
    .local v1, changes:I
    const/4 v2, 0x0

    .line 1826
    .local v2, hiding:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_0

    .line 1829
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v4, :cond_4

    .line 1831
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v1, v1, 0x1

    .line 1858
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 1859
    const-string v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 1860
    .local v3, sbs:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_1

    .line 1863
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    .end local v3           #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_3

    .line 1873
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1874
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1875
    or-int/lit8 v1, v1, 0x7

    .line 1879
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1880
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1906
    :cond_3
    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideStatusBar:Z

    .line 1907
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenFounded:Z

    .line 1908
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1912
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 1913
    return v1

    .line 1832
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_0

    .line 1835
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_6

    move v0, v6

    .line 1837
    .local v0, animateStatusBar:Z
    :goto_3
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenFounded:Z

    if-eqz v4, :cond_8

    .line 1838
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideStatusBar:Z

    if-eqz v4, :cond_7

    .line 1841
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v0}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    or-int/lit8 v1, v1, 0x1

    .line 1843
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .end local v0           #animateStatusBar:Z
    :cond_6
    move v0, v7

    .line 1835
    goto :goto_3

    .line 1847
    .restart local v0       #animateStatusBar:Z
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v0}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1852
    :cond_8
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1886
    .end local v0           #animateStatusBar:Z
    :cond_9
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v4, :cond_b

    .line 1887
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1888
    or-int/lit8 v1, v1, 0x7

    .line 1892
    :cond_a
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideChildWindows()V

    .line 1893
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_2

    .line 1895
    :cond_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1896
    or-int/lit8 v1, v1, 0x7

    .line 1900
    :cond_c
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->showChildWindows()V

    .line 1901
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_2

    .line 1864
    .restart local v3       #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method public finishLayoutLw()I
    .locals 1

    .prologue
    .line 1778
    const/4 v0, 0x0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    .line 1488
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1490
    .local v0, fl:I
    const v1, 0x10500

    and-int/2addr v1, v0

    const v2, 0x10100

    if-ne v1, v2, :cond_0

    .line 1493
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1497
    :goto_0
    return-void

    .line 1495
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    .line 994
    const/16 v0, 0x10

    return v0
.end method

.method goHome()Z
    .locals 15

    .prologue
    .line 2746
    :try_start_0
    const-string v0, "persist.sys.uts-test-mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2748
    const-string v0, "WindowManager"

    const-string v1, "UTS-TEST-MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface/range {v3 .. v13}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v14

    .line 2767
    .local v14, result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_2

    .line 2768
    const/4 v0, 0x0

    .line 2774
    .end local v14           #result:I
    :goto_0
    return v0

    .line 2750
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 2751
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 2752
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2753
    .local v2, dock:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 2754
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 2758
    .restart local v14       #result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_0

    .line 2759
    const/4 v0, 0x0

    goto :goto_0

    .line 2770
    .end local v2           #dock:Landroid/content/Intent;
    .end local v14           #result:I
    :catch_0
    move-exception v0

    .line 2774
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method handleVolumeKey(II)V
    .locals 5
    .parameter "stream"
    .parameter "keycode"

    .prologue
    .line 2008
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2009
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 2027
    :goto_0
    return-void

    .line 2016
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2017
    const/16 v2, 0x18

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2025
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 2017
    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    .line 2022
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2023
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2025
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 3

    .prologue
    .line 2322
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2323
    .local v0, kgm:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V
    .locals 9
    .parameter "context"
    .parameter "windowManager"
    .parameter "powerManager"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x1020

    const-string v8, "android.intent.action.MAIN"

    .line 652
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 653
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 654
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    .line 655
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {v4, p1, p0, p3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 656
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 657
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 658
    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    .line 659
    .local v3, settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 660
    new-instance v4, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p1, v5}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 661
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 662
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 663
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 666
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 667
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.CAR_DOCK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 670
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 671
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DESK_DOCK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 674
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 675
    .local v2, pm:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 677
    const-string v4, "1"

    const-string v5, "ro.debuggable"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 678
    const v4, 0x10e0004

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 680
    const v4, 0x10e0006

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 682
    const v4, 0x10e0005

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 684
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 686
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 688
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 690
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 693
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 694
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 700
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 702
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 705
    :cond_0
    new-instance v4, Landroid/os/Vibrator;

    invoke-direct {v4}, Landroid/os/Vibrator;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 706
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070016

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 708
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070017

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 710
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070018

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 712
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070019

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 714
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001a

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 717
    invoke-static {p0}, Lcom/android/internal/policy/impl/MTPhLockReceiver;->init(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 719
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "samsung.theme_package_changed"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 723
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 725
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;IIIIIII)Z
    .locals 20
    .parameter "win"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "metaState"
    .parameter "repeatCount"
    .parameter "policyFlags"

    .prologue
    .line 1234
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v11

    .line 1235
    .local v11, keyguardOn:Z
    if-nez p2, :cond_3

    const/16 v16, 0x1

    move/from16 v7, v16

    .line 1236
    .local v7, down:Z
    :goto_0
    and-int/lit8 v16, p3, 0x20

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    move/from16 v5, v16

    .line 1244
    .local v5, canceled:Z
    :goto_1
    const/16 v16, 0x3

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    move/from16 v2, p7

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->addAction(IIZ)V

    .line 1252
    :cond_0
    const/16 v16, 0x3

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    if-nez v7, :cond_1

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1258
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 1262
    const/16 v16, 0x3

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 1263
    if-nez v7, :cond_2

    .line 1264
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1272
    :cond_2
    const/16 v16, 0x1

    .line 1444
    :goto_2
    return v16

    .line 1235
    .end local v5           #canceled:Z
    .end local v7           #down:Z
    :cond_3
    const/16 v16, 0x0

    move/from16 v7, v16

    goto :goto_0

    .line 1236
    .restart local v7       #down:Z
    :cond_4
    const/16 v16, 0x0

    move/from16 v5, v16

    goto :goto_1

    .line 1279
    .restart local v5       #canceled:Z
    :cond_5
    const/16 v16, 0x3

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_f

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1283
    const/16 v16, 0x0

    goto :goto_2

    .line 1289
    :cond_6
    if-eqz p1, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    move-object/from16 v4, v16

    .line 1290
    .local v4, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_3
    if-eqz v4, :cond_b

    .line 1291
    iget v14, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1292
    .local v14, type:I
    const/16 v16, 0x7d4

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    const/16 v16, 0x7d9

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 1295
    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    .line 1289
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v14           #type:I
    :cond_8
    const/16 v16, 0x0

    move-object/from16 v4, v16

    goto :goto_3

    .line 1297
    .restart local v4       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v14       #type:I
    :cond_9
    sget-object v16, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move v15, v0

    .line 1298
    .local v15, typeCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    if-ge v9, v15, :cond_b

    .line 1299
    sget-object v16, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v16, v16, v9

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 1301
    const/16 v16, 0x1

    goto :goto_2

    .line 1298
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1306
    .end local v9           #i:I
    .end local v14           #type:I
    .end local v15           #typeCount:I
    :cond_b
    if-eqz v7, :cond_e

    if-nez p7, :cond_e

    .line 1320
    if-nez v11, :cond_c

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v18

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1326
    :cond_c
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v12

    .line 1327
    .local v12, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v12, :cond_d

    .line 1328
    invoke-interface {v12}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->setHomeDownEventSent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1338
    .end local v12           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v16

    move-object/from16 v8, v16

    .line 1339
    .local v8, ex:Landroid/os/RemoteException;
    const-string v16, "WindowManager"

    const-string v17, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1347
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_d
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1349
    :cond_e
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 1350
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_f
    const/16 v16, 0x52

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_11

    .line 1352
    const/4 v6, 0x1

    .line 1354
    .local v6, chordBug:I
    if-eqz v7, :cond_10

    if-nez p7, :cond_10

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v18

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move/from16 v16, v0

    if-eqz v16, :cond_10

    and-int/lit8 v16, p6, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 1359
    new-instance v10, Landroid/content/Intent;

    const-string v16, "android.intent.action.BUG_REPORT"

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1360
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1361
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 1380
    .end local v10           #intent:Landroid/content/Intent;
    :cond_10
    if-nez v7, :cond_12

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1382
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1384
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v16, v0

    if-eqz v16, :cond_12

    .line 1386
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1387
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 1391
    .end local v6           #chordBug:I
    :cond_11
    const/16 v16, 0x54

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_14

    .line 1392
    if-eqz v7, :cond_13

    .line 1393
    if-nez p7, :cond_12

    .line 1394
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1402
    const/16 v16, 0x0

    const/16 v17, 0xd

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1427
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_15

    .line 1428
    if-eqz v7, :cond_15

    if-nez p7, :cond_15

    if-nez v11, :cond_15

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p4

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(II)Landroid/content/Intent;

    move-result-object v13

    .line 1430
    .local v13, shortcutIntent:Landroid/content/Intent;
    if-eqz v13, :cond_15

    .line 1431
    const/high16 v16, 0x1000

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1438
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1439
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 1405
    .end local v13           #shortcutIntent:Landroid/content/Intent;
    :cond_13
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyPressed:Z

    .line 1407
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v16, v0

    if-eqz v16, :cond_12

    .line 1409
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 1410
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 1413
    :cond_14
    const/16 v16, 0x4

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_12

    .line 1414
    if-eqz v7, :cond_12

    if-nez p7, :cond_12

    .line 1421
    const/16 v16, 0x0

    const/16 v17, 0xd

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_5

    .line 1444
    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_2
.end method

.method public interceptKeyBeforeQueueing(JIIIIIZ)I
    .locals 28
    .parameter "whenNanos"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 2046
    if-nez p3, :cond_1

    const/4 v7, 0x1

    move/from16 v18, v7

    .line 2047
    .local v18, down:Z
    :goto_0
    and-int/lit8 v7, p4, 0x20

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    move/from16 v17, v7

    .line 2049
    .local v17, canceled:Z
    :goto_1
    const/high16 v7, 0x100

    and-int v7, v7, p7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    move/from16 v22, v7

    .line 2055
    .local v22, isInjected:Z
    :goto_2
    if-eqz p8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v7

    move/from16 v24, v7

    .line 2064
    .local v24, keyguardActive:Z
    :goto_3
    const/16 v25, 0x1

    .line 2066
    .local v25, result:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2067
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMtpRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2068
    const/4 v7, 0x3

    move/from16 v0, p5

    move v1, v7

    if-ne v0, v1, :cond_0

    .line 2069
    new-instance v21, Landroid/content/Intent;

    const-string v7, "com.android.END_MTP"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2070
    .local v21, intentBroadcast:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2071
    const-string v7, "MTP-PWM"

    const-string v8, "HOME key is pressed to stop MTP.sent broadcast"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    .end local v21           #intentBroadcast:Landroid/content/Intent;
    :cond_0
    and-int/lit8 v25, v25, -0x2

    move/from16 v7, v25

    .line 2318
    :goto_4
    return v7

    .line 2046
    .end local v17           #canceled:Z
    .end local v18           #down:Z
    .end local v22           #isInjected:Z
    .end local v24           #keyguardActive:Z
    .end local v25           #result:I
    :cond_1
    const/4 v7, 0x0

    move/from16 v18, v7

    goto :goto_0

    .line 2047
    .restart local v18       #down:Z
    :cond_2
    const/4 v7, 0x0

    move/from16 v17, v7

    goto :goto_1

    .line 2049
    .restart local v17       #canceled:Z
    :cond_3
    const/4 v7, 0x0

    move/from16 v22, v7

    goto :goto_2

    .line 2055
    .restart local v22       #isInjected:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v7

    move/from16 v24, v7

    goto :goto_3

    .line 2078
    .restart local v24       #keyguardActive:Z
    .restart local v25       #result:I
    :cond_5
    if-eqz v18, :cond_6

    move/from16 v0, p7

    and-int/lit16 v0, v0, 0x100

    move v7, v0

    if-eqz v7, :cond_6

    .line 2079
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2084
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureAction:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, p8

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->doIninterceptKeyBeforeQueueing(IZZ)I

    move-result v27

    .line 2085
    .local v27, tmpResult:I
    const/4 v7, -0x1

    move/from16 v0, v27

    move v1, v7

    if-eq v0, v1, :cond_7

    move/from16 v7, v27

    .line 2086
    goto :goto_4

    .line 2099
    :cond_7
    if-nez p8, :cond_8

    if-eqz v22, :cond_b

    .line 2101
    :cond_8
    const/16 v25, 0x1

    .line 2121
    :cond_9
    :goto_5
    sparse-switch p5, :sswitch_data_0

    :cond_a
    :goto_6
    move/from16 v7, v25

    .line 2318
    goto :goto_4

    .line 2105
    :cond_b
    const/16 v25, 0x0

    .line 2107
    and-int/lit8 v7, p7, 0x3

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    move/from16 v23, v7

    .line 2109
    .local v23, isWakeKey:Z
    :goto_7
    if-eqz v18, :cond_9

    if-eqz v23, :cond_9

    .line 2110
    if-eqz v24, :cond_d

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    goto :goto_5

    .line 2107
    .end local v23           #isWakeKey:Z
    :cond_c
    const/4 v7, 0x0

    move/from16 v23, v7

    goto :goto_7

    .line 2115
    .restart local v23       #isWakeKey:Z
    :cond_d
    or-int/lit8 v25, v25, 0x2

    goto :goto_5

    .line 2124
    .end local v23           #isWakeKey:Z
    :sswitch_0
    if-eqz v18, :cond_f

    .line 2125
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .line 2126
    .local v26, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v26, :cond_e

    .line 2128
    :try_start_0
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2135
    const-string v7, "WindowManager"

    const-string v8, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2144
    and-int/lit8 v25, v25, -0x2

    goto :goto_6

    .line 2158
    :catch_0
    move-exception v7

    move-object/from16 v19, v7

    .line 2159
    .local v19, ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2173
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    if-nez v7, :cond_a

    .line 2174
    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    const/4 v8, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 2176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->start()V

    goto :goto_6

    .line 2181
    .end local v26           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    if-eqz v7, :cond_a

    .line 2182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 2183
    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;

    goto/16 :goto_6

    .line 2191
    :sswitch_1
    and-int/lit8 v25, v25, -0x2

    .line 2192
    if-eqz v18, :cond_13

    .line 2193
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .line 2194
    .restart local v26       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v20, 0x0

    .line 2195
    .local v20, hungUp:Z
    if-eqz v26, :cond_10

    .line 2197
    :try_start_1
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v20

    .line 2202
    :cond_10
    :goto_8
    if-eqz p8, :cond_11

    if-eqz v20, :cond_12

    :cond_11
    const/4 v7, 0x1

    :goto_9
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_6

    .line 2198
    :catch_1
    move-exception v19

    .line 2199
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 2202
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_12
    const/4 v7, 0x0

    goto :goto_9

    .line 2204
    .end local v20           #hungUp:Z
    .end local v26           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2205
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_14

    .line 2207
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2211
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_a

    .line 2213
    and-int/lit8 v7, v25, -0x3

    or-int/lit8 v25, v7, 0x4

    goto/16 :goto_6

    .line 2221
    :sswitch_2
    and-int/lit8 v25, v25, -0x2

    .line 2222
    if-eqz v18, :cond_19

    .line 2223
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .line 2224
    .restart local v26       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v20, 0x0

    .line 2225
    .restart local v20       #hungUp:Z
    if-eqz v26, :cond_15

    .line 2227
    :try_start_2
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 2231
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2244
    :cond_15
    :goto_a
    if-eqz p8, :cond_16

    if-eqz v20, :cond_18

    :cond_16
    const/4 v7, 0x1

    :goto_b
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    const/16 v8, 0x1a

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2249
    or-int/lit8 v25, v25, 0x1

    goto/16 :goto_6

    .line 2233
    :cond_17
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move v7, v0

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_15

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2238
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v20

    goto :goto_a

    .line 2240
    :catch_2
    move-exception v7

    move-object/from16 v19, v7

    .line 2241
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 2244
    .end local v19           #ex:Landroid/os/RemoteException;
    :cond_18
    const/4 v7, 0x0

    goto :goto_b

    .line 2255
    .end local v20           #hungUp:Z
    .end local v26           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2256
    and-int/lit8 v7, v25, -0x3

    or-int/lit8 v25, v7, 0x4

    .line 2260
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-object v7, v0

    const/16 v8, 0x1a

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2262
    or-int/lit8 v25, v25, 0x1

    .line 2263
    and-int/lit8 v25, v25, -0x5

    goto/16 :goto_6

    .line 2279
    :sswitch_3
    and-int/lit8 v7, v25, 0x1

    if-nez v7, :cond_a

    .line 2283
    const-wide/32 v7, 0xf4240

    div-long v5, p1, v7

    .line 2284
    .local v5, when:J
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x101

    move-wide v7, v5

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v14, p6

    move/from16 v15, p4

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 2286
    .local v4, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PassHeadsetKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 2293
    .end local v4           #keyEvent:Landroid/view/KeyEvent;
    .end local v5           #when:J
    :sswitch_4
    if-eqz v18, :cond_a

    .line 2294
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .line 2295
    .restart local v26       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v26, :cond_a

    .line 2297
    :try_start_4
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2298
    const-string v7, "WindowManager"

    const-string v8, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2304
    and-int/lit8 v25, v25, -0x2

    goto/16 :goto_6

    .line 2306
    :catch_3
    move-exception v7

    move-object/from16 v19, v7

    .line 2307
    .restart local v19       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "ITelephony threw RemoteException"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 2121
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x6 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x4f -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method isDeviceProvisioned()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 590
    const-string v0, "ril.IMSI"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "99999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 595
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method isInCall()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "WindowManager"

    .line 1978
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1979
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 1980
    const-string v2, "WindowManager"

    const-string v2, "couldn\'t get ITelephony reference"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1987
    :goto_0
    return v2

    .line 1984
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1985
    :catch_0
    move-exception v0

    .line 1986
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ITelephony.isOffhhook threw RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1987
    goto :goto_0
.end method

.method public isLockScreenMaking()Z
    .locals 1

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isMaking()Z

    move-result v0

    return v0
.end method

.method public isLockScreenShowing()Z
    .locals 1

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 1995
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1996
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 1997
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const/4 v1, 0x0

    .line 2000
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 2408
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "componentName"

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 1222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 2

    .prologue
    const-string v1, "HomeKeyDoubleClick"

    .line 1452
    const-string v0, "HomeKeyDoubleClick"

    const-string v0, "launchHomeFromHotKey() is called."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    const-string v0, "HomeKeyDoubleClick"

    const-string v0, "  in launchHomeFromHotKey(), keyguard is on. do nothing."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :goto_0
    return-void

    .line 1457
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_0

    .line 1477
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :goto_1
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1482
    const-string v0, "HomeKeyDoubleClick"

    const-string v0, "  in launchHomeFromHotKey(), now call startDockOrHome(), #2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0

    .line 1478
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 12
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    const/16 v11, 0x7db

    const/16 v4, 0x10

    const/4 v5, 0x0

    .line 1624
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_1

    .line 1774
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1636
    .local v2, fl:I
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1638
    .local v3, sim:I
    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 1639
    .local v6, pf:Landroid/graphics/Rect;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 1640
    .local v7, df:Landroid/graphics/Rect;
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 1641
    .local v8, cf:Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 1643
    .local v9, vf:Landroid/graphics/Rect;
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v11, :cond_6

    .line 1644
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1645
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1646
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1647
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1649
    const/16 v0, 0x50

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1650
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 1735
    :cond_2
    :goto_1
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_3

    .line 1736
    const/16 v0, -0x2710

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1737
    const/16 v0, 0x2710

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1755
    :cond_3
    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1759
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v11, :cond_4

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0xbb6

    if-ne v0, v1, :cond_0

    :cond_4
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1760
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1761
    .local v10, top:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    .line 1762
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v10, :cond_5

    .line 1763
    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 1765
    :cond_5
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1766
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    .line 1767
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v0, v10, :cond_0

    .line 1768
    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    goto/16 :goto_0

    .line 1652
    .end local v10           #top:I
    :cond_6
    const v0, 0x10500

    and-int/2addr v0, v2

    const v1, 0x10100

    if-ne v0, v1, :cond_9

    .line 1659
    if-eqz p3, :cond_7

    .line 1662
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1664
    :cond_7
    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 1665
    iput v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1666
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1667
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1668
    and-int/lit16 v0, v3, 0xf0

    if-eq v0, v4, :cond_8

    .line 1669
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1670
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1671
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1672
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 1679
    :goto_2
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1680
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1681
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1682
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 1674
    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1675
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1676
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1677
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 1684
    :cond_9
    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_a

    .line 1687
    iput v5, v8, Landroid/graphics/Rect;->left:I

    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 1688
    iput v5, v8, Landroid/graphics/Rect;->top:I

    iput v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1689
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mW:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1690
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mH:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1691
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1692
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1693
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1694
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 1697
    and-int/lit16 v0, v3, 0xf0

    if-ne v0, v4, :cond_2

    .line 1700
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1701
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1702
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1703
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 1706
    :cond_a
    if-eqz p3, :cond_b

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 1709
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1713
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1714
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1715
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1716
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1717
    and-int/lit16 v0, v3, 0xf0

    if-eq v0, v4, :cond_c

    .line 1718
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1719
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1720
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1721
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1728
    :goto_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1729
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1730
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1731
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 1723
    :cond_c
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1724
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1725
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1726
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method needSensorRunningLp()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "OrientationDebug"

    .line 449
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 455
    :cond_0
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return true #1"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 479
    :goto_0
    return v0

    .line 458
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v0, v2, :cond_4

    .line 462
    :cond_3
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return true #2"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 463
    goto :goto_0

    .line 465
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-nez v0, :cond_5

    .line 474
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return false #3"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x0

    goto :goto_0

    .line 478
    :cond_5
    const-string v0, "OrientationDebug"

    const-string v0, "[pwm] needSensorRunningLp(), return true #4"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 479
    goto :goto_0
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 6
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v5, 0x0

    .line 1946
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    .line 1947
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doLidChangeTq(Z)Z

    move-result v0

    .line 1948
    .local v0, awakeNow:Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 1949
    if-eqz v0, :cond_1

    .line 1953
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1972
    :cond_0
    :goto_0
    return-void

    .line 1954
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1955
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_0

    .line 1959
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)Z

    goto :goto_0

    .line 1964
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_3

    .line 1965
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-interface {v1, v2, v3, v5, v4}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_0

    .line 1968
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v5, v5}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_0
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 6
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2787
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    move v0, v4

    .line 2789
    .local v0, hapticsDisabled:Z
    :goto_0
    if-nez p3, :cond_2

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    .line 2813
    :goto_1
    return v1

    .end local v0           #hapticsDisabled:Z
    :cond_1
    move v0, v3

    .line 2787
    goto :goto_0

    .line 2797
    .restart local v0       #hapticsDisabled:Z
    :cond_2
    sparse-switch p2, :sswitch_data_0

    .line 2806
    if-lt p2, v5, :cond_3

    const/16 v1, 0x14

    if-gt p2, v1, :cond_3

    .line 2808
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, p2}, Landroid/os/Vibrator;->vibrateImmVibe(I)V

    move v1, v4

    .line 2809
    goto :goto_1

    .line 2802
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, v5}, Landroid/os/Vibrator;->vibrateImmVibe(I)V

    move v1, v4

    .line 2803
    goto :goto_1

    :cond_3
    move v1, v3

    .line 2813
    goto :goto_1

    .line 2797
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2710 -> :sswitch_0
        0x2711 -> :sswitch_0
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x7

    const-string v4, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    .line 1142
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 1167
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1144
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "PhoneWindowManager"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    move v0, v2

    .line 1150
    goto :goto_1

    .line 1152
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 1155
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "PhoneWindowManager"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1161
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    move v0, v2

    .line 1162
    goto :goto_1

    .line 1164
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 1142
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_2
        0x7de -> :sswitch_1
    .end sparse-switch
.end method

.method public prepareLayoutLw(Ljava/util/ArrayList;)V
    .locals 8
    .parameter "mWindows"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1501
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideStatusBar:Z

    .line 1502
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenFounded:Z

    .line 1503
    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1505
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1506
    .local v0, N:I
    sub-int v1, v0, v5

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1507
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1508
    .local v3, win:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isKeyguardWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1509
    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1522
    .end local v3           #win:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    return-void

    .line 1513
    .restart local v3       #win:Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isApplicationWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->fillsScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1516
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenFounded:Z

    .line 1517
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1518
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1519
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideStatusBar:Z

    .line 1506
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    move v4, v6

    .line 1519
    goto :goto_1
.end method

.method readLidState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 896
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getSwitchState(I)I

    move-result v0

    .line 897
    .local v0, sw:I
    if-ltz v0, :cond_0

    .line 898
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    .end local v0           #sw:I
    :cond_0
    :goto_1
    return-void

    .restart local v0       #sw:I
    :cond_1
    move v1, v3

    .line 898
    goto :goto_0

    .line 900
    .end local v0           #sw:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 1121
    if-eqz p2, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 1123
    .local v0, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v0, p2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1125
    .end local v0           #wm:Landroid/view/WindowManagerImpl;
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 1172
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 1173
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1180
    :goto_0
    return-void

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 1176
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 1178
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 1
    .parameter "keyCode"
    .parameter "componentName"
    .parameter "request"

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public rotationForOrientationLw(IIZ)I
    .locals 7
    .parameter "orientation"
    .parameter "lastRotation"
    .parameter "displayEnabled"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2464
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-gez v1, :cond_0

    .line 2466
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2468
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 2469
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2470
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2471
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2472
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 2481
    .end local v0           #d:Landroid/view/Display;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2482
    packed-switch p1, :pswitch_data_0

    .line 2506
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_3

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2512
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v2, :cond_4

    .line 2513
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 2522
    :goto_2
    return v1

    .line 2474
    .restart local v0       #d:Landroid/view/Display;
    :cond_1
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2475
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2476
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2477
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto :goto_0

    .line 2485
    .end local v0           #d:Landroid/view/Display;
    :pswitch_1
    :try_start_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2488
    :pswitch_2
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2491
    :pswitch_3
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2494
    :pswitch_4
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2497
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2499
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentLandscapeRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2501
    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setAllow180Rotation(Z)V

    .line 2503
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentPortraitRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 2501
    goto :goto_3

    :cond_3
    move v3, v4

    .line 2506
    goto :goto_1

    .line 2514
    :cond_4
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v6, :cond_5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v2, :cond_5

    .line 2515
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2516
    :cond_5
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v5, :cond_6

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v2, :cond_6

    .line 2517
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2519
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->useSensorForOrientationLp(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2520
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getCurrentRotation(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_2

    .line 2522
    :cond_7
    monitor-exit v1

    move v1, v4

    goto :goto_2

    .line 2524
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public screenOnStoppedLw()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2872
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2873
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2874
    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2, v0, v1, v3, v3}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    .line 2876
    .end local v0           #curTime:J
    :cond_0
    return-void
.end method

.method public screenTurnedOff(I)V
    .locals 2
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 2386
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2387
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 2388
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2389
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2390
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2391
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2392
    monitor-exit v0

    .line 2393
    return-void

    .line 2392
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2397
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2398
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn()V

    .line 2399
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2400
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    .line 2401
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2402
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 2403
    monitor-exit v0

    .line 2404
    return-void

    .line 2403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 1
    .parameter "win"
    .parameter "transit"

    .prologue
    .line 1188
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 1189
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    const v0, 0x10a0011

    .line 1195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2446
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 2450
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "win"
    .parameter "fl"
    .parameter "sim"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 1574
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_0

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_0

    .line 1582
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 1583
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 1584
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 1585
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 1616
    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_7

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1618
    return-void

    .line 1593
    :cond_0
    and-int/lit16 v0, p3, 0xf0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    .line 1594
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1610
    :cond_1
    :goto_2
    if-eqz p5, :cond_6

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_3
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1611
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1602
    :cond_2
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1603
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    .line 1604
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 1605
    :cond_3
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 1606
    :cond_4
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 1607
    :cond_5
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_6
    move-object v0, p8

    .line 1610
    goto :goto_3

    :cond_7
    move-object v0, p7

    .line 1616
    goto :goto_1
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .parameter "newOrientation"

    .prologue
    .line 2778
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2779
    :try_start_0
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v1, :cond_0

    .line 2780
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 2781
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2783
    :cond_0
    monitor-exit v0

    .line 2784
    return-void

    .line 2783
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method showGlobalActionsDialog()V
    .locals 3

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_0

    .line 577
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    .line 580
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 581
    if-eqz v0, :cond_1

    .line 584
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 586
    :cond_1
    return-void
.end method

.method showRecentAppsDialog()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    if-nez v0, :cond_0

    .line 644
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->show()V

    .line 647
    return-void
.end method

.method startDockOrHome()V
    .locals 3

    .prologue
    .line 2718
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2719
    .local v0, dock:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2721
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2727
    :goto_0
    return-void

    .line 2723
    :catch_0
    move-exception v1

    .line 2726
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startVoiceCommandActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 3413
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->startVoiceCommandActivity(Landroid/content/Intent;)V

    .line 3414
    return-void
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 978
    packed-switch p1, :pswitch_data_0

    .line 989
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 981
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 983
    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 985
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    .line 987
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 978
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onSystemReady()V

    .line 2608
    const-string v0, "dev.bootcomplete"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2610
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2611
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 2612
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2617
    monitor-exit v0

    .line 2618
    return-void

    .line 2617
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateOrientationListenerLp()V
    .locals 4

    .prologue
    const-string v3, "OrientationDebug"

    .line 493
    const-string v1, "OrientationDebug"

    const-string v1, "[pwm] in updateOrientationListenerLp()"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    const-string v1, "OrientationDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in updateOrientationListenerLp(), Screen status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SensorEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x1

    .line 504
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOn:Z

    if-eqz v1, :cond_2

    .line 505
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 506
    const/4 v0, 0x0

    .line 508
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_2

    .line 509
    const-string v1, "OrientationDebug"

    const-string v1, "[pwm] in updateOrientationListenerLp(), now call mOrientationListener.enable(), and mOrientationSensorEnabled = true #1"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 512
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 517
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 518
    const-string v1, "OrientationDebug"

    const-string v1, "[pwm] in updateOrientationListenerLp(), now call mOrientationListener.disable(), and mOrientationSensorEnabled = false #2"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 521
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_0
.end method

.method updateRotation(I)V
    .locals 4
    .parameter "animFlags"

    .prologue
    const/4 v3, 0x1

    .line 2664
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    invoke-interface {v1, v2}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 2665
    const/4 v0, 0x0

    .line 2666
    .local v0, rotation:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpen:Z

    if-eqz v1, :cond_1

    .line 2667
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 2676
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    or-int/2addr v3, p1

    invoke-interface {v1, v0, v2, v3}, Landroid/view/IWindowManager;->setRotation(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2681
    :goto_1
    return-void

    .line 2668
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v1, :cond_2

    .line 2669
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_0

    .line 2670
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v1, :cond_0

    .line 2671
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_0

    .line 2678
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public updateSettings()V
    .locals 15

    .prologue
    .line 728
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 729
    .local v8, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 730
    .local v9, updateRotation:Z
    const/4 v1, 0x0

    .line 731
    .local v1, addView:Landroid/view/View;
    const/4 v7, 0x0

    .line 732
    .local v7, removeView:Landroid/view/View;
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 733
    :try_start_0
    const-string v12, "end_button_behavior"

    const/4 v13, 0x2

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 736
    const-string v12, "incall_power_button_behavior"

    const/4 v13, 0x1

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 739
    const-string v12, "fancy_rotation_anim"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x80

    :goto_0
    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFancyRotationAnimation:I

    .line 741
    const-string v12, "accelerometer_rotation"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 743
    .local v0, accelerometerDefault:I
    const-string v12, "OrientationDebug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[pwm] in updateSettings(), mAccelerometerDefault="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  accelerometerDefault="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eq v12, v0, :cond_0

    .line 745
    const-string v12, "OrientationDebug"

    const-string v13, "[pwm] in updateSettings(), mAccelerometerDefault != accelerometerDefault, now call updateOrientationListenerLp()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    .line 747
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 749
    :cond_0
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v12, :cond_1

    .line 750
    const-string v12, "pointer_location"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 752
    .local v6, pointerLocation:I
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v12, v6, :cond_1

    .line 753
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 754
    if-eqz v6, :cond_8

    .line 755
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v12, :cond_1

    .line 756
    new-instance v12, Lcom/android/internal/widget/PointerLocationView;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 757
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 758
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 767
    .end local v6           #pointerLocation:I
    :cond_1
    :goto_1
    const-string v12, "screen_off_timeout"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 769
    const-string v12, "default_input_method"

    invoke-static {v8, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 771
    .local v4, imId:Ljava/lang/String;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_9

    const/4 v12, 0x1

    move v3, v12

    .line 772
    .local v3, hasSoftInput:Z
    :goto_2
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v12, v3, :cond_2

    .line 773
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 774
    const/4 v9, 0x1

    .line 776
    :cond_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    if-eqz v9, :cond_3

    .line 778
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 780
    :cond_3
    if-eqz v1, :cond_4

    .line 781
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v5, v11, v12}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 784
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v11, 0x7df

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 785
    const/16 v11, 0x118

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 789
    const/4 v11, -0x3

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 790
    const-string v11, "PointerLocation"

    invoke-virtual {v5, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 793
    .local v10, wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v10, v1, v5}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-nez v11, :cond_4

    .line 797
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const-string v12, "PointerLocationView"

    invoke-interface {v11, v12}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 799
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputHandler:Landroid/view/InputHandler;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 807
    .end local v5           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :cond_4
    :goto_3
    if-eqz v7, :cond_6

    .line 808
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v11, :cond_5

    .line 809
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {v11}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 810
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v11}, Landroid/view/InputChannel;->dispose()V

    .line 811
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 814
    :cond_5
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManagerImpl;

    .line 816
    .restart local v10       #wm:Landroid/view/WindowManagerImpl;
    invoke-virtual {v10, v7}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 818
    .end local v10           #wm:Landroid/view/WindowManagerImpl;
    :cond_6
    return-void

    .line 739
    .end local v0           #accelerometerDefault:I
    .end local v3           #hasSoftInput:Z
    .end local v4           #imId:Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 761
    .restart local v0       #accelerometerDefault:I
    .restart local v6       #pointerLocation:I
    :cond_8
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 762
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    goto/16 :goto_1

    .line 776
    .end local v0           #accelerometerDefault:I
    .end local v6           #pointerLocation:I
    :catchall_0
    move-exception v12

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 771
    .restart local v0       #accelerometerDefault:I
    .restart local v4       #imId:Ljava/lang/String;
    :cond_9
    const/4 v12, 0x0

    move v3, v12

    goto/16 :goto_2

    .line 801
    .restart local v3       #hasSoftInput:Z
    .restart local v5       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v10       #wm:Landroid/view/WindowManagerImpl;
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 802
    .local v2, ex:Landroid/os/RemoteException;
    const-string v11, "WindowManager"

    const-string v12, "Could not set up input monitoring channel for PointerLocation."

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "componentName"

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->updateTopActivity(Landroid/content/ComponentName;)V

    .line 2976
    return-void
.end method

.method useSensorForOrientationLp(I)Z
    .locals 4
    .parameter "appOrientation"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 417
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 440
    :goto_0
    return v0

    .line 424
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:I

    if-eqz v0, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    move v0, v1

    .line 427
    goto :goto_0

    .line 430
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v0, v2, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v0, v1, :cond_7

    .line 433
    :cond_5
    if-eq p1, v2, :cond_6

    if-eq p1, v3, :cond_6

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    :cond_6
    move v0, v1

    .line 436
    goto :goto_0

    .line 440
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userActivity()V
    .locals 5

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v0

    .line 2623
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_0

    .line 2625
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2626
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2628
    :cond_0
    monitor-exit v0

    .line 2629
    return-void

    .line 2628
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public windowTypeToLayerLw(I)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x2

    .line 935
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    move v0, v3

    .line 973
    :goto_0
    return v0

    .line 938
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 972
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 973
    goto :goto_0

    .line 940
    :pswitch_0
    const/16 v0, 0x10

    goto :goto_0

    .line 942
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 944
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 946
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 948
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 950
    :pswitch_5
    const/16 v0, 0xe

    goto :goto_0

    .line 952
    :pswitch_6
    const/16 v0, 0xf

    goto :goto_0

    .line 954
    :pswitch_7
    const/16 v0, 0xa

    goto :goto_0

    .line 956
    :pswitch_8
    const/16 v0, 0xb

    goto :goto_0

    .line 958
    :pswitch_9
    const/16 v0, 0xc

    goto :goto_0

    .line 960
    :pswitch_a
    const/16 v0, 0xd

    goto :goto_0

    .line 962
    :pswitch_b
    const/16 v0, 0x12

    goto :goto_0

    .line 964
    :pswitch_c
    const/16 v0, 0x13

    goto :goto_0

    .line 966
    :pswitch_d
    const/16 v0, 0x9

    goto :goto_0

    .line 968
    :pswitch_e
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_f
    move v0, v3

    .line 970
    goto :goto_0

    .line 938
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_e
        :pswitch_b
        :pswitch_d
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_f
        :pswitch_1
        :pswitch_c
    .end packed-switch
.end method
